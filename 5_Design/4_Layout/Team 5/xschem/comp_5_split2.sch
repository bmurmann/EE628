v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 -710 -260 -590 {
lab=VDD}
N -60 -710 -60 -590 {
lab=VDD}
N -350 -470 -350 -290 {
lab=out1m}
N -350 -590 -300 -590 {
lab=out1m}
N -150 -390 -60 -390 {
lab=VSS}
N -350 -290 -100 -290 {
lab=out1m}
N -260 -560 -260 -510 {
lab=out2m}
N -260 -510 -60 -510 {
lab=out2m}
N -60 -560 -60 -510 {
lab=out2m}
N -20 -390 30 -390 {
lab=out1p}
N 30 -520 30 -390 {
lab=out1p}
N -20 -590 30 -590 {
lab=out1p}
N 30 -520 100 -520 {
lab=out1p}
N -60 -360 -60 -320 {
lab=#net1}
N -260 -710 -60 -710 {
lab=VDD}
N -60 -510 -60 -420 {
lab=out2m}
N 30 -590 30 -520 {
lab=out1p}
N -440 -470 -350 -470 {
lab=out1m}
N -350 -590 -350 -470 {
lab=out1m}
N -60 -290 -60 -160 {
lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} -280 -590 0 0 {name=M3
L=0.13u
W=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -40 -590 0 1 {name=M12
L=0.13u
W=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -40 -390 2 0 {name=M15
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -80 -290 2 1 {name=M16
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} -150 -390 2 1 {name=p16 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -440 -470 2 0 {name=p14 lab=out1m}
C {devices/iopin.sym} -60 -510 2 1 {name=p15 lab=out2m}
C {devices/iopin.sym} 30 -560 2 1 {name=p1 lab=out1p}
C {devices/iopin.sym} -60 -160 2 1 {name=p2 lab=VSS}
C {devices/iopin.sym} -60 -710 2 1 {name=p3 lab=VDD}
