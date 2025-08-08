v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 560 -290 610 -290 {
lab=vout1}
N 320 -130 410 -130 {
lab=p1e}
N 390 -210 390 -180 {
lab=res}
N 390 -180 640 -180 {
lab=res}
N 640 -210 640 -180 {
lab=res}
N 810 -290 860 -290 {
lab=vout2}
N 810 -270 860 -270 {
lab=vmid2}
N 770 -150 1180 -150 {
lab=#net1}
N 640 -180 950 -180 {
lab=res}
N 950 -210 950 -180 {
lab=res}
N 90 -180 390 -180 {
lab=res}
N 90 -290 360 -290 {
lab=vin}
N 700 -110 970 -110 {
lab=p1}
N 410 -210 410 -130 {
lab=p1e}
N 680 -90 990 -90 {
lab=p2}
N 320 -70 660 -70 {
lab=p2e}
N 970 -210 970 -110 {
lab=p1}
N 990 -210 990 -90 {
lab=p2}
N 520 -210 520 -130 {
lab=#net2}
N 770 -210 770 -150 {
lab=#net1}
N 520 -130 1200 -130 {
lab=#net2}
N 430 -210 430 -110 {
lab=p1}
N 320 -110 430 -110 {
lab=p1}
N 450 -210 450 -90 {
lab=p2}
N 320 -90 450 -90 {
lab=p2}
N 660 -210 660 -70 {
lab=p2e}
N 680 -210 680 -90 {
lab=p2}
N 450 -90 680 -90 {
lab=p2}
N 700 -210 700 -110 {
lab=p1}
N 430 -110 700 -110 {
lab=p1}
N 410 -400 410 -370 {
lab=vssa}
N 660 -400 660 -370 {
lab=vssa}
N 410 -400 660 -400 {
lab=vssa}
N 90 -400 410 -400 {
lab=vssa}
N 960 -400 960 -350 {
lab=vssa}
N 660 -400 960 -400 {
lab=vssa}
N 430 -420 430 -370 {
lab=vdda}
N 90 -420 430 -420 {
lab=vdda}
N 680 -420 980 -420 {
lab=vdda}
N 980 -420 980 -350 {
lab=vdda}
N 680 -420 680 -370 {
lab=vdda}
N 430 -420 680 -420 {
lab=vdda}
N 450 -440 700 -440 {
lab=vlo}
N 700 -440 700 -370 {
lab=vlo}
N 720 -460 720 -370 {
lab=vhi}
N 470 -460 720 -460 {
lab=vhi}
N 450 -440 450 -370 {
lab=vlo}
N 90 -440 450 -440 {
lab=vlo}
N 470 -460 470 -370 {
lab=vhi}
N 90 -460 470 -460 {
lab=vhi}
N 90 -130 100 -130 {
lab=clkin}
N 1180 -300 1180 -150 {
lab=#net1}
N 1160 -300 1180 -300 {
lab=#net1}
N 1200 -280 1200 -130 {
lab=#net2}
N 1160 -280 1200 -280 {
lab=#net2}
N 1160 -260 1235 -260 {
lab=dout}
C {devices/title.sym} 170 0 0 0 {name=l1 author="Alex Montoya"}
C {devices/ipin.sym} 90 -130 0 0 {name=p1 lab=clkin}
C {devices/ipin.sym} 90 -180 0 0 {name=p2 lab=res}
C {devices/ipin.sym} 90 -290 0 0 {name=p3 lab=vin}
C {devices/ipin.sym} 90 -400 0 0 {name=p4 lab=vssa}
C {devices/ipin.sym} 90 -420 0 0 {name=p5 lab=vdda}
C {devices/ipin.sym} 90 -440 0 0 {name=p6 lab=vlo}
C {devices/ipin.sym} 90 -460 0 0 {name=p7 lab=vhi}
C {devices/opin.sym} 1235 -260 0 0 {name=p8 lab=dout}
C {devices/lab_wire.sym} 600 -290 0 0 {name=p9 sig_type=std_logic lab=vout1}
C {devices/lab_wire.sym} 850 -290 0 0 {name=p10 sig_type=std_logic lab=vout2}
C {devices/lab_wire.sym} 850 -270 0 0 {name=p11 sig_type=std_logic lab=vmid2}
C {devices/lab_wire.sym} 340 -130 0 1 {name=p12 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} 340 -110 0 1 {name=p13 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 340 -90 0 1 {name=p14 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 340 -70 0 1 {name=p15 sig_type=std_logic lab=p2e}
C {//foss/designs/EE628/5_Design/4_Layout/Team 1/xschem/comp_t1.sym} 1010 -280 0 0 {name=x1}
C {/foss/designs/EE628/5_Design/4_Layout/Team 1/xschem/clk_generator_t1.sym} 170 -100 0 0 {name=x2}
C {/foss/designs/EE628/5_Design/4_Layout/Team 1/xschem/stage_t1.sym} 500 -290 0 0 {name=x3}
C {/foss/designs/EE628/5_Design/4_Layout/Team 1/xschem/stage_t1.sym} 750 -290 0 0 {name=x4}
