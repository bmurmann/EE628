v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1630 -710 -990 -710 {
lab=vdda}
N -1630 -200 -1460 -200 {
lab=vinp}
N 10 -750 530 -750 {
lab=out1m}
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
N -1630 -40 -1350 -40 {
lab=ps}
N -1600 260 -1550 260 {
lab=ps}
N -1470 260 -1350 260 {
lab=psb}
N -1350 190 -1350 260 {
lab=psb}
N -970 140 -970 180 {
lab=vssa}
N 460 -220 610 -220 {
lab=#net1}
N 580 -240 610 -240 {
lab=ps}
N 450 -80 490 -80 {
lab=res}
N 570 -80 610 -80 {
lab=#net2}
N 610 -200 610 -80 {
lab=#net2}
N 790 -240 890 -240 {
lab=dd}
N 800 -490 880 -490 {
lab=d}
N -1310 -110 -1300 -110 {
lab=vssa}
N -1450 0 -1450 80 {
lab=vinm}
N -1260 0 -1260 80 {
lab=vinm_samp}
N -1010 -430 -1010 80 {
lab=vinm_samp}
N -1260 80 -1010 80 {
lab=vinm_samp}
N -1010 80 -970 80 {
lab=vinm_samp}
N -1460 -490 -1310 -490 {
lab=vinp}
N -1460 -490 -1460 -200 {
lab=vinp}
N -1310 -690 -1310 -510 {
lab=pc}
N -1630 -690 -1310 -690 {
lab=pc}
N -1010 -510 -990 -510 {
lab=vdda}
N -990 -710 -990 -510 {
lab=vdda}
N -1010 -450 -1000 -450 {
lab=vssa}
N -1000 -450 -1000 -100 {
lab=vssa}
N -1310 -100 -1000 -100 {
lab=vssa}
N -1310 -110 -1310 -100 {
lab=vssa}
N -1630 -110 -1310 -110 {
lab=vssa}
N -980 -750 -980 -490 {
lab=out1m}
N -1010 -490 -980 -490 {
lab=out1m}
N -1010 -470 -350 -470 {
lab=out1p}
N -50 -580 20 -580 {
lab=VDD}
N -50 -520 20 -520 {
lab=VSS}
N 460 -490 460 -220 {
lab=#net1}
N 460 -490 720 -490 {
lab=#net1}
N 0 -560 20 -560 {
lab=#net1}
N 0 -560 -0 -490 {
lab=#net1}
N -0 -490 460 -490 {
lab=#net1}
N 10 -540 20 -540 {
lab=out1m}
N 10 -750 10 -540 {
lab=out1m}
N -980 -750 10 -750 {
lab=out1m}
N -350 -600 20 -600 {
lab=out1p}
N -350 -600 -350 -470 {
lab=out1p}
C {devices/ipin.sym} -1630 -690 0 0 {name=p2 lab=pc}
C {devices/iopin.sym} -1630 -710 2 0 {name=p1 lab=vdda}
C {devices/iopin.sym} -1630 -110 2 0 {name=p3 lab=vssa}
C {devices/ipin.sym} -1630 -200 0 0 {name=p13 lab=vinp}
C {devices/lab_wire.sym} -520 -470 0 1 {name=p4 sig_type=std_logic lab=out1p}
C {devices/lab_wire.sym} -520 -750 0 1 {name=p6 sig_type=std_logic lab=out1m}
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
C {devices/lab_wire.sym} -1600 260 0 0 {name=p23 sig_type=std_logic lab=ps}
C {devices/lab_wire.sym} -1380 260 0 0 {name=p24 sig_type=std_logic lab=psb}
C {sg13g2_pr/cap_cmim.sym} -970 110 0 0 {name=C1 model=cap_cmim W=5.77e-6 L=5.77e-6 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} -970 180 0 0 {name=p25 sig_type=std_logic lab=vssa}
C {devices/vdd.sym} -50 -580 3 0 {name=l1 lab=VDD}
C {devices/vdd.sym} -50 -520 3 0 {name=l2 lab=VSS}
C {sg13g2_stdcells/sg13g2_dfrbp_2.sym} 700 -220 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 580 -240 0 0 {name=p14 sig_type=std_logic lab=ps}
C {devices/ipin.sym} 450 -80 0 0 {name=p15 lab=res}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 530 -80 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/opin.sym} 890 -240 0 0 {name=p18 lab=dd}
C {devices/opin.sym} 880 -490 0 0 {name=p19 lab=d}
C {sg13g2_stdcells/sg13g2_buf_2.sym} 760 -490 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} -1010 -60 0 0 {name=p28 sig_type=std_logic lab=vinm_samp}
C {/foss/designs/comp_5_splitTop1.sym} -1160 -470 0 0 {name=x5}
C {/foss/designs/comp_5_splitTop2.sym} 170 -560 0 1 {name=x6}
