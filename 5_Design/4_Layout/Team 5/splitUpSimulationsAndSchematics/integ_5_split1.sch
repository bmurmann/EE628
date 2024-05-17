v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1640 -1250 -1490 -1250 {
lab=ps}
N -1410 -1250 -1350 -1250 {
lab=psb}
N -1640 -1190 -1200 -1190 {
lab=vhi}
N -1200 -1080 -1110 -1080 {
lab=vdda}
N -1200 -1190 -1200 -1110 {
lab=vhi}
N -1310 -1080 -1240 -1080 {
lab=gp}
N -1480 -1100 -1430 -1100 {
lab=d}
N -1480 -1060 -1430 -1060 {
lab=pr}
N -1200 -1050 -1200 -990 {
lab=vx1}
C {devices/ipin.sym} -1640 -1250 0 0 {name=p3 lab=ps}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -1450 -1250 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2b_1.sym} -1370 -1080 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_pr/sg13_lv_pmos.sym} -1220 -1080 0 0 {name=M12
L=0.13u
W=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/iopin.sym} -1640 -1190 0 1 {name=p7 lab=vhi}
C {devices/iopin.sym} -1350 -1250 0 0 {name=p1 lab=psb}
C {devices/iopin.sym} -1200 -990 0 0 {name=p2 lab=vx1}
C {devices/iopin.sym} -1110 -1080 0 0 {name=p4 lab=vdda}
C {devices/iopin.sym} -1480 -1060 0 1 {name=p5 lab=pr}
C {devices/iopin.sym} -1480 -1100 0 1 {name=p6 lab=d}
