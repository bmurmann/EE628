v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 930 -800 1280 -800 {
lab=vlo}
N 910 -770 1260 -770 {
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
N 1440 -590 1470 -590 {
lab=vmid}
N 1440 -460 1440 -230 {
lab=vmid}
N 1400 -590 1440 -590 {
lab=vmid}
N 1050 -460 1440 -460 {
lab=vmid}
N 1440 -590 1440 -460 {
lab=vmid}
N 1050 -590 1050 -460 {
lab=vmid}
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
N 870 -710 870 -680 {
lab=vssa}
N 400 -710 870 -710 {
lab=vssa}
N 890 -740 890 -680 {
lab=vdda}
N 400 -740 890 -740 {
lab=vdda}
N 910 -770 910 -680 {
lab=vhi}
N 400 -770 910 -770 {
lab=vhi}
N 930 -800 930 -680 {
lab=vlo}
N 400 -800 930 -800 {
lab=vlo}
N 1220 -710 1220 -680 {
lab=vssa}
N 870 -710 1220 -710 {
lab=vssa}
N 1240 -740 1240 -680 {
lab=vdda}
N 890 -740 1240 -740 {
lab=vdda}
N 1260 -770 1260 -680 {
lab=vhi}
N 1280 -800 1280 -680 {
lab=vlo}
N 1590 -710 1590 -660 {
lab=vssa}
N 1240 -740 1610 -740 {
lab=vdda}
N 1230 -340 1230 -280 {
lab=vdda}
N 1230 -190 1230 -140 {
lab=vssa}
N 1230 -230 1230 -220 {
lab=vmid}
N 1180 -190 1190 -190 {
lab=vmid}
N 1180 -280 1190 -280 {
lab=vmid}
N 1180 -230 1180 -190 {
lab=vmid}
N 1180 -230 1230 -230 {
lab=vmid}
N 1180 -280 1180 -230 {
lab=vmid}
N 1230 -250 1230 -230 {
lab=vmid}
N 1230 -230 1440 -230 {
lab=vmid}
N 1770 -570 1840 -570 {
lab=dout}
N 1220 -710 1590 -710 {
lab=vssa}
N 1610 -740 1610 -660 {
lab=vdda}
C {devices/ipin.sym} 400 -420 0 0 {name=p24 lab=clkin}
C {devices/ipin.sym} 400 -480 0 0 {name=p25 lab=res}
C {devices/opin.sym} 1840 -570 0 0 {name=p12 lab=dout}
C {devices/ipin.sym} 400 -800 0 0 {name=p2 lab=vlo}
C {devices/ipin.sym} 400 -710 0 0 {name=p3 lab=vssa}
C {devices/ipin.sym} 400 -770 0 0 {name=p4 lab=vhi}
C {devices/ipin.sym} 400 -740 0 0 {name=p8 lab=vdda}
C {devices/ipin.sym} 400 -610 0 0 {name=p1 lab=vin}
C {devices/lab_wire.sym} 1440 -300 0 1 {name=p19 sig_type=std_logic lab=vmid

}
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
C {devices/lab_wire.sym} 480 -740 0 0 {name=p13 sig_type=std_logic lab=vdda

}
C {devices/lab_wire.sym} 480 -710 0 1 {name=p15 sig_type=std_logic lab=vssa

}
C {sg13g2_pr/sg13_lv_pmos.sym} 1210 -280 0 0 {name=M2
L=1.5u
W=10u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1210 -190 2 1 {name=M5
L=1.5u
W=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 1230 -340 0 0 {name=p18 sig_type=std_logic lab=vdda

}
C {devices/lab_wire.sym} 1230 -140 0 0 {name=p14 sig_type=std_logic lab=vssa

}
C {/foss/designs/Jie_Design/Stage_T2.sym} 900 -600 0 0 {name=x5}
C {/foss/designs/Jie_Design/comparator_latch_T2.sym} 1620 -590 0 0 {name=x2}
C {/foss/designs/Jie_Design/ClockGen_T2.sym} 600 -390 0 0 {name=x3}
C {/foss/designs/Jie_Design/Stage_T2.sym} 1250 -600 0 0 {name=x1}
