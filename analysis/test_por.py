#!/usr/bin/env python3

import argparse
import asyncio
import itertools
import os
import shutil
import sys
import tempfile
from tqdm import tqdm
from utils import avg_current, max_current, find_reset_delay


def create_spice_pdk_spec(pdk_root='', corner='tt', supply=1.8, temp=27.0):
    return (
        f'.param mc_mm_switch=1\n'
        f'.param mc_pr_switch=1\n'
        f'.include {pdk_root}/libs.tech/ngspice/corners/{corner}.spice\n'
        f'.include {pdk_root}/libs.tech/ngspice/r+c/res_typical__cap_typical.spice\n'
        f'.include {pdk_root}/libs.tech/ngspice/r+c/res_typical__cap_typical__lin.spice\n'
        f'.include {pdk_root}/libs.tech/ngspice/corners/{corner}/specialized_cells.spice\n'
        f'.include {pdk_root}/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice\n'
        f'.temp {temp}\n'
        f'.param VDD={supply}\n'
    )


async def worker(lane, jobs, queue, pdk_path, tmpdir):
    with tempfile.TemporaryDirectory(prefix='lane_', dir=tmpdir) as lanedir:
        # copy spice template
        shutil.copy('.spiceinit', lanedir)
        shutil.copy('test_por.spice', lanedir)

        prefix_path = os.path.join(lanedir, 'prefix.spice')
        out_path = os.path.join(lanedir, 'out')
        current_path = os.path.join(out_path, 'current.txt')
        reset_b_path = os.path.join(out_path, 'reset_b.txt')

        os.mkdir(out_path)

        for config in jobs:
            delay = None
            current_avg = None
            current_max = None

            try:
                corner, vdd, t = config

                # create spice prefix for config
                prefix = create_spice_pdk_spec(pdk_path, corner, vdd, t)
                with open(prefix_path, 'wt') as f:
                    f.write(prefix)

                # run spice
                proc = await asyncio.create_subprocess_shell('ngspice -b -a test_por.spice',
                    cwd=lanedir,
                    stdout=asyncio.subprocess.PIPE,
                    stderr=asyncio.subprocess.PIPE)

                stdout, stderr = await proc.communicate()

                if proc.returncode == 0:
                    # gather and report results
                    delay = find_reset_delay(reset_b_path, threshold=vdd / 2)
                    current_avg = avg_current(current_path)
                    current_max = max_current(current_path)

                    # remove results
                    os.remove(current_path)
                    os.remove(reset_b_path)
                else:
                    if stdout:
                        print(f'[stdout]\n{stdout.decode()}')
                    if stderr:
                        print(f'[stderr]\n{stderr.decode()}')
            except:
                pass

            await queue.put((config, delay, current_avg, current_max))


def batched(iterable, n):
    "Batch data into tuples of length n. The last batch may be shorter."
    # batched('ABCDEFG', 3) --> ABC DEF G
    it = iter(iterable)
    while True:
        batch = tuple(itertools.islice(it, n))
        if not batch:
            return
        yield batch


async def main():
    pdk = os.environ.get('PDK')
    pdk_root = os.environ.get('PDK_ROOT')

    if not pdk or not pdk_root:
        print("PDK and PDK_ROOT must be set")
        sys.exit(1)

    pdk_path = os.path.join(pdk_root, pdk)

    parser = argparse.ArgumentParser()
    parser.add_argument('-c', '--corner', nargs='+', help='Process corner (tt, ff, sf, fs, ss)', required=True)
    parser.add_argument('--vdd', nargs='+', help='Supply Voltage (default 1.8V)', type=float)
    parser.add_argument('-t', '--temp', nargs='+', help='Temperature (default 27C)', type=float)
    parser.add_argument('-i', '--iters', help='Iterations', type=int)
    parser.add_argument('-o', '--output', help='Output file', required=True)
    parser.add_argument('-j', '--jobs', help='Number of parallel jobs (defaults to number of cpus)', type=int)
    args = parser.parse_args()

    corners = args.corner
    supply_voltages = args.vdd or [1.8]
    temperatures = args.temp or [27.0]
    iterations = args.iters or 1

    print(f'PDK: {pdk_path}')
    print('PVT:')
    print(f'  corners: {", ".join(corners)}')
    print(f'  supply voltages: {", ".join(str(f) for f in supply_voltages)}')
    print(f'  temperatures: {", ".join(str(f) for f in temperatures)}')
    print(f'Iterations: {iterations}')
    print(f'')

    configs = list(itertools.product(corners, supply_voltages, temperatures)) * iterations

    job_count = len(configs)
    worker_count = args.jobs or os.cpu_count()
    batch_size = max(job_count // worker_count, 1)
    results_queue = asyncio.Queue()

    with tempfile.TemporaryDirectory(prefix='spicerun_', dir='.') as tmpdir:
        workers = []
        for lane, batch in enumerate(batched(configs, batch_size)):
            task = asyncio.create_task(worker(lane, batch, results_queue, pdk_path, tmpdir))
            workers.append(task)

        with open(args.output, 'wt', buffering=1) as results:
            results.write(f'corner,vdd,temp,delay,current_avg,current_max\n')

            for i in tqdm(range(job_count)):
                (config, delay, current_avg, current_max) = await results_queue.get()

                if delay and current_avg and current_max:
                    corner, vdd, t = config
                    results.write(f'{corner},{vdd},{t},{delay},{current_avg},{current_max}\n')

        await asyncio.gather(*workers, return_exceptions=True)


if __name__ == '__main__':
    asyncio.run(main())
