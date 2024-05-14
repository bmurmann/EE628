v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -1130 460 -1130 {
lab=vhi}
N 460 -1130 460 -900 {
lab=vhi}
N 70 -1130 70 -890 {
lab=vhi}
N -480 -1130 70 -1130 {
lab=vhi}
N 50 -1100 440 -1100 {
lab=vlo}
N 440 -1100 440 -900 {
lab=vlo}
N 50 -1100 50 -890 {
lab=vlo}
N -480 -1100 50 -1100 {
lab=vlo}
N 420 -1070 810 -1070 {
lab=vdda}
N 810 -1070 810 -890 {
lab=vdda}
N 420 -1070 420 -900 {
lab=vdda}
N 30 -1070 420 -1070 {
lab=vdda}
N 30 -1070 30 -890 {
lab=vdda}
N -480 -1070 30 -1070 {
lab=vdda}
N 400 -1040 830 -1040 {
lab=vssa}
N 830 -1040 830 -890 {
lab=vssa}
N 400 -1040 400 -900 {
lab=vssa}
N 10 -1040 400 -1040 {
lab=vssa}
N 10 -1040 10 -890 {
lab=vssa}
N -480 -1040 10 -1040 {
lab=vssa}
N -480 -810 -110 -810 {
lab=vin}
N 190 -820 280 -820 {
lab=vout1}
N 580 -830 670 -830 {
lab=vout2}
N 580 -810 670 -810 {
lab=vmid2}
N 350 -690 800 -690 {
lab=res}
N 800 -750 800 -690 {
lab=res}
N 350 -740 350 -690 {
lab=res}
N -40 -690 350 -690 {
lab=res}
N -40 -730 -40 -690 {
lab=res}
N -480 -690 -40 -690 {
lab=res}
N -480 -580 -380 -580 {
lab=clkin}
N -80 -580 -20 -580 {
lab=p1}
N -20 -730 -20 -580 {
lab=p1}
N 820 -750 820 -560 {
lab=p1d}
N 0 -730 -0 -560 {
lab=p1d}
N -80 -560 -0 -560 {
lab=p1d}
N 840 -750 840 -540 {
lab=p2d}
N 20 -730 20 -540 {
lab=p2d}
N -80 -540 20 -540 {
lab=p2d}
N -80 -520 370 -520 {
lab=p2}
N 370 -740 370 -520 {
lab=p2}
N 500 -740 500 -650 {
lab=#net1}
N 500 -650 1020 -650 {
lab=#net1}
N 110 -730 110 -600 {
lab=#net2}
N 110 -600 1060 -600 {
lab=#net2}
N 410 -560 820 -560 {
lab=p1d}
N 390 -540 840 -540 {
lab=p2d}
N 410 -740 410 -560 {
lab=p1d}
N -0 -560 410 -560 {
lab=p1d}
N 390 -740 390 -540 {
lab=p2d}
N 20 -540 390 -540 {
lab=p2d}
N 970 -840 1020 -840 {
lab=#net1}
N 1020 -840 1020 -650 {
lab=#net1}
N 970 -820 1060 -820 {
lab=#net2}
N 1060 -820 1060 -600 {
lab=#net2}
N 970 -800 1100 -800 {
lab=dout}
C {devices/title.sym} -240 -280 0 0 {name=l1 author="Keith Maki"}
C {devices/ipin.sym} -480 -1130 0 0 {name=p12 lab=vhi
}
C {devices/opin.sym} 1100 -800 0 0 {name=p6 lab=dout}
C {devices/lab_wire.sym} -30 -580 0 0 {name=p17 sig_type=std_logic lab=p1}
C {devices/ipin.sym} -480 -1100 0 0 {name=p1 lab=vlo}
C {devices/ipin.sym} -480 -1070 0 0 {name=p2 lab=vdda}
C {devices/ipin.sym} -480 -1040 0 0 {name=p3 lab=vssa}
C {devices/ipin.sym} -480 -810 0 0 {name=p4 lab=vin}
C {devices/lab_wire.sym} 250 -820 0 0 {name=p5 sig_type=std_logic lab=vout1}
C {devices/lab_wire.sym} 640 -830 0 0 {name=p7 sig_type=std_logic lab=vout2}
C {devices/lab_wire.sym} 640 -810 0 0 {name=p8 sig_type=std_logic lab=vmid2}
C {devices/ipin.sym} -480 -580 0 0 {name=p9 lab=clkin}
C {devices/ipin.sym} -480 -690 0 0 {name=p10 lab=res}
C {devices/lab_wire.sym} -30 -560 0 0 {name=p11 sig_type=std_logic lab=p1d}
C {devices/lab_wire.sym} -30 -540 0 0 {name=p13 sig_type=std_logic lab=p2d}
C {devices/lab_wire.sym} -30 -520 0 0 {name=p14 sig_type=std_logic lab=p2}
C {/foss/designs/Latest Design/stage_Team3.sym} 40 -810 0 0 {name=x2}
C {/foss/designs/Latest Design/stage_Team3.sym} 430 -820 0 0 {name=x3}
C {/foss/designs/Latest Design/comp_Team3.sym} 820 -820 0 0 {name=x4}
C {/foss/designs/Latest Design/clkgen_Team3.sym} -230 -550 0 0 {name=x1}
