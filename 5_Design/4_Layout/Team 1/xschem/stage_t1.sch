v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -870 120 -870 {
lab=pse}
N 80 -830 120 -830 {
lab=ps}
N 200 -830 240 -830 {
lab=psb}
N 80 -790 120 -790 {
lab=pr}
N 80 -700 120 -700 {
lab=d}
N 80 -660 120 -660 {
lab=pr}
N 360 -680 450 -680 {
lab=vdda}
N 240 -680 320 -680 {
lab=gp}
N 80 -750 360 -750 {
lab=vhi}
N 360 -750 360 -710 {
lab=vhi}
N 190 -620 190 -580 {
lab=ps}
N 190 -310 190 -270 {
lab=psb}
N 190 -540 190 -460 {
lab=vssa}
N 190 -430 190 -350 {
lab=vdda}
N 120 -540 160 -540 {
lab=vin}
N 220 -540 260 -540 {
lab=vx1}
N 220 -350 260 -350 {
lab=vx1}
N 120 -350 160 -350 {
lab=vin}
N 120 -440 120 -350 {
lab=vin}
N 80 -440 120 -440 {
lab=vin}
N 120 -540 120 -440 {
lab=vin}
N 260 -440 260 -350 {
lab=vx1}
N 260 -440 360 -440 {
lab=vx1}
N 260 -540 260 -440 {
lab=vx1}
N 360 -650 360 -440 {
lab=vx1}
N 360 -440 460 -440 {
lab=vx1}
N 360 -440 360 -230 {
lab=vx1}
N 240 -200 320 -200 {
lab=gn}
N 80 -220 120 -220 {
lab=pr}
N 80 -180 120 -180 {
lab=d}
N 360 -170 360 -130 {
lab=vlo}
N 80 -130 360 -130 {
lab=vlo}
N 360 -200 450 -200 {
lab=vssa}
N 520 -440 620 -440 {
lab=vx2}
N 620 -540 620 -440 {
lab=vx2}
N 620 -440 620 -340 {
lab=vx2}
N 620 -440 720 -440 {
lab=vx2}
N 780 -440 880 -440 {
lab=vx3}
N 880 -540 880 -440 {
lab=vx3}
N 620 -570 710 -570 {
lab=vssa}
N 880 -570 970 -570 {
lab=vssa}
N 540 -570 580 -570 {
lab=pr}
N 800 -570 840 -570 {
lab=ps}
N 620 -700 620 -600 {
lab=vx4}
N 880 -700 880 -600 {
lab=vx4}
N 620 -700 880 -700 {
lab=vx4}
N 880 -700 980 -700 {
lab=vx4}
N 1040 -700 1140 -700 {
lab=vout}
N 1010 -850 1010 -770 {
lab=vssa}
N 80 -910 1010 -910 {
lab=res}
N 1010 -910 1010 -890 {
lab=res}
N 880 -850 980 -850 {
lab=vx4}
N 1040 -850 1140 -850 {
lab=vout}
N 880 -850 880 -700 {
lab=vx4}
N 1140 -850 1140 -700 {
lab=vout}
N 620 -310 710 -310 {
lab=vssa}
N 540 -310 580 -310 {
lab=pse}
N 1020 -440 1140 -440 {
lab=vout}
N 1020 -440 1020 -420 {
lab=vout}
N 1020 -460 1020 -440 {
lab=vout}
N 1020 -560 1020 -490 {
lab=vdda}
N 960 -490 980 -490 {
lab=vx3}
N 960 -390 980 -390 {
lab=vx3}
N 960 -440 960 -390 {
lab=vx3}
N 880 -440 960 -440 {
lab=vx3}
N 960 -490 960 -440 {
lab=vx3}
N 1140 -700 1140 -440 {
lab=vout}
N 1140 -440 1240 -440 {
lab=vout}
N 1020 -170 1240 -170 {
lab=vmid}
N 1020 -170 1020 -150 {
lab=vmid}
N 1020 -190 1020 -170 {
lab=vmid}
N 1020 -290 1020 -220 {
lab=vdda}
N 960 -220 980 -220 {
lab=vmid}
N 960 -120 980 -120 {
lab=vmid}
N 960 -170 960 -120 {
lab=vmid}
N 960 -220 960 -170 {
lab=vmid}
N 620 -280 620 -170 {
lab=vmid}
N 620 -170 960 -170 {
lab=vmid}
N 1020 -120 1020 -50 {
lab=vssa}
N 960 -170 1020 -170 {
lab=vmid}
N 1020 -390 1020 -320 {
lab=vssa}
C {devices/title.sym} 170 0 0 0 {name=l1 author="Alex Montoya"}
C {devices/ipin.sym} 80 -910 0 0 {name=p1 lab=res}
C {devices/ipin.sym} 80 -870 0 0 {name=p2 lab=pse}
C {devices/ipin.sym} 80 -830 0 0 {name=p3 lab=ps}
C {devices/ipin.sym} 80 -790 0 0 {name=p4 lab=pr}
C {devices/iopin.sym} 80 -750 2 0 {name=p5 lab=vhi}
C {devices/ipin.sym} 80 -440 0 0 {name=p6 lab=vin}
C {devices/ipin.sym} 80 -180 0 0 {name=p7 lab=d}
C {devices/iopin.sym} 80 -130 2 0 {name=p8 lab=vlo}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 160 -830 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2b_1.sym} 180 -680 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_pr/sg13_lv_nmos.sym} 1010 -870 3 1 {name=M2
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 340 -680 0 0 {name=M3
L=0.13u
W=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} 80 -700 0 0 {name=p9 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 80 -660 0 0 {name=p10 sig_type=std_logic lab=pr}
C {devices/lab_wire.sym} 290 -680 0 0 {name=p11 sig_type=std_logic lab=gp}
C {devices/lab_wire.sym} 450 -680 0 0 {name=p12 sig_type=std_logic lab=vdda}
C {sg13g2_pr/sg13_lv_nmos.sym} 190 -560 3 1 {name=M4
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 190 -330 3 0 {name=M5
L=0.13u
W=6u
ng=3
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} 190 -460 0 0 {name=p13 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 190 -430 2 1 {name=p14 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 190 -620 0 0 {name=p15 sig_type=std_logic lab=ps}
C {devices/lab_wire.sym} 190 -270 2 0 {name=p16 sig_type=std_logic lab=psb}
C {devices/lab_wire.sym} 290 -440 0 0 {name=p17 sig_type=std_logic lab=vx1}
C {sg13g2_pr/cap_cmim.sym} 490 -440 1 0 {name=C2 model=cap_cmim W=5.77e-6 L=5.77e-6 MF=1 spiceprefix=X}
C {sg13g2_stdcells/sg13g2_and2_1.sym} 180 -200 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_pr/sg13_lv_nmos.sym} 340 -200 2 1 {name=M6
L=0.13u
W=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 290 -200 0 0 {name=p18 sig_type=std_logic lab=gn}
C {devices/lab_wire.sym} 80 -220 0 0 {name=p19 sig_type=std_logic lab=pr}
C {devices/lab_wire.sym} 450 -200 0 0 {name=p20 sig_type=std_logic lab=vssa}
C {sg13g2_pr/cap_cmim.sym} 750 -440 1 0 {name=C3 model=cap_cmim W=8.16e-6 L=8.16e-6 MF=1 spiceprefix=X}
C {sg13g2_pr/sg13_lv_nmos.sym} 600 -570 2 1 {name=M7
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 860 -570 2 1 {name=M8
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 710 -570 0 0 {name=p21 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 970 -570 0 0 {name=p22 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 540 -570 0 0 {name=p23 sig_type=std_logic lab=pr}
C {devices/lab_wire.sym} 800 -570 0 0 {name=p24 sig_type=std_logic lab=ps}
C {sg13g2_pr/cap_cmim.sym} 1010 -700 3 0 {name=C4 model=cap_cmim W=8.16e-6 L=8.16e-6 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} 1010 -770 0 0 {name=p25 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_lv_nmos.sym} 600 -310 2 1 {name=M9
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 710 -310 0 0 {name=p26 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 540 -310 0 0 {name=p27 sig_type=std_logic lab=pse}
C {sg13g2_pr/sg13_lv_pmos.sym} 1000 -490 0 0 {name=M10
L=1.5u
W=10u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1000 -390 2 1 {name=M11
L=1.5u
W=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/iopin.sym} 1020 -560 0 0 {name=p28 lab=vdda}
C {devices/iopin.sym} 1020 -320 0 0 {name=p29 lab=vssa}
C {devices/lab_wire.sym} 1020 -290 0 0 {name=p30 sig_type=std_logic lab=vdda}
C {sg13g2_pr/sg13_lv_pmos.sym} 1000 -220 0 0 {name=M12
L=1.5u
W=10u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1000 -120 2 1 {name=M13
L=1.5u
W=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 1020 -50 0 0 {name=p31 sig_type=std_logic lab=vssa}
C {devices/opin.sym} 1240 -440 0 0 {name=p32 lab=vout}
C {devices/opin.sym} 1240 -170 0 0 {name=p33 lab=vmid}
C {devices/lab_wire.sym} 620 -440 2 1 {name=p34 sig_type=std_logic lab=vx2}
C {devices/lab_wire.sym} 880 -440 2 1 {name=p35 sig_type=std_logic lab=vx3}
C {devices/lab_wire.sym} 880 -700 2 1 {name=p36 sig_type=std_logic lab=vx4}
C {devices/lab_wire.sym} 880 -170 2 1 {name=p37 sig_type=std_logic lab=vmid}
C {devices/lab_wire.sym} 240 -830 2 0 {name=p38 sig_type=std_logic lab=psb}
