v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 30 -440 830 -40 {flags=graph
y1=-0.0037
y2=2
ypos1=0.076768673
ypos2=0.754307
divy=5
subdivy=1
unity=1
x1=0
x2=0.0006
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vbuff
vfets
vschmitt"
color="4 8 21 20"
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
B 2 30 -20 830 380 {flags=graph
y1=-0.00018
y2=0.0014
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0006
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(vmeas)
i(vinv)"
color="4 8"
dataset=-1
unitx=1
logx=0
logy=0
}
N 580 -620 600 -620 {
lab=vin}
N 760 -620 810 -620 {
lab=vschmitt}
N 760 -620 760 -570 {
lab=vschmitt}
N 130 -610 130 -550 {
lab=vin}
N 120 -490 420 -490 {
lab=vss}
N 120 -670 420 -670 {
lab=#net1}
N 170 -670 170 -640 {
lab=#net1}
N 170 -520 170 -490 {
lab=vss}
N 170 -550 210 -550 {
lab=vss}
N 210 -550 210 -490 {
lab=vss}
N 170 -610 210 -610 {
lab=#net1}
N 210 -670 210 -610 {
lab=#net1}
N 340 -610 340 -550 {
lab=#net2}
N 380 -520 380 -490 {
lab=vss}
N 380 -550 420 -550 {
lab=vss}
N 420 -550 420 -490 {
lab=vss}
N 380 -610 420 -610 {
lab=#net1}
N 420 -670 420 -610 {
lab=#net1}
N 380 -670 380 -640 {
lab=#net1}
N 380 -580 470 -580 {
lab=vfets}
N 120 -580 130 -580 {
lab=vin}
N 170 -580 340 -580 {
lab=#net2}
N 270 -670 270 -640 {
lab=#net1}
N 270 -520 270 -490 {
lab=vss}
N 270 -550 310 -550 {
lab=vss}
N 310 -550 310 -490 {
lab=vss}
N 270 -610 310 -610 {
lab=#net1}
N 310 -670 310 -610 {
lab=#net1}
N 450 -650 450 -580 {
lab=vfets}
N 230 -650 450 -650 {
lab=vfets}
N 230 -650 230 -610 {
lab=vfets}
N 230 -550 230 -510 {
lab=vfets}
N 230 -510 450 -510 {
lab=vfets}
N 450 -580 450 -510 {
lab=vfets}
N 680 -620 680 -570 {
lab=#net3}
N 580 -740 600 -740 {
lab=vin}
N 760 -740 810 -740 {
lab=vbuff}
N 760 -740 760 -690 {
lab=vbuff}
C {devices/code.sym} -560 -670 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/launcher.sym} -550 -340 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} -190 -540 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -190 -510 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -190 -570 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} -270 -540 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -270 -510 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -270 -570 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/simulator_commands_shown.sym} -310 -340 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.option savecurrents
.control
save all

tran 25n 600u
remzerovec
write schmitt_tb.raw

quit
.endc
"}
C {devices/vsource.sym} -270 -640 0 0 {name=V3 value="PWL(0u 0.0 100u 0.0 250u 1.8 400u 1.8 550u 0.0)" savecurrent=false}
C {devices/gnd.sym} -270 -610 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -270 -670 0 0 {name=p3 sig_type=std_logic lab=vin}
C {sky130_stdcells/inv_4.sym} 640 -620 0 0 {name=x1 VGND=vss VNB=vss VPB=vdd2 VPWR=vdd2 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 580 -620 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 810 -620 0 1 {name=p5 sig_type=std_logic lab=vschmitt}
C {sky130_stdcells/inv_1.sym} 720 -620 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd2 VPWR=vdd2 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 720 -570 0 1 {name=x3 VGND=vss VNB=vss VPB=vdd2 VPWR=vdd2 prefix=sky130_fd_sc_hd__ }
C {sky130_fd_pr/nfet_01v8.sym} 150 -550 0 0 {name=M1
L=0.15
W=5
nf=2 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 150 -610 0 0 {name=M2
L=0.15
W=10
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 120 -490 0 0 {name=p6 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 60 -670 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 120 -580 0 0 {name=p8 sig_type=std_logic lab=vin}
C {sky130_fd_pr/nfet_01v8.sym} 360 -550 0 0 {name=M3
L=0.15
W=2.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 360 -610 0 0 {name=M4
L=0.15
W=5
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 470 -580 0 1 {name=p9 sig_type=std_logic lab=vfets}
C {sky130_fd_pr/nfet_01v8.sym} 250 -550 0 0 {name=M5
L=0.15
W=2.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 250 -610 0 0 {name=M6
L=0.15
W=5
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} 90 -670 3 0 {name=Vmeas savecurrent=true}
C {devices/ammeter.sym} 1060 -540 0 0 {name=Vinv savecurrent=true}
C {devices/lab_pin.sym} 1060 -570 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1060 -510 0 0 {name=p11 sig_type=std_logic lab=vdd2}
C {sky130_stdcells/inv_4.sym} 640 -740 0 0 {name=x4 VGND=vss VNB=vss VPB=vdd2 VPWR=vdd2 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 580 -740 0 0 {name=p12 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 810 -740 0 1 {name=p13 sig_type=std_logic lab=vbuff}
C {sky130_stdcells/inv_2.sym} 720 -740 0 0 {name=x5 VGND=vss VNB=vss VPB=vdd2 VPWR=vdd2 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 720 -690 0 1 {name=x6 VGND=vss VNB=vss VPB=vdd2 VPWR=vdd2 prefix=sky130_fd_sc_hd__ }
