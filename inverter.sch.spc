** sch_path: /home/qoryad/ring_oscillator/mag/inverter.sch
.subckt inverter

XM1 out in GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM2 out in net1 net1 sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 m=1
V1 net1 GND 1.8
V2 in GND 0
**** begin user architecture code

.param mc_mm_switch=0
.param mc_pr_switch=0
.include /home/qoryad/pdk/sky130A/libs.tech/ngspice/corners/tt.spice
.include /home/qoryad/pdk/sky130A/libs.tech/ngspice/r+c/res_typical__cap_typical.spice
.include /home/qoryad/pdk/sky130A/libs.tech/ngspice/r+c/res_typical__cap_typical__lin.spice
.include /home/qoryad/pdk/sky130A/libs.tech/ngspice/corners/tt/specialized_cells.spice



.option wnflag=0
.control
save all
dc v2 0 1.8 0.01
plot in out
op
.endc


**** end user architecture code
.ends
.GLOBAL GND
.end
