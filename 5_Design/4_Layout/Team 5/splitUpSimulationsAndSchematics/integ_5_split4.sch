v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -730 -840 -660 -840 {
lab=center}
N -730 -990 -670 -990 {
lab=vssa}
N -800 -990 -770 -990 {
lab=pr}
N -730 -1060 -730 -1020 {
lab=vx4}
N -730 -960 -730 -840 {
lab=center}
N -730 -840 -730 -780 {
lab=center}
N -730 -750 -670 -750 {
lab=vssa}
N -800 -750 -770 -750 {
lab=pse}
N -820 -840 -730 -840 {
lab=center}
N -730 -720 -730 -680 {
lab=vmid}
N -920 -840 -880 -840 {
lab=vx1}
N -600 -840 -550 -840 {
lab=vx3}
C {devices/iopin.sym} -670 -750 0 0 {name=p9 lab=vssa}
C {sg13g2_pr/cap_cmim.sym} -630 -840 1 0 {name=C2 model=cap_cmim W=8.16e-6 L=8.16e-6 MF=1 spiceprefix=X}
C {sg13g2_pr/sg13_lv_nmos.sym} -750 -990 2 1 {name=M5
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} -670 -990 3 0 {name=p15 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_lv_nmos.sym} -750 -750 2 1 {name=M6
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} -850 -840 1 0 {name=C3 model=cap_cmim W=5.77e-6 L=5.77e-6 MF=1 spiceprefix=X}
C {devices/iopin.sym} -920 -840 0 1 {name=p22 lab=vx1}
C {devices/iopin.sym} -800 -750 0 1 {name=p3 lab=pse}
C {devices/iopin.sym} -730 -680 1 0 {name=p2 lab=vmid}
C {devices/iopin.sym} -550 -840 0 0 {name=p1 lab=vx3}
C {devices/iopin.sym} -800 -990 0 1 {name=p4 lab=pr}
C {devices/iopin.sym} -730 -1060 1 1 {name=p5 lab=vx4}
