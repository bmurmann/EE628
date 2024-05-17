v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1470 -590 -1360 -590 {
lab=gn}
N -1320 -590 -1260 -590 {
lab=vssa}
N -1650 -610 -1590 -610 {
lab=pr}
N -1320 -560 -1320 -490 {
lab=vlo}
N -1950 -570 -1590 -570 {
lab=d}
N -1950 -490 -1320 -490 {
lab=vlo}
N -1320 -680 -1320 -620 {}
C {sg13g2_pr/sg13_lv_nmos.sym} -1340 -590 2 1 {name=M9
L=0.13u
W=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_stdcells/sg13g2_and2_1.sym} -1530 -590 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} -1390 -590 0 0 {name=p26 sig_type=std_logic lab=gn}
C {devices/ipin.sym} -1950 -570 0 0 {name=p28 lab=d}
C {devices/iopin.sym} -1950 -490 0 1 {name=p29 lab=vlo}
C {devices/iopin.sym} -1650 -610 0 1 {name=p1 lab=pr}
C {devices/iopin.sym} -1320 -680 3 0 {name=p4 lab=vx1}
C {devices/iopin.sym} -1260 -590 0 0 {name=p5 lab=vssa}
