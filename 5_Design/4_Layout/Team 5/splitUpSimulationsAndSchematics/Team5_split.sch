v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -860 390 -860 {
lab=dd}
N -1190 -530 -1120 -530 {
lab=clkin}
N -870 -1080 -250 -1080 {
lab=vssa}
N -250 -1080 160 -1080 {
lab=vssa}
N 160 -1080 160 -930 {
lab=vssa}
N 200 -1100 200 -930 {
lab=vdda}
N -230 -1100 200 -1100 {
lab=vdda}
N -230 -1100 -230 -930 {
lab=vdda}
N -860 -1100 -230 -1100 {
lab=vdda}
N -170 -1140 -160 -1140 {
lab=vhi}
N -200 -1120 -190 -1120 {
lab=vlo}
N -830 -690 -250 -690 {
lab=res}
N -250 -690 170 -690 {
lab=res}
N 170 -790 170 -690 {
lab=res}
N -810 -510 -190 -510 {
lab=p1}
N -800 -490 -210 -490 {
lab=p2}
N -820 -470 -230 -470 {
lab=p2e}
N -70 -870 -10 -870 {
lab=vout2}
N -10 -870 -10 -860 {
lab=vout2}
N -10 -860 30 -860 {
lab=vout2}
N -50 -880 -50 -840 {
lab=vmid2}
N -50 -880 30 -880 {
lab=vmid2}
N -190 -510 200 -510 {
lab=p1}
N 200 -790 200 -510 {
lab=p1}
N -210 -490 220 -490 {
lab=p2}
N 220 -790 220 -490 {
lab=p2}
N 330 -880 360 -880 {
lab=#net1}
N -130 -560 360 -560 {
lab=#net1}
N 360 -880 360 -560 {
lab=#net1}
N 380 -860 380 -530 {
lab=dd}
N -250 -1080 -250 -930 {
lab=vssa}
N -200 -1120 -200 -930 {
lab=vlo}
N -170 -1140 -170 -930 {
lab=vhi}
N -70 -840 -50 -840 {
lab=vmid2}
N -70 -870 -70 -860 {
lab=vout2}
N -130 -770 -130 -560 {
lab=#net1}
N -190 -770 -190 -510 {
lab=p1}
N -210 -770 -210 -490 {
lab=p2}
N -230 -770 -230 -470 {
lab=p2e}
N -250 -770 -250 -690 {
lab=res}
N 330 -860 380 -860 {
lab=dd}
N -840 -1140 -170 -1140 {
lab=vhi}
N -850 -1120 -200 -1120 {
lab=vlo}
N -160 -560 -130 -560 {
lab=#net1}
N -1180 -1020 -880 -1020 {
lab=vin}
N -880 -1020 -880 -940 {
lab=vin}
N -890 -940 -880 -940 {
lab=vin}
N -870 -1080 -870 -820 {
lab=vssa}
N -1180 -1080 -870 -1080 {
lab=vssa}
N -890 -820 -870 -820 {
lab=vssa}
N -860 -1100 -860 -880 {
lab=vdda}
N -1180 -1100 -860 -1100 {
lab=vdda}
N -890 -880 -860 -880 {
lab=vdda}
N -850 -1120 -850 -800 {
lab=vlo}
N -1180 -1120 -850 -1120 {
lab=vlo}
N -890 -800 -850 -800 {
lab=vlo}
N -840 -1140 -840 -920 {
lab=vhi}
N -1180 -1140 -840 -1140 {
lab=vhi}
N -890 -920 -840 -920 {
lab=vhi}
N -890 -980 -830 -980 {
lab=res}
N -830 -980 -830 -690 {
lab=res}
N -1180 -690 -830 -690 {
lab=res}
N -890 -840 -820 -840 {
lab=p1e}
N -820 -840 -820 -530 {
lab=p1e}
N -890 -960 -810 -960 {
lab=p1}
N -810 -960 -810 -510 {
lab=p1}
N -820 -510 -810 -510 {
lab=p1}
N -890 -860 -800 -860 {
lab=p2}
N -800 -860 -800 -490 {
lab=p2}
N -820 -490 -800 -490 {
lab=p2}
N -890 -900 -790 -900 {
lab=dd}
N -790 -900 -790 -530 {
lab=dd}
N -790 -530 380 -530 {
lab=dd}
N -890 -780 -760 -780 {
lab=#net2}
N -760 -980 -760 -780 {
lab=#net2}
N -760 -980 -440 -980 {
lab=#net2}
N -440 -980 -440 -910 {
lab=#net2}
N -450 -910 -440 -910 {
lab=#net2}
C {devices/ipin.sym} -1180 -1140 0 0 {name=p1 lab=vhi}
C {devices/ipin.sym} -1180 -1120 0 0 {name=p2 lab=vlo}
C {devices/ipin.sym} -1180 -1100 0 0 {name=p3 lab=vdda}
C {devices/ipin.sym} -1180 -1080 0 0 {name=p4 lab=vssa}
C {devices/ipin.sym} -1180 -1020 0 0 {name=p5 lab=vin}
C {devices/ipin.sym} -1180 -690 0 0 {name=p6 lab=res}
C {devices/opin.sym} 390 -860 0 0 {name=p8 lab=dd}
C {devices/ipin.sym} -1190 -530 0 0 {name=p7 lab=clkin}
C {devices/lab_wire.sym} -820 -570 0 0 {name=p9 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} -730 -510 0 0 {name=p10 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} -730 -490 0 0 {name=p11 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} -730 -470 0 0 {name=p12 sig_type=std_logic lab=p2e}
C {devices/lab_wire.sym} -60 -870 0 0 {name=p13 sig_type=std_logic lab=vout2}
C {devices/lab_wire.sym} -50 -840 0 0 {name=p14 sig_type=std_logic lab=vmid2}
C {/foss/designs/clock_5_splitTop.sym} -970 -500 0 0 {name=x4}
C {/foss/designs/integ_5_splitTop.sym} -210 -850 0 0 {name=x3}
C {/foss/designs/comp_5_splitTop.sym} 190 -860 0 0 {name=x1}
C {/foss/designs/layout/integ_5_splitTop.sym} -1040 -870 0 0 {name=x5}
C {/foss/designs/layout/integ_5_splitTop.sym} -600 -840 0 0 {name=x2}
