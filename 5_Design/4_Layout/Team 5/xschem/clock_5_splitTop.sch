v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -970 -100 -850 -100 {
lab=clkin}
N -550 -100 -360 -100 {
lab=p1e}
N -550 -80 -360 -80 {
lab=p1}
N -550 -60 -540 -60 {
lab=#net1}
N -540 -60 -540 100 {
lab=#net1}
N -550 100 -540 100 {
lab=#net1}
N -550 -40 -530 -40 {
lab=#net2}
N -530 -40 -530 140 {
lab=#net2}
N -550 140 -530 140 {
lab=#net2}
N -550 -20 -520 -20 {
lab=xxx}
N -520 -20 -520 120 {
lab=xxx}
N -550 120 -520 120 {
lab=xxx}
N -550 160 -360 160 {
lab=p2}
N -550 180 -360 180 {
lab=p2e}
C {devices/ipin.sym} -970 -100 0 0 {name=p1 lab=clkin
}
C {devices/opin.sym} -360 -100 0 0 {name=p4 lab=p1e}
C {devices/opin.sym} -360 -80 0 0 {name=p5 lab=p1}
C {devices/opin.sym} -360 160 0 0 {name=p6 lab=p2}
C {devices/opin.sym} -360 180 0 0 {name=p7 lab=p2e}
C {/foss/designs/clock_5_splitTop1.sym} -700 -60 0 0 {name=x1}
C {/foss/designs/clock_5_splitTop2.sym} -700 140 0 0 {name=x2}
C {devices/lab_pin.sym} -520 90 0 1 {name=p2 sig_type=std_logic lab=clkinb}
