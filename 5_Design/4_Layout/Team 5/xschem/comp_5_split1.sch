v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1630 -710 -1500 -710 {
lab=vdda}
N -1500 -710 -1500 -590 {
lab=vdda}
N -1560 -690 -1560 -590 {
lab=pc}
N -1630 -690 -1560 -690 {
lab=pc}
N -1500 -710 -1300 -710 {
lab=vdda}
N -1300 -710 -1300 -590 {
lab=vdda}
N -1560 -590 -1540 -590 {
lab=pc}
N -1500 -560 -1500 -470 {
lab=out1m}
N -1300 -560 -1300 -470 {
lab=out1m}
N -1300 -310 -1210 -310 {
lab=vssa}
N -1390 -410 -1300 -410 {
lab=vssa}
N -1500 -200 -1340 -200 {
lab=vinp}
N -1300 -280 -1300 -230 {
lab=#net1}
N -1300 -380 -1300 -340 {
lab=#net2}
N -1560 -590 -1560 -310 {
lab=pc}
N -1560 -310 -1340 -310 {
lab=pc}
N -1260 -590 -1190 -590 {
lab=#net3}
N -1190 -520 -1190 -410 {
lab=#net3}
N -1260 -410 -1190 -410 {
lab=#net3}
N -1190 -520 -1140 -520 {
lab=#net3}
N -1300 -200 -1300 -110 {
lab=vssa}
N -1190 -590 -1190 -520 {
lab=#net3}
N -1300 -470 -1300 -440 {
lab=out1m}
N -1410 -470 -1300 -470 {
lab=out1m}
N -1410 -550 -1410 -470 {
lab=out1m}
N -1500 -470 -1410 -470 {
lab=out1m}
C {devices/ipin.sym} -1630 -690 0 0 {name=p2 lab=pc}
C {devices/iopin.sym} -1630 -710 2 0 {name=p1 lab=vdda}
C {devices/iopin.sym} -1300 -110 2 0 {name=p3 lab=vssa}
C {sg13g2_pr/sg13_lv_pmos.sym} -1520 -590 0 0 {name=M2
L=0.13u
W=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -1280 -590 0 1 {name=M1
L=0.13u
W=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1280 -410 2 0 {name=M4
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1320 -310 2 1 {name=M7
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1320 -200 2 1 {name=M8
L=1u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} -1210 -310 2 0 {name=p7 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -1390 -410 2 1 {name=p11 sig_type=std_logic lab=vssa}
C {devices/ipin.sym} -1500 -200 0 0 {name=p13 lab=vinp}
C {devices/iopin.sym} -1410 -550 3 0 {name=p5 lab=out1m}
C {devices/iopin.sym} -1140 -520 0 0 {name=p6 lab=out1p}
