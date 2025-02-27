v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 410 20 1210 420 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0025
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vdd
cap
reset
reset_b"
color="4 8 21 20"
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
B 2 1230 20 2030 420 {flags=graph
y1=-3.3e-09
y2=5.1e-08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0025
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(vmeas)
i(vmeas1)
i(vmeas2)
i(vmeas3)"
color="4 8 21 20"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1230 440 2030 840 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0025
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="va
vb
vc
vd"
color="4 8 21 20"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2050 20 2850 420 {flags=graph
y1=0
y2=1.1e-08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0025
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"va i(vmeas) 5u ravg() *\\"
\\"vb i(vmeas1) 5u ravg() *\\"
\\"vc i(vmeas2) abs() 5u ravg() *\\"
\\"vd i(vmeas3) abs() 5u ravg() *\\""
color="4 8 21 20"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2050 440 2850 840 {flags=graph
y1=-3.6e-15
y2=5.1e-08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0025
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"i(vmeas) 5u ravg()\\"
\\"i(vmeas1) 5u ravg()\\"
\\"i(vmeas2) 5u ravg()\\"
\\"i(vmeas3) abs() 5u ravg() \\""
color="4 8 21 20"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2880 20 3680 420 {flags=graph
y1=0
y2=2.5e-08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0025
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"total power;va i(vmeas) 5u ravg() * vb i(vmeas1) 5u ravg() * + vc i(vmeas2) abs() 5u ravg() * + vd i(vmeas3) abs() 5u ravg() * +\\""
color=14
dataset=-1
unitx=1
logx=0
logy=0
}
N 1290 -260 1430 -260 {
lab=cap}
N 1380 -350 1380 -260 {
lab=cap}
N 1510 -260 1560 -260 {
lab=reset}
N 450 -180 470 -180 {
lab=vss}
N 630 -580 680 -580 {
lab=vdd}
N 630 -520 680 -520 {
lab=vdd}
N 680 -230 720 -230 {
lab=vss}
N 450 -270 470 -270 {
lab=vss}
N 490 -230 640 -230 {
lab=#net1}
N 490 -240 490 -210 {
lab=#net1}
N 870 -580 920 -580 {
lab=vdd}
N 870 -520 920 -520 {
lab=vdd}
N 720 -580 830 -580 {
lab=#net2}
N 720 -520 830 -520 {
lab=Va}
N 680 -550 760 -550 {
lab=#net2}
N 760 -580 760 -550 {
lab=#net2}
N 680 -490 760 -490 {
lab=Va}
N 760 -520 760 -490 {
lab=Va}
N 830 -230 870 -230 {
lab=vss}
N 1050 -580 1100 -580 {
lab=vdd}
N 1050 -520 1100 -520 {
lab=vdd}
N 1100 -230 1140 -230 {
lab=vss}
N 910 -230 1060 -230 {
lab=#net3}
N 1290 -580 1340 -580 {
lab=vdd}
N 1290 -520 1340 -520 {
lab=vdd}
N 1140 -580 1250 -580 {
lab=#net4}
N 1140 -520 1250 -520 {
lab=Vc}
N 1100 -550 1180 -550 {
lab=#net4}
N 1180 -580 1180 -550 {
lab=#net4}
N 1100 -490 1180 -490 {
lab=Vc}
N 1180 -520 1180 -490 {
lab=Vc}
N 870 -280 940 -280 {
lab=#net3}
N 940 -280 940 -230 {
lab=#net3}
N 1510 -260 1510 -180 {
lab=reset}
N 1510 -180 1520 -180 {
lab=reset}
N 1510 -110 1520 -110 {
lab=reset}
N 1510 -180 1510 -110 {
lab=reset}
N 1600 -180 1620 -180 {
lab=#net5}
N 1620 -180 1620 -110 {
lab=#net5}
N 1600 -110 1620 -110 {
lab=#net5}
N 1620 -180 1660 -180 {
lab=#net5}
N 1810 -160 1810 -140 {
lab=vss}
N 1740 -180 1780 -180 {
lab=#net6}
N 1840 -180 1880 -180 {
lab=reset_b}
N 680 -490 680 -420 {
lab=Va}
N 680 -360 680 -260 {
lab=#net7}
N 870 -280 870 -260 {
lab=#net3}
N 870 -360 870 -280 {
lab=#net3}
N 870 -490 870 -420 {
lab=Vb}
N 1100 -490 1100 -420 {
lab=Vc}
N 1100 -360 1100 -260 {
lab=#net8}
N 1290 -490 1290 -420 {
lab=Vd}
N 1290 -360 1290 -260 {
lab=cap}
C {devices/code.sym} -200 -440 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/launcher.sym} -190 -110 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} 120 -320 0 0 {name=V1 value="PWL(0.0 0 100u 0 0.5m 1.8 1.5m 1.8)" savecurrent=false}
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


tran 100n 2.5m
write por_tb.raw


*plot V(vdd) V(reset_b)
.endc
"}
C {devices/lab_pin.sym} 1560 -260 2 0 {name=p4 sig_type=std_logic lab=reset}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1290 -230 0 0 {name=C1 model=cap_mim_m3_1 W=18 L=42 MF=1 spiceprefix=X}
C {sky130_stdcells/inv_1.sym} 1470 -260 0 0 {name=x1 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 1290 -200 3 0 {name=p6 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 680 -610 3 1 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1380 -350 1 0 {name=p5 sig_type=std_logic lab=cap}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 490 -180 0 0 {name=R1
L=108
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 450 -180 0 0 {name=p8 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 630 -580 2 1 {name=p9 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 630 -520 2 1 {name=p10 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 700 -580 0 1 {name=M5
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 700 -520 0 1 {name=M6
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 660 -230 0 0 {name=M7
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
C {devices/lab_pin.sym} 680 -200 3 0 {name=p14 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 720 -230 2 0 {name=p18 sig_type=std_logic lab=vss}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 490 -270 0 0 {name=R2
L=288
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 450 -270 0 0 {name=p19 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 490 -150 3 0 {name=p20 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 490 -300 1 0 {name=p21 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 870 -610 1 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 920 -580 2 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 920 -520 2 0 {name=p12 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 850 -580 0 0 {name=M1
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 850 -520 0 0 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 890 -230 0 1 {name=M3
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
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 870 -200 1 1 {name=p13 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 830 -230 2 1 {name=p15 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1100 -610 3 1 {name=p16 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1050 -580 2 1 {name=p17 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1050 -520 2 1 {name=p22 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 1120 -580 0 1 {name=M4
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1120 -520 0 1 {name=M8
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1080 -230 0 0 {name=M9
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
C {devices/lab_pin.sym} 1100 -200 3 0 {name=p23 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1140 -230 2 0 {name=p24 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1290 -610 1 0 {name=p25 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1340 -580 2 0 {name=p26 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1340 -520 2 0 {name=p27 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 1270 -580 0 0 {name=M10
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1270 -520 0 0 {name=M11
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_stdcells/inv_1.sym} 1560 -180 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 1880 -180 2 0 {name=p28 sig_type=std_logic lab=reset_b}
C {sky130_stdcells/inv_1.sym} 1560 -110 0 1 {name=x3 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_8.sym} 1700 -180 0 0 {name=x4 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1810 -180 3 0 {name=R3
L=20
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1810 -140 3 0 {name=p29 sig_type=std_logic lab=vss}
C {devices/ammeter.sym} 680 -390 0 0 {name=Vmeas savecurrent=true}
C {devices/ammeter.sym} 870 -390 0 0 {name=Vmeas1 savecurrent=true}
C {devices/ammeter.sym} 1100 -390 0 0 {name=Vmeas2 savecurrent=true}
C {devices/ammeter.sym} 1290 -390 0 0 {name=Vmeas3 savecurrent=true}
C {devices/lab_pin.sym} 680 -420 0 0 {name=p30 sig_type=std_logic lab=Va}
C {devices/lab_pin.sym} 870 -420 0 0 {name=p31 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 1100 -420 0 0 {name=p32 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} 1290 -420 0 0 {name=p33 sig_type=std_logic lab=Vd}
