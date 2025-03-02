v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 950 -330 1090 -330 {
lab=cap}
N 110 -300 130 -300 {
lab=VSS}
N 290 -650 340 -650 {
lab=VDD}
N 290 -590 340 -590 {
lab=VDD}
N 340 -300 380 -300 {
lab=VSS}
N 110 -390 130 -390 {
lab=VSS}
N 150 -360 150 -330 {
lab=#net1}
N 530 -650 580 -650 {
lab=VDD}
N 530 -590 580 -590 {
lab=VDD}
N 380 -650 490 -650 {
lab=#net2}
N 380 -590 490 -590 {
lab=#net3}
N 340 -620 420 -620 {
lab=#net2}
N 420 -650 420 -620 {
lab=#net2}
N 340 -560 420 -560 {
lab=#net3}
N 420 -590 420 -560 {
lab=#net3}
N 490 -300 530 -300 {
lab=VSS}
N 710 -650 760 -650 {
lab=VDD}
N 710 -590 760 -590 {
lab=VDD}
N 760 -300 800 -300 {
lab=VSS}
N 570 -300 720 -300 {
lab=#net4}
N 950 -650 1000 -650 {
lab=VDD}
N 950 -590 1000 -590 {
lab=VDD}
N 800 -650 910 -650 {
lab=#net5}
N 800 -590 910 -590 {
lab=#net6}
N 760 -620 840 -620 {
lab=#net5}
N 840 -650 840 -620 {
lab=#net5}
N 760 -560 840 -560 {
lab=#net6}
N 840 -590 840 -560 {
lab=#net6}
N 530 -350 600 -350 {
lab=#net4}
N 600 -350 600 -300 {
lab=#net4}
N 530 -350 530 -330 {
lab=#net4}
N 340 -560 340 -330 {
lab=#net3}
N 530 -560 530 -350 {
lab=#net4}
N 760 -560 760 -330 {
lab=#net6}
N 950 -560 950 -330 {
lab=cap}
N 80 -710 1030 -710 {
lab=VDD}
N 80 -160 950 -160 {
lab=VSS}
N 340 -710 340 -680 {
lab=VDD}
N 530 -710 530 -680 {
lab=VDD}
N 760 -710 760 -680 {
lab=VDD}
N 950 -710 950 -680 {
lab=VDD}
N 260 -650 290 -650 {
lab=VDD}
N 260 -710 260 -650 {
lab=VDD}
N 260 -590 290 -590 {
lab=VDD}
N 260 -650 260 -590 {
lab=VDD}
N 580 -650 610 -650 {
lab=VDD}
N 610 -710 610 -650 {
lab=VDD}
N 580 -590 610 -590 {
lab=VDD}
N 610 -650 610 -590 {
lab=VDD}
N 690 -650 710 -650 {
lab=VDD}
N 680 -650 690 -650 {
lab=VDD}
N 680 -710 680 -650 {
lab=VDD}
N 680 -590 710 -590 {
lab=VDD}
N 680 -650 680 -590 {
lab=VDD}
N 1000 -650 1030 -650 {
lab=VDD}
N 1030 -710 1030 -650 {
lab=VDD}
N 1000 -590 1030 -590 {
lab=VDD}
N 1030 -650 1030 -590 {
lab=VDD}
N 150 -270 150 -160 {
lab=VSS}
N 110 -300 110 -160 {
lab=VSS}
N 110 -390 110 -300 {
lab=VSS}
N 150 -710 150 -420 {
lab=VDD}
N 340 -270 340 -160 {
lab=VSS}
N 380 -300 420 -300 {
lab=VSS}
N 420 -300 420 -160 {
lab=VSS}
N 460 -300 490 -300 {
lab=VSS}
N 460 -300 460 -160 {
lab=VSS}
N 530 -270 530 -160 {
lab=VSS}
N 760 -270 760 -160 {
lab=VSS}
N 800 -300 840 -300 {
lab=VSS}
N 840 -300 840 -160 {
lab=VSS}
N 950 -270 950 -160 {
lab=VSS}
N 1170 -330 1170 -260 {
lab=#net7}
N 1250 -330 1250 -260 {
lab=#net8}
N 150 -340 280 -340 {
lab=#net1}
N 280 -340 280 -300 {
lab=#net1}
N 280 -300 300 -300 {
lab=#net1}
C {devices/ipin.sym} 80 -710 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 80 -160 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 950 -300 0 0 {name=C1 model=cap_mim_m3_1 W=18 L=42 MF=1 spiceprefix=X}
C {sky130_stdcells/inv_4.sym} 1130 -330 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 150 -300 0 0 {name=R1
L=108
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 360 -650 0 1 {name=M5
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 360 -590 0 1 {name=M6
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 320 -300 0 0 {name=M7
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
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 150 -390 0 0 {name=R2
L=288
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 510 -650 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 510 -590 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 550 -300 0 1 {name=M3
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 780 -650 0 1 {name=M4
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 780 -590 0 1 {name=M8
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 740 -300 0 0 {name=M9
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 930 -650 0 0 {name=M10
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 930 -590 0 0 {name=M11
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
C {sky130_stdcells/inv_1.sym} 1210 -330 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1210 -260 0 1 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_2.sym} 1290 -330 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 1330 -330 0 0 {name=p5 lab=reset_b}
C {devices/lab_wire.sym} 950 -380 0 1 {name=p3 sig_type=std_logic lab=cap}
