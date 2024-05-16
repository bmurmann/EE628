v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1530 -820 -1530 -750 {
lab=vdda}
N -1530 -920 -1530 -850 {
lab=#net1}
N -1530 -710 -1530 -680 {
lab=psb}
N -1530 -990 -1530 -960 {
lab=ps}
N -1500 -920 -1450 -920 {
lab=vx1}
N -1450 -840 -1450 -750 {
lab=vx1}
N -1500 -750 -1450 -750 {
lab=vx1}
N -1640 -840 -1600 -840 {
lab=vin}
N -1600 -920 -1600 -840 {
lab=vin}
N -1600 -920 -1560 -920 {
lab=vin}
N -1600 -840 -1600 -750 {
lab=vin}
N -1600 -750 -1560 -750 {
lab=vin}
N -1450 -920 -1450 -840 {
lab=vx1}
N -1450 -840 -1260 -840 {
lab=vx1}
C {sg13g2_pr/sg13_lv_pmos.sym} -1530 -730 3 0 {name=M10
L=0.13u
W=6u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1530 -940 3 1 {name=M11
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} -1640 -840 0 0 {name=p34 lab=vin}
C {devices/iopin.sym} -1530 -680 0 1 {name=p2 lab=psb}
C {devices/iopin.sym} -1530 -990 0 1 {name=p3 lab=ps}
C {devices/iopin.sym} -1260 -840 3 0 {name=p4 lab=vx1}
C {devices/iopin.sym} -1530 -820 0 1 {name=p6 lab=vdda}
C {devices/iopin.sym} -1530 -850 0 1 {name=p1 lab=vssa}
