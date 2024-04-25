v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -190 -520 -120 -520 {
lab=vout}
N -1150 -310 -1120 -310 {
lab=pr}
N -650 -400 -650 -210 {
lab=vmid}
N -720 -430 -690 -430 {
lab=pse}
N -720 -670 -690 -670 {
lab=pr}
N -650 -750 -650 -700 {
lab=vx4}
N -510 -670 -480 -670 {
lab=ps}
N -440 -750 -440 -700 {
lab=vx4}
N -310 -520 -310 -500 {
lab=vout}
N -370 -570 -350 -570 {
lab=vx3}
N -370 -520 -370 -470 {
lab=vx3}
N -370 -470 -350 -470 {
lab=vx3}
N -370 -570 -370 -520 {
lab=vx3}
N -310 -640 -310 -570 {
lab=vdda}
N -310 -520 -190 -520 {
lab=vout}
N -310 -540 -310 -520 {
lab=vout}
N -440 -930 -380 -930 {
lab=vx4}
N -260 -750 -190 -750 {
lab=vout}
N -320 -750 -260 -750 {
lab=vout}
N -870 -290 -780 -290 {
lab=vssa}
N -320 -930 -260 -930 {
lab=vout}
N -350 -930 -350 -870 {
lab=vssa}
N -1030 -930 -980 -930 {
lab=psb}
N -1130 -440 -1100 -440 {
lab=vin}
N -1130 -520 -1130 -440 {
lab=vin}
N -1220 -520 -1130 -520 {
lab=vin}
N -1040 -440 -1010 -440 {
lab=vx1}
N -1010 -520 -1010 -440 {
lab=vx1}
N -1070 -400 -1070 -380 {
lab=psb}
N -1070 -670 -1070 -650 {
lab=ps}
N -1070 -610 -1070 -550 {
lab=vssa}
N -1130 -610 -1130 -520 {
lab=vin}
N -1130 -610 -1100 -610 {
lab=vin}
N -1040 -610 -1010 -610 {
lab=vx1}
N -1010 -610 -1010 -520 {
lab=vx1}
N -1220 -1010 -350 -1010 {
lab=res}
N -1070 -510 -1070 -440 {
lab=vdda}
N -370 -260 -350 -260 {
lab=vmid}
N -370 -210 -370 -160 {
lab=vmid}
N -370 -160 -350 -160 {
lab=vmid}
N -370 -260 -370 -210 {
lab=vmid}
N -310 -330 -310 -260 {
lab=vdda}
N -310 -210 -310 -190 {
lab=vmid}
N -650 -210 -370 -210 {
lab=vmid}
N -370 -210 -310 -210 {
lab=vmid}
N -310 -230 -310 -210 {
lab=vmid}
N -1220 -210 -870 -210 {
lab=vlo}
N -1000 -290 -910 -290 {
lab=gn}
N -870 -260 -870 -210 {
lab=vlo}
N -870 -520 -870 -320 {
lab=vx1}
N -1010 -520 -870 -520 {
lab=vx1}
N -870 -740 -870 -520 {
lab=vx1}
N -1220 -840 -870 -840 {
lab=vhi}
N -870 -840 -870 -800 {
lab=vhi}
N -870 -770 -780 -770 {
lab=vdda}
N -1000 -770 -910 -770 {
lab=gp}
N -1150 -750 -1120 -750 {
lab=pr}
N -1150 -790 -1120 -790 {
lab=d}
N -1220 -270 -1120 -270 {
lab=d}
N -310 -160 -310 -90 {
lab=vssa}
N -310 -470 -310 -410 {
lab=vssa}
N -1220 -930 -1110 -930 {
lab=ps}
N -1220 -970 -1200 -970 {
lab=pse}
N -1220 -890 -1200 -890 {
lab=pr}
N -650 -670 -560 -670 {
lab=vssa}
N -650 -430 -560 -430 {
lab=vssa}
N -440 -670 -350 -670 {
lab=vssa}
N -350 -1010 -350 -940 {
lab=res}
N -310 -210 -130 -210 {
lab=vmid}
N -870 -520 -810 -520 {
lab=vx1}
N -650 -640 -650 -520 {
lab=vx2}
N -650 -750 -440 -750 {
lab=vx4}
N -260 -930 -260 -750 {
lab=vout}
N -750 -520 -650 -520 {
lab=vx2}
N -440 -750 -380 -750 {
lab=vx4}
N -440 -520 -370 -520 {
lab=vx3}
N -650 -520 -540 -520 {
lab=vx2}
N -190 -750 -190 -520 {
lab=vout}
N -440 -930 -440 -750 {
lab=vx4}
N -650 -520 -650 -460 {
lab=vx2}
N -440 -640 -440 -520 {
lab=vx3}
N -480 -520 -440 -520 {
lab=vx3}
C {devices/title.sym} -1040 -40 0 0 {name=l5 author="Boris Murmann"}
C {devices/lab_wire.sym} -1150 -310 0 0 {name=p14 sig_type=std_logic lab=pr}
C {devices/lab_wire.sym} -720 -430 0 0 {name=p15 sig_type=std_logic lab=pse}
C {devices/lab_wire.sym} -720 -670 0 0 {name=p9 sig_type=std_logic lab=pr}
C {devices/lab_wire.sym} -510 -670 0 0 {name=p11 sig_type=std_logic lab=ps}
C {sg13g2_pr/sg13_lv_nmos.sym} -330 -470 2 1 {name=Mn
L=1.5u
W=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -330 -570 0 0 {name=Mp
L=1.5u
W=10u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} -390 -520 0 0 {name=p25 sig_type=std_logic lab=vx3}
C {devices/lab_pin.sym} -650 -560 0 0 {name=p28 sig_type=std_logic lab=vx2}
C {devices/lab_wire.sym} -930 -520 0 0 {name=p29 sig_type=std_logic lab=vx1}
C {devices/opin.sym} -120 -520 0 0 {name=p1 lab=vout}
C {devices/iopin.sym} -310 -640 0 0 {name=p2 lab=vdda}
C {devices/ipin.sym} -1220 -1010 0 0 {name=p6 lab=res}
C {devices/ipin.sym} -1220 -520 0 0 {name=p7 lab=vin}
C {devices/ipin.sym} -1220 -970 0 0 {name=p8 lab=pse}
C {devices/ipin.sym} -1220 -930 0 0 {name=p12 lab=ps}
C {devices/ipin.sym} -1220 -890 0 0 {name=p13 lab=pr}
C {devices/lab_wire.sym} -530 -750 0 0 {name=p4 sig_type=std_logic lab=vx4}
C {sg13g2_pr/sg13_lv_nmos.sym} -890 -290 2 1 {name=Mn3
L=0.13u
W=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -350 -950 3 1 {name=Mn4
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -1070 -930 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} -980 -930 0 0 {name=p5 sig_type=std_logic lab=psb}
C {sg13g2_pr/sg13_lv_pmos.sym} -1070 -420 3 0 {name=Mp1
L=0.13u
W=6u
ng=3
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} -1070 -380 0 0 {name=p19 sig_type=std_logic lab=psb}
C {sg13g2_pr/sg13_lv_nmos.sym} -1070 -630 3 1 {name=Mn5
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} -1070 -670 0 0 {name=p10 sig_type=std_logic lab=ps}
C {devices/lab_wire.sym} -1070 -510 0 0 {name=p20 sig_type=std_logic lab=vdda}
C {sg13g2_pr/sg13_lv_nmos.sym} -670 -670 2 1 {name=Mn1
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -460 -670 2 1 {name=Mn2
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -670 -430 2 1 {name=Mn6
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -330 -160 2 1 {name=Mn7
L=1.5u
W=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -330 -260 0 0 {name=Mp2
L=1.5u
W=10u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} -520 -210 0 0 {name=p21 sig_type=std_logic lab=vmid}
C {sg13g2_stdcells/sg13g2_and2_1.sym} -1060 -290 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_pr/sg13_lv_pmos.sym} -890 -770 0 0 {name=Mp3
L=0.13u
W=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} -780 -770 0 0 {name=p24 sig_type=std_logic lab=vdda}
C {sg13g2_stdcells/sg13g2_nand2b_1.sym} -1060 -770 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} -1150 -750 0 0 {name=p26 sig_type=std_logic lab=pr}
C {devices/lab_wire.sym} -1150 -790 0 0 {name=p30 sig_type=std_logic lab=d}
C {devices/ipin.sym} -1220 -270 0 0 {name=p27 lab=d}
C {devices/lab_wire.sym} -950 -770 0 0 {name=p31 sig_type=std_logic lab=gp}
C {devices/lab_wire.sym} -950 -290 0 0 {name=p32 sig_type=std_logic lab=gn}
C {devices/iopin.sym} -310 -410 0 0 {name=p16 lab=vssa}
C {devices/lab_wire.sym} -310 -330 0 0 {name=p3 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -310 -90 0 0 {name=p17 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -1070 -550 0 0 {name=p18 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -780 -290 0 0 {name=p33 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -350 -870 0 0 {name=p34 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -560 -670 0 0 {name=p35 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -560 -430 0 0 {name=p36 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -350 -670 0 0 {name=p37 sig_type=std_logic lab=vssa}
C {devices/iopin.sym} -1220 -840 2 0 {name=p22 lab=vhi}
C {devices/iopin.sym} -1220 -210 2 0 {name=p23 lab=vlo}
C {sg13g2_pr/cap_cmim.sym} -780 -520 1 0 {name=C1 model=cap_cmim W=5.77e-6 L=5.77e-6 MF=1 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -510 -520 1 0 {name=C2 model=cap_cmim W=8.16e-6 L=8.16e-6 MF=1 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -350 -750 3 0 {name=C3 model=cap_cmim W=8.16e-6 L=8.16e-6 MF=1 spiceprefix=X}
C {devices/opin.sym} -130 -210 0 0 {name=p38 lab=vmid}
