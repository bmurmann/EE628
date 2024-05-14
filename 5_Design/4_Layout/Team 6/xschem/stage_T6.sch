v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 730 -660 730 -590 {
lab=vssa}
N 730 -510 730 -440 {
lab=vdda}
N 680 -660 700 -660 {
lab=vin}
N 680 -550 680 -440 {
lab=vin}
N 680 -440 700 -440 {
lab=vin}
N 760 -660 780 -660 {
lab=vx1}
N 780 -550 780 -440 {
lab=vx1}
N 760 -440 780 -440 {
lab=vx1}
N 730 -740 730 -700 {
lab=ps}
N 730 -400 730 -360 {
lab=psb}
N 780 -550 900 -550 {
lab=vx1}
N 780 -660 780 -550 {
lab=vx1}
N 900 -550 900 -300 {
lab=vx1}
N 900 -830 970 -830 {
lab=vdda}
N 900 -270 970 -270 {
lab=vssa}
N 900 -800 900 -550 {
lab=vx1}
N 790 -830 860 -830 {
lab=gp}
N 790 -270 860 -270 {
lab=gn}
N 900 -550 980 -550 {
lab=vx1}
N 1040 -550 1200 -550 {
lab=vx2}
N 1200 -550 1200 -420 {
lab=vx2}
N 1200 -680 1200 -550 {
lab=vx2}
N 640 -850 670 -850 {
lab=d}
N 640 -810 670 -810 {
lab=pr}
N 650 -290 680 -290 {
lab=pr}
N 1130 -710 1160 -710 {
lab=pr}
N 1130 -390 1160 -390 {
lab=pse}
N 1200 -710 1270 -710 {
lab=vssa}
N 1200 -390 1270 -390 {
lab=vssa}
N 1200 -550 1360 -550 {
lab=vx2}
N 1420 -550 1580 -550 {
lab=vx3}
N 1580 -680 1580 -550 {
lab=vx3}
N 1510 -710 1540 -710 {
lab=ps}
N 1580 -710 1650 -710 {
lab=vssa}
N 1200 -800 1200 -740 {
lab=xxx}
N 1580 -800 1580 -740 {
lab=xxx}
N 1200 -800 1580 -800 {
lab=xxx}
N 1580 -800 1700 -800 {
lab=xxx}
N 1760 -800 1880 -800 {
lab=vout}
N 1580 -1010 1580 -800 {
lab=xxx}
N 1580 -1010 1710 -1010 {
lab=xxx}
N 1770 -1010 1880 -1010 {
lab=vout}
N 1880 -1010 1880 -800 {
lab=vout}
N 1880 -800 1880 -550 {
lab=vout}
N 1740 -550 1740 -530 {
lab=vout}
N 1740 -670 1740 -600 {
lab=vdda}
N 1740 -1010 1740 -950 {
lab=vssa}
N 1680 -600 1700 -600 {
lab=vx3}
N 1680 -550 1680 -500 {
lab=vx3}
N 1680 -500 1700 -500 {
lab=vx3}
N 1580 -550 1680 -550 {
lab=vx3}
N 1680 -600 1680 -550 {
lab=vx3}
N 1740 -550 1880 -550 {
lab=vout}
N 1740 -570 1740 -550 {
lab=vout}
N 1880 -550 1920 -550 {
lab=vout}
N 1360 -250 1360 -230 {
lab=vmid}
N 1360 -370 1360 -300 {
lab=vdda}
N 1300 -300 1320 -300 {
lab=vmid}
N 1300 -250 1300 -200 {
lab=vmid}
N 1300 -200 1320 -200 {
lab=vmid}
N 1200 -250 1300 -250 {
lab=vmid}
N 1300 -300 1300 -250 {
lab=vmid}
N 1360 -250 1920 -250 {
lab=vmid}
N 1360 -270 1360 -250 {
lab=vmid}
N 1200 -360 1200 -250 {
lab=vmid}
N 1300 -250 1360 -250 {
lab=vmid}
N 900 -240 900 -200 {
lab=vlo}
N 900 -900 900 -860 {
lab=vhi}
N 320 -900 900 -900 {
lab=vhi}
N 320 -200 900 -200 {
lab=vlo}
N 320 -250 680 -250 {
lab=d}
N 320 -550 680 -550 {
lab=vin}
N 680 -660 680 -550 {
lab=vin}
N 320 -960 360 -960 {
lab=pr}
N 320 -1020 360 -1020 {
lab=ps}
N 320 -1080 360 -1080 {
lab=pse}
N 320 -1140 1740 -1140 {
lab=res}
N 1740 -1140 1740 -1050 {
lab=res}
N 440 -1020 500 -1020 {
lab=psb}
N 1360 -200 1360 -130 {
lab=vssa}
N 1740 -500 1740 -430 {
lab=vssa}
C {devices/iopin.sym} 320 -900 0 1 {name=p1 lab=vhi}
C {devices/ipin.sym} 320 -960 0 0 {name=p2 lab=pr}
C {devices/opin.sym} 1920 -550 0 0 {name=p3 lab=vout}
C {sg13g2_stdcells/sg13g2_and2_1.sym} 740 -270 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2b_1.sym} 730 -830 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_pr/cap_cmim.sym} 1010 -550 1 0 {name=C1 model=cap_cmim W=5.77e-6 L=5.77e-6 MF=1 spiceprefix=X}
C {sg13g2_pr/sg13_lv_pmos.sym} 730 -420 3 0 {name=M3
L=0.13u
W=6.0u
ng=3
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 730 -680 3 1 {name=M4
L=0.13u
W=2.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 730 -740 0 0 {name=p4 sig_type=std_logic lab=ps}
C {devices/lab_pin.sym} 730 -360 0 0 {name=p5 sig_type=std_logic lab=psb}
C {devices/lab_pin.sym} 730 -510 0 0 {name=p6 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 730 -590 0 0 {name=p7 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_lv_nmos.sym} 880 -270 2 1 {name=M5
L=0.13u
W=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 880 -830 0 0 {name=M6
L=0.13u
W=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 970 -270 0 1 {name=p8 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 970 -830 0 1 {name=p9 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 830 -830 1 0 {name=p10 sig_type=std_logic lab=gp}
C {devices/lab_pin.sym} 830 -270 1 0 {name=p11 sig_type=std_logic lab=gn}
C {sg13g2_pr/sg13_lv_nmos.sym} 1180 -390 2 1 {name=M7
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1180 -710 2 1 {name=M8
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 640 -850 0 0 {name=p12 sig_type=std_logic lab=d}
C {devices/lab_pin.sym} 640 -810 0 0 {name=p13 sig_type=std_logic lab=pr}
C {devices/lab_pin.sym} 650 -290 0 0 {name=p14 sig_type=std_logic lab=pr}
C {devices/lab_pin.sym} 1130 -390 0 0 {name=p15 sig_type=std_logic lab=pse}
C {devices/lab_pin.sym} 1130 -710 0 0 {name=p16 sig_type=std_logic lab=pr}
C {sg13g2_pr/cap_cmim.sym} 1390 -550 1 0 {name=C2 model=cap_cmim W=8.16e-6 L=8.16e-6 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 1270 -710 0 1 {name=p17 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 1270 -390 0 1 {name=p18 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_lv_nmos.sym} 1560 -710 2 1 {name=M9
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1510 -710 0 0 {name=p19 sig_type=std_logic lab=ps}
C {devices/lab_pin.sym} 1650 -710 0 1 {name=p20 sig_type=std_logic lab=vssa}
C {sg13g2_pr/cap_cmim.sym} 1730 -800 3 0 {name=C3 model=cap_cmim W=8.16e-6 L=8.16e-6 MF=1 spiceprefix=X}
C {sg13g2_pr/sg13_lv_nmos.sym} 1740 -1030 3 1 {name=M10
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1720 -600 0 0 {name=M11
L=1.5u
W=10u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1720 -500 2 1 {name=M12
L=1.5u
W=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1740 -950 0 0 {name=p21 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_lv_pmos.sym} 1340 -300 0 0 {name=M1
L=1.5u
W=10u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1340 -200 2 1 {name=M2
L=1.5u
W=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1360 -130 0 1 {name=p22 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 1360 -370 0 1 {name=p25 sig_type=std_logic lab=vdda}
C {devices/ipin.sym} 320 -250 0 0 {name=p28 lab=d}
C {devices/ipin.sym} 320 -550 0 0 {name=p29 lab=vin}
C {devices/ipin.sym} 320 -1020 0 0 {name=p30 lab=ps}
C {devices/ipin.sym} 320 -1080 0 0 {name=p31 lab=pse}
C {devices/ipin.sym} 320 -1140 0 0 {name=p32 lab=res}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 400 -1020 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 500 -1020 0 1 {name=p35 sig_type=std_logic lab=psb}
C {devices/opin.sym} 1920 -250 0 0 {name=p36 lab=vmid}
C {devices/iopin.sym} 320 -200 0 1 {name=p26 lab=vlo}
C {devices/iopin.sym} 1740 -430 0 1 {name=p27 lab=vssa}
C {devices/iopin.sym} 1740 -670 0 1 {name=p37 lab=vdda}
C {devices/lab_wire.sym} 860 -550 0 0 {name=p23 sig_type=std_logic lab=vx1}
C {devices/lab_wire.sym} 1200 -600 0 0 {name=p24 sig_type=std_logic lab=vx2}
C {devices/lab_wire.sym} 1650 -550 0 0 {name=p38 sig_type=std_logic lab=vx3}
C {devices/lab_wire.sym} 1410 -800 0 0 {name=p33 sig_type=std_logic lab=vx4}
