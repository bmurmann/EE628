v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -540 -840 -460 -840 {
lab=vx3}
N -460 -890 -460 -840 {
lab=vx3}
N -460 -890 -440 -890 {
lab=vx3}
N -460 -840 -460 -790 {
lab=vx3}
N -460 -790 -440 -790 {
lab=vx3}
N -400 -960 -400 -890 {
lab=vdda}
N -400 -840 -400 -820 {
lab=vout}
N -400 -790 -400 -720 {
lab=vssa}
N -460 -620 -460 -570 {
lab=vmid}
N -460 -620 -440 -620 {
lab=vmid}
N -460 -570 -460 -520 {
lab=vmid}
N -460 -520 -440 -520 {
lab=vmid}
N -400 -690 -400 -620 {
lab=vdda}
N -400 -570 -400 -550 {
lab=vmid}
N -400 -520 -400 -450 {
lab=vssa}
N -460 -570 -400 -570 {
lab=vmid}
N -400 -860 -400 -840 {
lab=vout}
N -400 -840 -200 -840 {
lab=vout}
N -400 -590 -400 -570 {
lab=vmid}
N -400 -570 -280 -570 {
lab=vmid}
N -510 -570 -460 -570 {
lab=vmid}
C {sg13g2_pr/sg13_lv_pmos.sym} -420 -890 0 0 {name=M3
L=1.5u
W=10u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -420 -790 2 1 {name=M4
L=1.5u
W=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/iopin.sym} -400 -720 0 0 {name=p9 lab=vssa}
C {devices/iopin.sym} -400 -960 0 0 {name=p10 lab=vdda}
C {devices/lab_wire.sym} -510 -570 0 0 {name=p21 sig_type=std_logic lab=vmid}
C {sg13g2_pr/sg13_lv_pmos.sym} -420 -620 0 0 {name=M7
L=1.5u
W=10u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -420 -520 2 1 {name=M8
L=1.5u
W=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} -400 -450 0 0 {name=p22 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -400 -690 0 0 {name=p23 sig_type=std_logic lab=vdda}
C {devices/iopin.sym} -280 -570 0 0 {name=p1 lab=vmid}
C {devices/iopin.sym} -200 -840 0 0 {name=p2 lab=vout
}
C {devices/iopin.sym} -540 -840 0 1 {name=p3 lab=vx3}
