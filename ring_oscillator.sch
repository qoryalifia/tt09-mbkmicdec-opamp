v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -210 150 -200 150 {lab=#net1}
N -200 150 -200 170 {lab=#net1}
N -200 170 -130 170 {lab=#net1}
N 540 150 650 150 {lab=out}
N 170 150 190 150 {lab=#net2}
N 190 150 190 170 {lab=#net2}
N 190 170 240 170 {lab=#net2}
N -620 280 -510 280 {lab=gnd}
N -510 280 240 280 {lab=gnd}
N 240 190 240 280 {lab=gnd}
N -620 120 240 120 {lab=vdd}
N 240 120 240 150 {lab=vdd}
N -150 150 -130 150 {lab=vdd}
N -150 120 -150 150 {lab=vdd}
N -150 190 -130 190 {lab=gnd}
N -150 190 -150 280 {lab=gnd}
N -560 150 -510 150 {lab=vdd}
N -560 120 -560 150 {lab=vdd}
N -560 190 -510 190 {lab=gnd}
N -560 190 -560 280 {lab=gnd}
N -540 170 -510 170 {lab=out}
N -540 80 -540 170 {lab=out}
N -540 80 580 80 {lab=out}
N 580 80 580 150 {lab=out}
C {devices/iopin.sym} -620 120 2 0 {name=p1 lab=vdd
}
C {devices/iopin.sym} -620 280 2 0 {name=p2 lab=gnd}
C {devices/opin.sym} 650 150 0 0 {name=p3 lab=out}
C {inverter.sym} -360 170 0 0 {name=x1}
C {inverter.sym} 20 170 0 0 {name=x2}
C {inverter.sym} 390 170 0 0 {name=x3}
