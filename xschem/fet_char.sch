v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 670 20 1470 420 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-10
x2=0.0006
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vgate
color=20
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 670 440 1470 840 {flags=graph
y1=1.4e-13
y2=4.1e-08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-10
x2=0.0006
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(@m.xm7.msky130_fd_pr__nfet_01v8_lvt[id])
i(@m.xm3.msky130_fd_pr__nfet_01v8[id])"
color="8 4"
dataset=-1
unitx=1
logx=0
logy=0
}
N 500 -370 550 -370 {
lab=vdd}
N 500 -310 550 -310 {
lab=vdd}
N 590 -310 630 -310 {
lab=#net1}
N 550 -340 630 -340 {
lab=#net2}
N 630 -370 630 -340 {
lab=#net2}
N 550 -280 630 -280 {
lab=#net1}
N 630 -310 630 -280 {
lab=#net1}
N 550 -430 550 -400 {
lab=vdd}
N 470 -370 500 -370 {
lab=vdd}
N 470 -430 470 -370 {
lab=vdd}
N 470 -310 500 -310 {
lab=vdd}
N 470 -370 470 -310 {
lab=vdd}
N 470 -430 550 -430 {
lab=vdd}
N 550 -280 550 -210 {
lab=#net1}
N 550 -150 550 -50 {
lab=vss}
N 590 -370 630 -370 {
lab=#net2}
N 550 -50 680 -50 {
lab=vss}
N 550 -180 680 -180 {
lab=vss}
N 680 -180 680 -50 {
lab=vss}
N 760 -380 810 -380 {
lab=vdd}
N 760 -320 810 -320 {
lab=vdd}
N 850 -320 890 -320 {
lab=#net3}
N 810 -350 890 -350 {
lab=#net4}
N 890 -380 890 -350 {
lab=#net4}
N 810 -290 890 -290 {
lab=#net3}
N 890 -320 890 -290 {
lab=#net3}
N 810 -440 810 -410 {
lab=vdd}
N 730 -380 760 -380 {
lab=vdd}
N 730 -440 730 -380 {
lab=vdd}
N 730 -320 760 -320 {
lab=vdd}
N 730 -380 730 -320 {
lab=vdd}
N 730 -440 810 -440 {
lab=vdd}
N 810 -290 810 -220 {
lab=#net3}
N 810 -160 810 -60 {
lab=vss}
N 850 -380 890 -380 {
lab=#net4}
N 810 -60 940 -60 {
lab=vss}
N 810 -190 940 -190 {
lab=vss}
N 940 -190 940 -60 {
lab=vss}
C {devices/code.sym} -220 -250 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt_mm
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.temp 27
"
spice_ignore=false}
C {devices/launcher.sym} -210 80 0 0 {name=h17 
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
C {devices/vsource.sym} 100 -130 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} 100 -100 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 100 -160 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 280 -130 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} 280 -100 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 280 -160 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/simulator_commands_shown.sym} 30 80 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.option savecurrents
.control
save all


repeat 5
   tran 50n 0.6m uic
   remzerovec
   write fet_char.raw
   set appendwrite
   reset
end
*plot V(vdd) V(vgate)
*quit
.endc
"}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 570 -370 0 1 {name=M5
L=0.5
W=10
nf=4
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 570 -310 0 1 {name=M6
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
C {devices/lab_pin.sym} 470 -430 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 550 -50 0 0 {name=p4 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 530 -180 0 0 {name=M7
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
C {devices/vsource.sym} 100 -260 0 0 {name=V3 value="PWL(0.0 0 100u 0 0.5m 1.8)" savecurrent=false}
C {devices/gnd.sym} 100 -230 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 100 -290 0 0 {name=p5 sig_type=std_logic lab=vgate}
C {devices/lab_pin.sym} 510 -180 0 0 {name=p6 sig_type=std_logic lab=vgate}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 830 -380 0 1 {name=M1
L=0.5
W=10
nf=4
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 830 -320 0 1 {name=M2
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
C {devices/lab_pin.sym} 730 -440 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 810 -60 0 0 {name=p8 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 790 -190 0 0 {name=M3
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
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 770 -190 0 0 {name=p9 sig_type=std_logic lab=vgate}
