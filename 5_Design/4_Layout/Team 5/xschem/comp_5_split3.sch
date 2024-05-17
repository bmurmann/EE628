v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1350 100 -1350 150 {
lab=vdda}
N -1350 -0 -1350 60 {
lab=vssa}
N -1450 0 -1380 0 {
lab=vinm}
N -1630 80 -1450 80 {
lab=vinm}
N -1450 80 -1450 150 {
lab=vinm}
N -1450 150 -1380 150 {
lab=vinm}
N -1320 -0 -1260 0 {
lab=vinm_samp}
N -1260 80 -1260 150 {
lab=vinm_samp}
N -1320 150 -1260 150 {
lab=vinm_samp}
N -1600 -40 -1350 -40 {
lab=ps}
N -1600 260 -1550 260 {
lab=ps}
N -1470 260 -1350 260 {
lab=psb}
N -1350 190 -1350 260 {
lab=psb}
N -970 140 -970 180 {
lab=vssa}
N -1450 0 -1450 80 {
lab=vinm}
N -1260 0 -1260 80 {
lab=vinm_samp}
N -1010 80 -970 80 {
lab=vinm_samp}
N -1010 -40 -1010 80 {
lab=vinm_samp}
N -1260 80 -1010 80 {
lab=vinm_samp}
N -1600 -40 -1600 260 {
lab=ps}
N -1630 -40 -1600 -40 {
lab=ps}
C {devices/iopin.sym} -1630 -150 2 0 {name=p1 lab=vdda}
C {devices/iopin.sym} -1630 -110 2 0 {name=p3 lab=vssa}
C {sg13g2_pr/sg13_lv_pmos.sym} -1350 170 3 0 {name=M19
L=0.13u
W=6u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1350 -20 3 1 {name=M20
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} -1350 60 2 1 {name=p5 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -1350 100 0 0 {name=p8 sig_type=std_logic lab=vdda}
C {devices/ipin.sym} -1630 -40 0 0 {name=p10 lab=ps}
C {devices/ipin.sym} -1630 80 0 0 {name=p22 lab=vinm}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -1510 260 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} -1380 260 0 0 {name=p24 sig_type=std_logic lab=psb}
C {sg13g2_pr/cap_cmim.sym} -970 110 0 0 {name=C1 model=cap_cmim W=5.77e-6 L=5.77e-6 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} -970 180 0 0 {name=p25 sig_type=std_logic lab=vssa}
C {devices/iopin.sym} -1010 -40 2 0 {name=p7 lab=vinm_samp}
