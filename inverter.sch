v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -170 -180 -170 60 {lab=#net1}
N -170 -180 230 -180 {lab=#net1}
N 230 -180 230 -100 {lab=#net1}
N 190 -100 230 -100 {lab=#net1}
N 190 -180 190 -130 {lab=#net1}
N 100 -100 150 -100 {lab=in}
N 100 -100 100 60 {lab=in}
N 100 60 150 60 {lab=in}
N -30 -20 -30 60 {lab=in}
N -30 -20 100 -20 {lab=in}
N 190 -70 190 30 {lab=out}
N -170 120 220 120 {lab=GND}
N 220 60 220 120 {lab=GND}
N 190 60 220 60 {lab=GND}
N 190 90 190 120 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 170 60 0 0 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 170 -100 0 0 {name=M2
L=0.15
W=1
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
C {devices/vsource.sym} -170 90 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -30 90 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -100 120 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -30 -20 0 0 {name=p1 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 190 -20 2 0 {name=p2 sig_type=std_logic lab=out}
C {sky130_fd_pr/corner.sym} 300 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 320 30 0 0 {name=spice only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
dc v2 0 1.8 0.01
plot in out
op
.endc
"}
