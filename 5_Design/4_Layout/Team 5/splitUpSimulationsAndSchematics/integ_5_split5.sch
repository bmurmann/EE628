v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -450 -1310 -450 -1280 {
lab=res}
N -450 -1240 -450 -1160 {
lab=vssa}
N -540 -1240 -480 -1240 {
lab=vx4}
N -540 -1240 -540 -1060 {
lab=vx4}
N -420 -1240 -360 -1240 {
lab=vout}
N -360 -1240 -360 -1060 {
lab=vout}
N -540 -1060 -480 -1060 {
lab=vx4}
N -420 -1060 -360 -1060 {
lab=vout}
N -540 -1060 -540 -1020 {
lab=vx4}
N -610 -990 -580 -990 {
lab=ps}
N -540 -990 -480 -990 {
lab=vssa}
N -540 -960 -540 -920 {
lab=vx3}
N -590 -1060 -540 -1060 {
lab=vx4}
N -370 -1030 -360 -1030 {
lab=vssa}
C {devices/ipin.sym} -450 -1310 1 0 {name=p1 lab=res}
C {sg13g2_pr/sg13_lv_nmos.sym} -450 -1260 3 1 {name=M1
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} -450 -1160 2 0 {name=p8 sig_type=std_logic lab=vssa}
C {sg13g2_pr/cap_cmim.sym} -450 -1060 3 1 {name=C1 model=cap_cmim W="8.16e-6" L="8.16e-6" MF=1 spiceprefix=X}
C {sg13g2_pr/sg13_lv_nmos.sym} -560 -990 2 1 {name=M2
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/iopin.sym} -360 -1030 0 0 {name=p9 lab=vssa}
C {devices/opin.sym} -360 -1060 0 0 {name=p11 lab=vout}
C {devices/lab_wire.sym} -480 -990 3 0 {name=p13 sig_type=std_logic lab=vssa}
C {devices/iopin.sym} -540 -920 0 0 {name=p2 lab=vx3}
C {devices/iopin.sym} -610 -990 0 1 {name=p3 lab=ps}
C {devices/iopin.sym} -590 -1060 0 1 {name=p4 lab=vx4}
