v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 410 20 1210 420 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.005
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vdd
reset_b"
color="20 8"
dataset=-1
unitx=1
logx=0
logy=0
digital=0
hilight_wave=-1}
B 2 1230 20 2030 420 {flags=graph
y1=0
y2=0.00018
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.005
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"current;i(vmeas) abs()\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1230 440 2030 840 {flags=graph
y1=0
y2=0.00024
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.005
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"power;vdd i(vmeas) 5u ravg() *\\""
color=14
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 410 440 1210 840 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.005
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="20 21"
node="vdd
x1.cap"}
B 2 2060 20 2860 420 {flags=graph
y1=0
y2=1.8e-09
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.005
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(@m.x1.xm11.msky130_fd_pr__pfet_01v8[id])
i(@m.x1.xm11.msky130_fd_pr__pfet_01v8_hvt[id])"
color="21 21"
dataset=-1
unitx=1
logx=0
logy=0
}
C {devices/code.sym} -200 -440 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.temp 27
"
spice_ignore=false}
C {devices/launcher.sym} -190 -110 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw  tran

"
}
C {devices/vsource.sym} 120 -320 0 0 {name=V1 value="PWL(0.0 0 100u 0 0.5m 1.8)" savecurrent=false}
C {devices/gnd.sym} 120 -290 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 120 -350 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 300 -320 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} 300 -290 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 300 -350 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/simulator_commands_shown.sym} 50 -110 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.option savecurrents
.control
save all
op
remzerovec
write por_tb.raw

set appendwrite

tran 50n 5m
write por_tb.raw


*plot V(vdd) V(reset_b)
quit
.endc
"}
C {devices/lab_pin.sym} 850 -370 2 0 {name=p28 sig_type=std_logic lab=reset_b}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 820 -370 3 0 {name=R3
L=20
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 820 -350 3 0 {name=p29 sig_type=std_logic lab=vss}
C {por.sym} 710 -330 0 0 {name=x1}
C {devices/lab_pin.sym} 710 -260 3 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 710 -460 1 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/ammeter.sym} 710 -430 0 0 {name=Vmeas savecurrent=true}
