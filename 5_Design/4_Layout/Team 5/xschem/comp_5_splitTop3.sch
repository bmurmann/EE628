v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1630 -710 -990 -710 {
lab=vdda}
N -1490 80 -1450 80 {
lab=vinm}
N -1310 -110 -1300 -110 {
lab=vssa}
N -1010 50 -1010 80 {
lab=vinm_samp}
N -1460 -490 -1310 -490 {
lab=vinp}
N -1010 -510 -990 -510 {
lab=vdda}
N -990 -710 -990 -510 {
lab=vdda}
N -1010 -450 -1000 -450 {
lab=vssa}
N -1000 -450 -1000 -100 {
lab=vssa}
N -1170 -100 -1000 -100 {
lab=vssa}
N -1310 -110 -1310 -100 {
lab=vssa}
N -1630 -110 -1310 -110 {
lab=vssa}
N -1010 -490 -940 -490 {
lab=out1m}
N -1490 30 -1490 80 {
lab=vinm}
N -1630 80 -1490 80 {
lab=vinm}
N -1490 -40 -1490 10 {
lab=ps}
N -1630 -40 -1490 -40 {
lab=ps}
N -1190 50 -1010 50 {
lab=vinm_samp}
N -1010 -430 -1010 50 {
lab=vinm_samp}
N -1190 30 -1170 30 {
lab=vssa}
N -1170 -100 -1170 30 {
lab=vssa}
N -1310 -100 -1170 -100 {
lab=vssa}
N -1010 -470 -940 -470 {
lab=out1p}
N -1350 -510 -1310 -510 {
lab=pc}
C {devices/ipin.sym} -1350 -510 0 0 {name=p2 lab=pc}
C {devices/iopin.sym} -1630 -710 2 0 {name=p1 lab=vdda}
C {devices/iopin.sym} -1630 -110 2 0 {name=p3 lab=vssa}
C {devices/ipin.sym} -1460 -490 0 0 {name=p13 lab=vinp}
C {devices/ipin.sym} -1630 -40 0 0 {name=p10 lab=ps}
C {devices/ipin.sym} -1630 80 0 0 {name=p22 lab=vinm}
C {devices/lab_wire.sym} -1190 10 0 1 {name=p25 sig_type=std_logic lab=vdda}
C {/foss/designs/comp_5_splitTop1.sym} -1160 -470 0 0 {name=x5}
C {/foss/designs/comp_5_split3.sym} -1340 30 0 0 {name=x7}
C {devices/lab_wire.sym} -1080 50 0 1 {name=p5 sig_type=std_logic lab=vinm_samp}
C {devices/iopin.sym} -940 -470 2 1 {name=p7 lab=out1p}
C {devices/iopin.sym} -940 -490 2 1 {name=p4 lab=out1m}
C {devices/lab_wire.sym} -970 -470 0 1 {name=p6 sig_type=std_logic lab=out1p}
