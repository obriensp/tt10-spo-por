v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 300 -370 350 -370 {
lab=VDD}
N 350 -340 420 -340 {
lab=#net1}
N 420 -370 420 -340 {
lab=#net1}
N 350 -430 350 -400 {
lab=VDD}
N 270 -370 300 -370 {
lab=VDD}
N 270 -430 270 -370 {
lab=VDD}
N 350 -150 350 -50 {
lab=VSS}
N 390 -370 430 -370 {
lab=#net1}
N 350 -180 420 -180 {
lab=VSS}
N 420 -180 420 -50 {
lab=VSS}
N 110 -430 660 -430 {
lab=VDD}
N 110 -50 580 -50 {
lab=VSS}
N 160 -180 310 -180 {
lab=gate}
N 160 -430 160 -240 {
lab=VDD}
N 160 -120 160 -50 {
lab=VSS}
N 120 -150 140 -150 {
lab=VSS}
N 120 -210 140 -210 {
lab=VSS}
N 120 -210 120 -50 {
lab=VSS}
N 580 -370 630 -370 {
lab=VDD}
N 580 -430 580 -400 {
lab=VDD}
N 630 -370 660 -370 {
lab=VDD}
N 660 -430 660 -370 {
lab=VDD}
N 500 -370 540 -370 {
lab=#net1}
N 430 -370 500 -370 {
lab=#net1}
N 580 -150 580 -50 {
lab=VSS}
N 580 -210 740 -210 {
lab=cap}
N 580 -340 580 -210 {
lab=cap}
N 350 -340 350 -210 {
lab=#net1}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 370 -370 0 1 {name=M5
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 330 -180 0 0 {name=M7
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
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 160 -210 0 0 {name=R1
L=342
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 160 -150 0 0 {name=R2
L=57
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 290 -180 1 0 {name=p1 sig_type=std_logic lab=gate}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 560 -370 0 0 {name=M1
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 580 -180 0 0 {name=C1 model=cap_mim_m3_1 W=30 L=25.31 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 670 -210 1 0 {name=p6 sig_type=std_logic lab=cap}
C {sky130_stdcells/buf_2.sym} 780 -210 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 110 -430 0 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 110 -50 0 0 {name=p5 lab=VSS}
C {devices/opin.sym} 820 -210 0 0 {name=p7 lab=reset_b}
C {sky130_stdcells/tapvpwrvgnd_1.sym} 780 -130 0 0 {name=x1 VGND=vss VPWR=vdd prefix=sky130_fd_sc_hd__ }
