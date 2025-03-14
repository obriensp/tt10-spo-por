v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 470 20 1270 420 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-10
x2=0.005
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vdd
gate
cap
reset_b"
color="20 21 8 4"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 470 440 1270 840 {flags=graph
y1=0
y2=2.6e-09
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-10
x2=0.005
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(@m.xm7.msky130_fd_pr__nfet_01v8_lvt[id])
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1300 440 2100 840 {flags=graph
y1=0
y2=1.4e-09
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-10
x2=0.005
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(@m.xm1.msky130_fd_pr__pfet_01v8_hvt[id])
color=21
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1300 20 2100 420 {flags=graph
y1=-0
y2=2.5e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-10
x2=0.005
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"i(v3) -1 *\\""
color=8
dataset=-1
unitx=1
logx=0
logy=0
rainbow=0}
N 730 -390 780 -390 {
lab=vdd}
N 780 -360 860 -360 {
lab=#net1}
N 860 -390 860 -360 {
lab=#net1}
N 780 -450 780 -420 {
lab=vdd}
N 700 -390 730 -390 {
lab=vdd}
N 700 -450 700 -390 {
lab=vdd}
N 780 -170 780 -70 {
lab=vss}
N 820 -390 860 -390 {
lab=#net1}
N 780 -200 910 -200 {
lab=vss}
N 910 -200 910 -70 {
lab=vss}
N 540 -450 1120 -450 {
lab=vdd}
N 540 -70 1120 -70 {
lab=vss}
N 590 -200 740 -200 {
lab=gate}
N 590 -450 590 -260 {
lab=vdd}
N 590 -140 590 -70 {
lab=vss}
N 550 -170 570 -170 {
lab=vss}
N 550 -230 570 -230 {
lab=vss}
N 550 -230 550 -70 {
lab=vss}
N 1010 -390 1060 -390 {
lab=vdd}
N 1010 -450 1010 -420 {
lab=vdd}
N 1060 -390 1090 -390 {
lab=vdd}
N 1090 -450 1090 -390 {
lab=vdd}
N 930 -390 970 -390 {
lab=#net1}
N 860 -390 930 -390 {
lab=#net1}
N 1010 -170 1010 -70 {
lab=vss}
N 1010 -230 1170 -230 {
lab=cap}
N 1010 -360 1010 -230 {
lab=cap}
N 780 -360 780 -230 {
lab=#net1}
C {devices/code.sym} -200 -250 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.temp 27
"
spice_ignore=false}
C {devices/launcher.sym} -190 80 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw  tran

"
value="
* ngspice commands
.option savecurrents
.control
save all

op

*repeat 5
   tran 50n 0.6m uic
   remzerovec
   write fet_char.raw
   set appendwrite
   *reset
*end
*plot V(vdd) V(vgate)
*quit
.endc
"}
C {devices/vsource.sym} 300 -130 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} 300 -100 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 300 -160 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/simulator_commands_shown.sym} 50 80 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.option savecurrents
.control
save all


repeat 1
   tran 50n 5m uic
   remzerovec
   write single_stage_por_tb.raw
   set appendwrite
   reset
end
*plot V(vdd) V(vgate)
quit
.endc
"}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 800 -390 0 1 {name=M5
L=0.5
W=5
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/lab_pin.sym} 540 -450 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 540 -70 0 0 {name=p4 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 760 -200 0 0 {name=M7
L=0.5
W=2.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/vsource.sym} 110 -130 0 0 {name=V3 value="PWL(0.0 0 100u 0 0.5m 1.8)" savecurrent=false}
C {devices/gnd.sym} 110 -100 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 110 -160 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 590 -230 0 0 {name=R1
L=342
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 590 -170 0 0 {name=R2
L=57
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 720 -200 1 0 {name=p1 sig_type=std_logic lab=gate}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 990 -390 0 0 {name=M1
L=0.5
W=2.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1010 -200 0 0 {name=C1 model=cap_mim_m3_1 W=23.85 L=30 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 1100 -230 1 0 {name=p6 sig_type=std_logic lab=cap}
C {devices/opin.sym} 1250 -230 0 0 {name=p7 lab=reset_b}
C {sky130_stdcells/buf_2.sym} 1210 -230 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/tapvpwrvgnd_1.sym} 1260 -140 0 0 {name=x1 VGND=vss VPWR=vdd prefix=sky130_fd_sc_hd__ }
