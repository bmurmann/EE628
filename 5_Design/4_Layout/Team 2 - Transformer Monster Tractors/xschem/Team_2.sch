v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 930 -1130 1280 -1130 {
lab=vlo}
N 910 -1100 1260 -1100 {
lab=vhi}
N 1050 -610 1100 -610 {
lab=vout1}
N 1400 -610 1470 -610 {
lab=vout2}
N 1770 -610 1790 -610 {
lab=#net1}
N 1790 -610 1790 -440 {
lab=#net1}
N 1320 -440 1790 -440 {
lab=#net1}
N 1810 -590 1810 -420 {
lab=#net2}
N 1770 -590 1810 -590 {
lab=#net2}
N 400 -610 750 -610 {
lab=vin}
N 1210 -480 1590 -480 {
lab=res}
N 1590 -520 1590 -480 {
lab=res}
N 860 -480 1210 -480 {
lab=res}
N 750 -420 880 -420 {
lab=p1e}
N 900 -400 1270 -400 {
lab=p1}
N 920 -380 1250 -380 {
lab=p2}
N 750 -360 1230 -360 {
lab=p2e}
N 1270 -400 1610 -400 {
lab=p1}
N 1610 -520 1610 -400 {
lab=p1}
N 1250 -380 1630 -380 {
lab=p2}
N 1630 -520 1630 -380 {
lab=p2}
N 970 -420 1810 -420 {
lab=#net2}
N 400 -420 450 -420 {
lab=clkin}
N 1430 -590 1470 -590 {
lab=#net3}
N 970 -520 970 -420 {
lab=#net2}
N 1320 -520 1320 -440 {
lab=#net1}
N 1210 -520 1210 -480 {
lab=res}
N 1230 -520 1230 -360 {
lab=p2e}
N 1250 -520 1250 -380 {
lab=p2}
N 1270 -520 1270 -400 {
lab=p1}
N 860 -520 860 -480 {
lab=res}
N 400 -480 860 -480 {
lab=res}
N 880 -520 880 -420 {
lab=p1e}
N 900 -520 900 -400 {
lab=p1}
N 750 -400 900 -400 {
lab=p1}
N 920 -520 920 -380 {
lab=p2}
N 750 -380 920 -380 {
lab=p2}
N 870 -700 870 -680 {
lab=vssa}
N 400 -1040 870 -1040 {
lab=vssa}
N 890 -1070 890 -680 {
lab=vdda}
N 910 -1100 910 -680 {
lab=vhi}
N 400 -1100 910 -1100 {
lab=vhi}
N 930 -1130 930 -680 {
lab=vlo}
N 400 -1130 930 -1130 {
lab=vlo}
N 1220 -1040 1220 -680 {
lab=vssa}
N 870 -1040 1220 -1040 {
lab=vssa}
N 1240 -1070 1240 -680 {
lab=vdda}
N 1050 -1070 1240 -1070 {
lab=vdda}
N 1280 -1130 1280 -680 {
lab=vlo}
N 1590 -1040 1590 -660 {
lab=vssa}
N 1240 -1070 1610 -1070 {
lab=vdda}
N 1050 -750 1050 -700 {
lab=vssa}
N 1050 -790 1050 -780 {
lab=#net3}
N 1000 -750 1010 -750 {
lab=#net3}
N 1000 -840 1010 -840 {
lab=#net3}
N 1000 -790 1000 -750 {
lab=#net3}
N 1000 -790 1050 -790 {
lab=#net3}
N 1000 -840 1000 -790 {
lab=#net3}
N 1050 -810 1050 -790 {
lab=#net3}
N 1770 -570 1840 -570 {
lab=dout}
N 1220 -1040 1590 -1040 {
lab=vssa}
N 1610 -1070 1610 -660 {
lab=vdda}
N 1260 -1100 1260 -680 {
lab=vhi}
N 870 -700 1050 -700 {
lab=vssa}
N 870 -710 870 -700 {
lab=vssa}
N 1050 -1070 1050 -840 {
lab=vdda}
N 890 -1070 1050 -1070 {
lab=vdda}
N 410 -900 460 -900 {
lab=iovdd}
N 410 -830 460 -830 {
lab=vref}
N 1610 -1070 1750 -1070 {
lab=vdda}
N 690 -740 690 -710 {
lab=vssa}
N 690 -710 870 -710 {
lab=vssa}
N 870 -1040 870 -710 {
lab=vssa}
N 810 -1070 890 -1070 {
lab=vdda}
N 810 -1070 810 -850 {
lab=vdda}
N 760 -850 810 -850 {
lab=vdda}
N 1050 -790 1090 -790 {
lab=#net3}
N 1090 -790 1090 -590 {
lab=#net3}
N 1050 -590 1090 -590 {
lab=#net3}
N 1090 -790 1430 -790 {
lab=#net3}
N 1430 -790 1430 -590 {
lab=#net3}
N 1400 -590 1430 -590 {
lab=#net3}
C {devices/ipin.sym} 400 -420 0 0 {name=p24 lab=clkin}
C {devices/ipin.sym} 400 -480 0 0 {name=p25 lab=res}
C {devices/opin.sym} 1840 -570 0 0 {name=p12 lab=dout}
C {devices/ipin.sym} 400 -1130 0 0 {name=p2 lab=vlo}
C {devices/ipin.sym} 400 -1040 0 0 {name=p3 lab=vssa}
C {devices/ipin.sym} 400 -1100 0 0 {name=p4 lab=vhi}
C {devices/ipin.sym} 400 -610 0 0 {name=p1 lab=vin}
C {devices/lab_wire.sym} 800 -420 0 0 {name=p5 sig_type=std_logic lab=p1e

}
C {devices/lab_wire.sym} 800 -400 0 0 {name=p6 sig_type=std_logic lab=p1

}
C {devices/lab_wire.sym} 800 -380 0 0 {name=p7 sig_type=std_logic lab=p2

}
C {devices/lab_wire.sym} 800 -360 0 0 {name=p9 sig_type=std_logic lab=p2e

}
C {devices/lab_wire.sym} 1080 -610 0 0 {name=p10 sig_type=std_logic lab=vout1

}
C {devices/lab_wire.sym} 1450 -610 0 0 {name=p11 sig_type=std_logic lab=vout2

}
C {devices/lab_wire.sym} 480 -1040 0 1 {name=p15 sig_type=std_logic lab=vssa

}
C {sg13g2_pr/sg13_lv_pmos.sym} 1030 -840 0 0 {name=M2
L=1.5u
W=10u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1030 -750 2 1 {name=M5
L=1.5u
W=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {/foss/designs/Jie_Design/Stage_T2.sym} 900 -600 0 0 {name=x5}
C {/foss/designs/Jie_Design/comparator_latch_T2.sym} 1620 -590 0 0 {name=x2}
C {/foss/designs/Jie_Design/ClockGen_T2.sym} 600 -390 0 0 {name=x3}
C {/foss/designs/Jie_Design/Stage_T2.sym} 1250 -600 0 0 {name=x1}
C {devices/ipin.sym} 410 -900 0 0 {name=p19 lab=iovdd}
C {devices/ipin.sym} 410 -830 0 0 {name=p20 lab=vref}
C {/foss/designs/Test_Cases/LDO_TOP_T2.sym} 610 -810 0 0 {name=x4}
C {devices/iopin.sym} 1750 -1070 0 0 {name=p8 lab=vdda}
