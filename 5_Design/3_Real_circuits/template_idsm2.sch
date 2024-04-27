v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {p1: Stage 1 samples, stage 2 redistributes, comparator samples, dd toggles (used by stage 1 during p2)
p2: Stage 2 samples, stage 1 redistributes, comparator decides, d toggles (used by stage 2 during p1)} -1350 -680 0 0 0.4 0.4 {}
N -1040 -290 -1040 -260 {
lab=res}
N -1020 -290 -1020 -200 {
lab=p1e}
N -1000 -290 -1000 -180 {
lab=p1}
N -980 -290 -980 -160 {
lab=p2}
N -1090 -200 -1020 -200 {
lab=p1e}
N -1090 -180 -1000 -180 {
lab=p1}
N -1090 -160 -980 -160 {
lab=p2}
N -1420 -200 -1390 -200 {
lab=clkin}
N -1420 -260 -1040 -260 {
lab=res}
N -810 -400 -770 -400 {
lab=vout1}
N -1040 -260 -700 -260 {
lab=res}
N -700 -290 -700 -260 {
lab=res}
N -1090 -140 -680 -140 {
lab=p2e}
N -680 -290 -680 -140 {
lab=p2e}
N -980 -160 -660 -160 {
lab=p2}
N -660 -290 -660 -160 {
lab=p2}
N -1000 -180 -640 -180 {
lab=p1}
N -640 -290 -640 -180 {
lab=p1}
N -470 -400 -430 -400 {
lab=vout2}
N -470 -380 -430 -380 {
lab=vmid2}
N -700 -260 -300 -260 {
lab=res}
N -300 -320 -300 -260 {
lab=res}
N -640 -180 -280 -180 {
lab=p1}
N -280 -320 -280 -180 {
lab=p1}
N -260 -320 -260 -160 {
lab=p2}
N -660 -160 -260 -160 {
lab=p2}
N -880 -290 -880 -200 {
lab=#net1}
N -110 -410 -110 -220 {
lab=#net2}
N -540 -290 -540 -220 {
lab=#net2}
N -1420 -400 -1110 -400 {
lab=vin}
N -990 -530 -990 -490 {
lab=vssa}
N -1420 -530 -990 -530 {
lab=vssa}
N -650 -530 -300 -530 {
lab=vssa}
N -300 -530 -300 -460 {
lab=vssa}
N -630 -550 -280 -550 {
lab=vdda}
N -970 -550 -970 -490 {
lab=vdda}
N -1420 -550 -970 -550 {
lab=vdda}
N -950 -570 -950 -490 {
lab=vlo}
N -1420 -570 -950 -570 {
lab=vlo}
N -930 -590 -930 -490 {
lab=vhi}
N -1420 -590 -930 -590 {
lab=vhi}
N -650 -530 -650 -490 {
lab=vssa}
N -630 -550 -630 -490 {
lab=vdda}
N -610 -570 -610 -490 {
lab=vlo}
N -590 -590 -590 -490 {
lab=vhi}
N -990 -530 -650 -530 {
lab=vssa}
N -970 -550 -630 -550 {
lab=vdda}
N -950 -570 -610 -570 {
lab=vlo}
N -930 -590 -590 -590 {
lab=vhi}
N -280 -550 -280 -460 {
lab=vdda}
N -130 -390 -90 -390 {
lab=#net1}
N -880 -200 -90 -200 {
lab=#net1}
N -130 -410 -110 -410 {
lab=#net2}
N -540 -220 -110 -220 {
lab=#net2}
N -90 -390 -90 -200 {
lab=#net1}
N -130 -370 -70 -370 {
lab=dout}
C {devices/title.sym} -1160 -40 0 0 {name=l5 author="Boris Murmann"}
C {template_clkgen.sym} -1240 -170 0 0 {name=x4}
C {devices/lab_wire.sym} -1040 -160 0 0 {name=p7 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} -1040 -180 0 0 {name=p8 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} -1040 -200 0 0 {name=p9 sig_type=std_logic lab=p1e}
C {template_stage.sym} -960 -390 0 0 {name=x1}
C {devices/ipin.sym} -1420 -200 0 0 {name=p1 lab=clkin}
C {devices/ipin.sym} -1420 -260 0 0 {name=p2 lab=res}
C {devices/ipin.sym} -1420 -400 0 0 {name=p3 lab=vin}
C {template_stage.sym} -620 -390 0 0 {name=x2}
C {devices/lab_wire.sym} -1040 -140 0 0 {name=p4 sig_type=std_logic lab=p2e}
C {devices/lab_wire.sym} -780 -400 0 0 {name=p5 sig_type=std_logic lab=vout1}
C {template_comp.sym} -280 -390 0 0 {name=x3}
C {devices/lab_wire.sym} -440 -400 0 0 {name=p6 sig_type=std_logic lab=vout2}
C {devices/lab_wire.sym} -440 -380 0 0 {name=p10 sig_type=std_logic lab=vmid2}
C {devices/opin.sym} -70 -370 0 0 {name=p11 lab=dout}
C {devices/ipin.sym} -1420 -530 0 0 {name=p12 lab=vssa}
C {devices/ipin.sym} -1420 -550 0 0 {name=p13 lab=vdda}
C {devices/ipin.sym} -1420 -570 0 0 {name=p14 lab=vlo}
C {devices/ipin.sym} -1420 -590 0 0 {name=p15 lab=vhi}
C {devices/noconn.sym} -810 -380 0 1 {name=l1}
