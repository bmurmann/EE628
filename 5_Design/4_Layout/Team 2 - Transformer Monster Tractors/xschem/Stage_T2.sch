v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1230 -430 -1180 -430 {
lab=vx2}
N -1330 -430 -1290 -430 {
lab=vx1}
N -1180 -240 -1180 -200 {
lab=vmid}
N -1330 -160 -1330 -100 {
lab=vlo}
N -1050 -580 -1050 -550 {
lab=vx4}
N -1050 -690 -1010 -690 {
lab=vx4}
N -1180 -580 -1050 -580 {
lab=vx4}
N -1050 -490 -1050 -430 {
lab=vx3}
N -1180 -430 -1150 -430 {
lab=vx2}
N -1090 -430 -1050 -430 {
lab=vx3}
N -1180 -500 -1180 -430 {
lab=vx2}
N -1180 -580 -1180 -560 {
lab=vx4}
N -1610 -430 -1520 -430 {
lab=vin}
N -950 -690 -830 -690 {
lab=vout}
N -920 -420 -920 -410 {
lab=vout}
N -920 -440 -920 -420 {
lab=vout}
N -830 -420 -790 -420 {
lab=vout}
N -920 -420 -830 -420 {
lab=vout}
N -960 -430 -960 -380 {
lab=vx3}
N -960 -470 -960 -430 {
lab=vx3}
N -930 -850 -830 -850 {
lab=vout}
N -1050 -850 -990 -850 {
lab=vx4}
N -1050 -430 -960 -430 {
lab=vx3}
N -1180 -530 -1120 -530 {
lab=vssa}
N -1050 -520 -1000 -520 {
lab=vssa}
N -1180 -270 -1120 -270 {
lab=vssa}
N -960 -850 -960 -790 {
lab=vssa}
N -1480 -390 -1480 -330 {
lab=vdda}
N -1480 -500 -1480 -430 {
lab=vssa}
N -1520 -330 -1510 -330 {
lab=vin}
N -1520 -430 -1520 -330 {
lab=vin}
N -1520 -500 -1510 -500 {
lab=vin}
N -1450 -500 -1440 -500 {
lab=vx1}
N -1440 -430 -1440 -330 {
lab=vx1}
N -1450 -330 -1440 -330 {
lab=vx1}
N -1480 -560 -1480 -540 {
lab=ps}
N -1520 -500 -1520 -430 {
lab=vin}
N -1440 -430 -1330 -430 {
lab=vx1}
N -1440 -500 -1440 -430 {
lab=vx1}
N -1480 -290 -1480 -250 {
lab=psb}
N -1610 -850 -1600 -850 {
lab=pse}
N -1610 -820 -1530 -820 {
lab=ps}
N -1610 -930 -1590 -930 {
lab=vmid}
N -920 -540 -920 -470 {
lab=vdda}
N -1610 -890 -1600 -890 {
lab=res}
N -1610 -780 -1600 -780 {
lab=pr}
N -1450 -820 -1390 -820 {
lab=psb}
N -1330 -190 -1270 -190 {
lab=vssa}
N -1330 -430 -1330 -220 {
lab=vx1}
N -1330 -620 -1330 -430 {
lab=vx1}
N -1330 -730 -1330 -680 {
lab=vhi}
N -1610 -730 -1330 -730 {
lab=vhi}
N -1430 -650 -1370 -650 {
lab=gp}
N -1590 -670 -1550 -670 {
lab=d}
N -1590 -630 -1550 -630 {
lab=pr}
N -1430 -190 -1370 -190 {
lab=gn}
N -1590 -210 -1550 -210 {
lab=pr}
N -1600 -170 -1550 -170 {
lab=d}
N -1600 -100 -1330 -100 {
lab=vlo}
N -1050 -850 -1050 -690 {
lab=vx4}
N -830 -850 -830 -690 {
lab=vout}
N -1050 -690 -1050 -580 {
lab=vx4}
N -830 -690 -830 -420 {
lab=vout}
N -920 -380 -920 -320 {
lab=vssa}
N -1120 -530 -1120 -480 {
lab=vssa}
N -1000 -520 -1000 -480 {
lab=vssa}
N -1180 -430 -1180 -300 {
lab=vx2}
N -1330 -650 -1270 -650 {
lab=vdda}
C {devices/lab_wire.sym} -1220 -530 3 1 {name=p10 sig_type=std_logic lab=pr

}
C {devices/lab_wire.sym} -1400 -190 2 1 {name=p11 sig_type=std_logic lab=gn

}
C {devices/lab_wire.sym} -1220 -270 0 0 {name=p13 sig_type=std_logic lab=pse

}
C {sg13g2_pr/sg13_lv_pmos.sym} -940 -470 0 0 {name=M3
L=1.5u
W=10u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} -960 -890 0 1 {name=p26 sig_type=std_logic lab=res

}
C {sg13g2_pr/sg13_lv_nmos.sym} -940 -380 2 1 {name=M4
L=1.5u
W=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1200 -530 2 1 {name=M1
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1070 -520 2 1 {name=M6
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} -1090 -520 3 1 {name=p1 sig_type=std_logic lab=ps
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1200 -270 2 1 {name=M7
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -960 -870 3 1 {name=M8
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1350 -190 2 1 {name=M9
L=.13u
W=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1480 -520 3 1 {name=M10
L=0.13u
W=2u
ng=3
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} -1180 -200 2 0 {name=p2 sig_type=std_logic lab=vmid

}
C {sg13g2_pr/sg13_lv_pmos.sym} -1480 -310 3 0 {name=M11
L=0.13u
W=6u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} -1480 -390 0 0 {name=p14 sig_type=std_logic lab=vdda

}
C {devices/lab_wire.sym} -1480 -560 0 1 {name=p15 sig_type=std_logic lab=ps
}
C {devices/ipin.sym} -1610 -430 0 0 {name=p3 lab=vin}
C {devices/ipin.sym} -1610 -820 0 0 {name=p5 lab=ps}
C {devices/ipin.sym} -1610 -850 0 0 {name=p6 lab=pse}
C {devices/lab_wire.sym} -1600 -850 0 1 {name=p7 sig_type=std_logic lab=pse
}
C {devices/lab_wire.sym} -1600 -820 0 1 {name=p8 sig_type=std_logic lab=ps
}
C {devices/lab_wire.sym} -1590 -930 2 0 {name=p18 sig_type=std_logic lab=vmid

}
C {devices/lab_wire.sym} -1480 -250 0 0 {name=p19 sig_type=std_logic lab=psb
}
C {devices/opin.sym} -790 -420 0 0 {name=p20 lab=vout}
C {devices/iopin.sym} -1610 -930 0 1 {name=p12 lab=vmid}
C {devices/ipin.sym} -1610 -890 0 0 {name=p16 lab=res}
C {devices/lab_wire.sym} -1600 -890 0 1 {name=p21 sig_type=std_logic lab=res

}
C {devices/ipin.sym} -1610 -780 0 0 {name=p4 lab=pr}
C {devices/lab_wire.sym} -1600 -780 0 1 {name=p9 sig_type=std_logic lab=pr
}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -1490 -820 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} -1390 -820 0 1 {name=p25 sig_type=std_logic lab=psb
}
C {devices/iopin.sym} -920 -540 0 0 {name=p27 lab=vdda}
C {devices/iopin.sym} -920 -320 0 0 {name=p28 lab=vssa}
C {devices/lab_wire.sym} -1270 -190 0 1 {name=p22 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -1120 -270 0 1 {name=p29 sig_type=std_logic lab=vssa
}
C {sg13g2_pr/sg13_lv_pmos.sym} -1350 -650 0 0 {name=M2
L=0.13u
W=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/iopin.sym} -1610 -730 0 1 {name=p30 lab=vhi}
C {sg13g2_stdcells/sg13g2_nand2b_1.sym} -1490 -650 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} -1590 -670 0 0 {name=p31 sig_type=std_logic lab=d

}
C {devices/lab_wire.sym} -1590 -630 0 0 {name=p32 sig_type=std_logic lab=pr

}
C {sg13g2_stdcells/sg13g2_and2_1.sym} -1490 -190 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} -1600 -170 0 0 {name=p33 lab=d}
C {devices/lab_wire.sym} -1590 -210 0 0 {name=p34 sig_type=std_logic lab=pr

}
C {devices/iopin.sym} -1600 -100 0 1 {name=p35 lab=vlo}
C {devices/lab_wire.sym} -1480 -430 0 0 {name=p36 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -1370 -430 0 0 {name=p24 sig_type=std_logic lab=vx1


}
C {devices/lab_wire.sym} -1390 -650 2 1 {name=p37 sig_type=std_logic lab=gp

}
C {sg13g2_pr/cap_cmim.sym} -1260 -430 1 0 {name=C1 model=cap_cmim W=5.77e-6 L=5.77e-6 MF=1 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -980 -690 3 1 {name=C2 model=cap_cmim W=8.16e-6 L=8.16e-6 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} -960 -790 0 0 {name=p17 sig_type=std_logic lab=vssa


}
C {devices/lab_wire.sym} -1120 -480 0 0 {name=p23 sig_type=std_logic lab=vssa


}
C {devices/lab_wire.sym} -1000 -480 0 0 {name=p38 sig_type=std_logic lab=vssa


}
C {devices/lab_wire.sym} -1100 -580 0 0 {name=p39 sig_type=std_logic lab=vx4



}
C {devices/lab_wire.sym} -1180 -470 0 0 {name=p40 sig_type=std_logic lab=vx2



}
C {devices/lab_wire.sym} -990 -430 0 0 {name=p41 sig_type=std_logic lab=vx3



}
C {sg13g2_pr/cap_cmim.sym} -1120 -430 1 0 {name=C3 model=cap_cmim W=8.16e-6 L=8.16e-6 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} -1270 -650 0 1 {name=p42 sig_type=std_logic lab=vdda}
