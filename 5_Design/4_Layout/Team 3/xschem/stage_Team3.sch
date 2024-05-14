v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -160 -470 -110 -470 {
lab=#net1}
N -50 -470 0 -470 {
lab=#net2}
N 0 -470 0 -420 {
lab=#net2}
N 0 -720 0 -660 {
lab=#net3}
N 0 -720 180 -720 {
lab=#net3}
N 180 -720 180 -660 {
lab=#net3}
N 180 -720 250 -720 {
lab=#net3}
N 0 -470 60 -470 {
lab=#net2}
N 180 -470 290 -470 {
lab=#net4}
N 310 -720 590 -720 {
lab=vo}
N -70 -630 -40 -630 {
lab=pr}
N 110 -630 140 -630 {
lab=ps}
N -70 -390 -40 -390 {
lab=pse}
N 590 -720 590 -470 {
lab=vo}
N 180 -850 180 -720 {
lab=#net3}
N 590 -850 590 -720 {
lab=vo}
N 350 -590 350 -510 {
lab=vdda}
N 350 -470 350 -450 {
lab=vo}
N 350 -480 350 -470 {
lab=vo}
N 290 -510 310 -510 {
lab=#net4}
N 290 -420 310 -420 {
lab=#net4}
N 290 -470 290 -420 {
lab=#net4}
N 350 -470 590 -470 {
lab=vo}
N 290 -510 290 -470 {
lab=#net4}
N 590 -470 630 -470 {
lab=vo}
N 350 -420 350 -370 {
lab=vssa}
N 380 -850 590 -850 {
lab=vo}
N -280 -470 -160 -470 {
lab=#net1}
N -300 -570 -280 -570 {
lab=#net1}
N -280 -570 -280 -470 {
lab=#net1}
N -300 -390 -280 -390 {
lab=#net1}
N -280 -470 -280 -390 {
lab=#net1}
N -380 -470 -380 -390 {
lab=vin}
N -380 -570 -380 -470 {
lab=vin}
N -330 -350 -330 -320 {
lab=psb}
N -330 -650 -330 -610 {
lab=ps}
N -380 -390 -360 -390 {
lab=vin}
N -380 -570 -360 -570 {
lab=vin}
N -330 -440 -330 -390 {
lab=vdda}
N -330 -570 -330 -510 {
lab=vssa}
N 0 -360 -0 -160 {
lab=vmid}
N -160 -160 -80 -160 {
lab=vssa}
N 0 -390 50 -390 {
lab=vssa}
N -0 -600 -0 -470 {
lab=#net2}
N 180 -600 180 -470 {
lab=#net4}
N 120 -470 180 -470 {
lab=#net4}
N -0 -630 30 -630 {
lab=vssa}
N 180 -630 220 -630 {
lab=vssa}
N 350 -850 350 -800 {
lab=vssa}
N 180 -850 320 -850 {
lab=#net3}
N -480 -930 -420 -930 {
lab=pse}
N -480 -890 -420 -890 {
lab=ps}
N -340 -890 -300 -890 {
lab=psb}
N -480 -830 -420 -830 {
lab=pr}
N -480 -470 -380 -470 {
lab=vin}
N -480 -970 350 -970 {
lab=res}
N 350 -970 350 -890 {
lab=res}
N -480 -790 -160 -790 {
lab=vhi}
N -160 -710 -90 -710 {
lab=vdda}
N -160 -680 -160 -470 {
lab=#net1}
N -160 -790 -160 -740 {
lab=vhi}
N -240 -710 -200 -710 {
lab=#net5}
N -410 -730 -360 -730 {
lab=d}
N -410 -690 -360 -690 {
lab=pr}
N -160 -470 -160 -190 {
lab=#net1}
N -280 -160 -200 -160 {
lab=gn}
N -460 -180 -400 -180 {
lab=pr}
N -480 -140 -400 -140 {
lab=d}
N -480 -70 -160 -70 {
lab=vlo}
N -160 -130 -160 -70 {
lab=vlo}
N 0 -160 110 -160 {
lab=vmid}
N 170 -280 170 -200 {
lab=vdda}
N 170 -160 170 -140 {
lab=vmid}
N 170 -170 170 -160 {
lab=vmid}
N 110 -200 130 -200 {
lab=vmid}
N 110 -110 130 -110 {
lab=vmid}
N 110 -160 110 -110 {
lab=vmid}
N 170 -160 410 -160 {
lab=vmid}
N 110 -200 110 -160 {
lab=vmid}
N 170 -110 170 -60 {
lab=vssa}
N 110 -160 170 -160 {
lab=vmid}
C {devices/title.sym} -340 40 0 0 {name=l1 author="Keith Maki"}
C {sg13g2_pr/sg13_lv_nmos.sym} 330 -420 2 1 {name=mn1
L=1.5u
W=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 330 -510 0 0 {name=mp1
L=1.5u
W=10u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 350 -870 3 1 {name=mn2
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 -630 2 1 {name=mn3
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 -630 2 1 {name=mn4
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 -390 2 1 {name=mn5
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -330 -370 3 0 {name=mp2
L=0.13u
W=6u
ng=3
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -180 -160 2 1 {name=mn6
L=0.13u
W=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -330 -590 3 1 {name=mn7
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -380 -890 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} -480 -970 0 0 {name=p12 lab=res}
C {devices/ipin.sym} -480 -930 0 0 {name=p7 lab=pse}
C {devices/ipin.sym} -480 -890 0 0 {name=p10 lab=ps}
C {devices/ipin.sym} -480 -830 0 0 {name=p11 lab=pr}
C {devices/ipin.sym} -480 -470 0 0 {name=p13 lab=vin}
C {devices/iopin.sym} 350 -590 3 0 {name=p15 lab=vdda}
C {devices/opin.sym} 630 -470 0 0 {name=p6 lab=vo}
C {devices/lab_wire.sym} -300 -890 0 0 {name=p17 sig_type=std_logic lab=psb}
C {devices/lab_wire.sym} -330 -440 0 0 {name=p8 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -330 -320 0 0 {name=p1 sig_type=std_logic lab=psb}
C {devices/lab_wire.sym} -330 -650 0 0 {name=p9 sig_type=std_logic lab=ps}
C {devices/lab_wire.sym} -70 -630 0 0 {name=p2 sig_type=std_logic lab=pr}
C {devices/lab_wire.sym} 110 -630 0 0 {name=p3 sig_type=std_logic lab=ps}
C {devices/lab_wire.sym} -460 -180 0 0 {name=p5 sig_type=std_logic lab=pr}
C {devices/lab_wire.sym} -70 -390 0 0 {name=p4 sig_type=std_logic lab=pse}
C {devices/iopin.sym} 350 -370 1 0 {name=p20 lab=vssa}
C {devices/iopin.sym} -480 -790 2 0 {name=p21 lab=vhi}
C {sg13g2_pr/sg13_lv_pmos.sym} -180 -710 0 0 {name=mp3
L=0.13u
W=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} -90 -710 0 1 {name=p22 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -410 -730 0 0 {name=p23 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} -410 -690 0 0 {name=p24 sig_type=std_logic lab=pr}
C {sg13g2_stdcells/sg13g2_and2_1.sym} -340 -160 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} -480 -140 0 0 {name=p25 lab=d}
C {devices/iopin.sym} -480 -70 2 0 {name=p26 lab=vlo}
C {devices/lab_wire.sym} -80 -160 0 1 {name=p27 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -330 -510 0 0 {name=p28 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 -110 2 1 {name=mn8
L=1.5u
W=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 150 -200 0 0 {name=mp4
L=1.5u
W=10u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} 170 -280 0 0 {name=p14 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 170 -60 0 0 {name=p29 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 220 -630 0 1 {name=p30 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 30 -630 0 1 {name=p31 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 50 -390 0 1 {name=p32 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 350 -800 0 0 {name=p33 sig_type=std_logic lab=vssa}
C {devices/opin.sym} 410 -160 0 0 {name=p34 lab=vmid}
C {devices/lab_wire.sym} -250 -160 0 1 {name=p35 sig_type=std_logic lab=gn}
C {sg13g2_pr/cap_cmim.sym} -80 -470 1 0 {name=C4 model=cap_cmim W=5.77e-6 L=5.77e-6 MF=1 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 90 -470 1 0 {name=C1 model=cap_cmim W=8.16e-6 L=8.16e-6 MF=1 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 280 -720 3 0 {name=C2 model=cap_cmim W=8.16e-6 L=8.16e-6 MF=1 spiceprefix=X}
C {sg13g2_stdcells/sg13g2_nand2b_1.sym} -300 -710 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
