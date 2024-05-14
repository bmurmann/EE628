v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 470 -190 490 -190 {
lab=clk}
N 890 -570 1270 -570 {
lab=vhi}
N 870 -550 1250 -550 {
lab=vlo}
N 1630 -530 1630 -450 {
lab=vdda}
N 1230 -530 1630 -530 {
lab=vdda}
N 1610 -510 1610 -450 {
lab=vssa}
N 470 -390 710 -390 {
lab=vin}
N 1390 -390 1470 -390 {
lab=vout2}
N 1390 -370 1470 -370 {
lab=vmid2}
N 1160 -270 1610 -270 {
lab=res}
N 790 -190 800 -190 {
lab=p1e}
N 790 -130 1180 -130 {
lab=p2e}
N 1220 -170 1630 -170 {
lab=p1}
N 1200 -150 1650 -150 {
lab=p2}
N 1770 -400 1780 -400 {
lab=#net1}
N 1780 -400 1780 -230 {
lab=#net1}
N 1320 -230 1780 -230 {
lab=#net1}
N 1810 -380 1810 -190 {
lab=#net2}
N 1770 -380 1810 -380 {
lab=#net2}
N 940 -190 1810 -190 {
lab=#net2}
N 830 -510 830 -460 {
lab=vssa}
N 470 -510 830 -510 {
lab=vssa}
N 850 -530 850 -460 {
lab=vdda}
N 470 -530 850 -530 {
lab=vdda}
N 870 -550 870 -460 {
lab=vlo}
N 470 -550 870 -550 {
lab=vlo}
N 890 -570 890 -460 {
lab=vhi}
N 470 -570 890 -570 {
lab=vhi}
N 1210 -510 1210 -460 {
lab=vssa}
N 830 -510 1210 -510 {
lab=vssa}
N 1230 -530 1230 -460 {
lab=vdda}
N 850 -530 1230 -530 {
lab=vdda}
N 1250 -550 1250 -460 {
lab=vlo}
N 1270 -570 1270 -460 {
lab=vhi}
N 1010 -390 1090 -390 {
lab=vout1}
N 780 -300 780 -270 {
lab=res}
N 470 -270 780 -270 {
lab=res}
N 800 -300 800 -190 {
lab=p1e}
N 820 -300 820 -170 {
lab=p1}
N 790 -170 820 -170 {
lab=p1}
N 840 -300 840 -150 {
lab=p2}
N 790 -150 840 -150 {
lab=p2}
N 940 -300 940 -190 {
lab=#net2}
N 1160 -300 1160 -270 {
lab=res}
N 780 -270 1160 -270 {
lab=res}
N 1180 -300 1180 -130 {
lab=p2e}
N 1200 -300 1200 -150 {
lab=p2}
N 840 -150 1200 -150 {
lab=p2}
N 1220 -300 1220 -170 {
lab=p1}
N 820 -170 1220 -170 {
lab=p1}
N 1320 -300 1320 -230 {
lab=#net1}
N 1610 -310 1610 -270 {
lab=res}
N 1630 -310 1630 -170 {
lab=p1}
N 1650 -310 1650 -150 {
lab=p2}
N 1210 -510 1610 -510 {
lab=vssa}
N 1770 -360 1830 -360 {
lab=dout}
C {devices/ipin.sym} 470 -550 0 0 {name=p9 lab=vlo}
C {devices/ipin.sym} 470 -530 0 0 {name=p10 lab=vdda}
C {devices/ipin.sym} 470 -510 0 0 {name=p11 lab=vssa}
C {devices/ipin.sym} 470 -390 0 0 {name=p19 lab=vin}
C {devices/ipin.sym} 470 -570 0 0 {name=p20 lab=vhi}
C {devices/ipin.sym} 470 -270 0 0 {name=p21 lab=res}
C {devices/ipin.sym} 470 -190 0 0 {name=p22 lab=clk}
C {devices/opin.sym} 1830 -360 0 0 {name=p23 lab=dout}
C {devices/lab_pin.sym} 1050 -390 1 0 {name=p24 sig_type=std_logic lab=vout1}
C {devices/lab_pin.sym} 1430 -390 1 0 {name=p25 sig_type=std_logic lab=vout2}
C {devices/lab_pin.sym} 1430 -370 1 1 {name=p26 sig_type=std_logic lab=vmid2}
C {devices/lab_pin.sym} 840 -210 2 0 {name=p27 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 800 -230 2 1 {name=p28 sig_type=std_logic lab=p1e}
C {devices/lab_pin.sym} 1630 -210 2 1 {name=p29 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 1180 -210 2 1 {name=p30 sig_type=std_logic lab=p2e}
C {/foss/designs/ee628/stage_T6.sym} 860 -380 0 0 {name=x1}
C {/foss/designs/ee628/stage_T6.sym} 1240 -380 0 0 {name=x2}
C {/foss/designs/ee628/comparator_T6.sym} 1620 -380 0 0 {name=x3}
C {/foss/designs/ee628/clkgen_T6.sym} 640 -160 0 0 {name=x4}
