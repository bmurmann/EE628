v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -20 180 -20 {
lab=vout1}
N 480 -30 540 -30 {
lab=vout2}
N 480 -10 540 -10 {
lab=vmid2}
N 340 -240 340 -100 {
lab=vlo}
N 10 -240 340 -240 {
lab=vlo}
N 360 -260 360 -100 {
lab=vhi}
N 30 -260 360 -260 {
lab=vhi}
N 320 -220 320 -100 {
lab=vdda}
N -10 -220 320 -220 {
lab=vdda}
N 300 -200 300 -100 {
lab=vssa}
N -30 -200 300 -200 {
lab=vssa}
N 30 -260 30 -90 {
lab=vhi}
N 10 -240 10 -90 {
lab=vlo}
N -10 -220 -10 -90 {
lab=vdda}
N -30 -200 -30 -90 {
lab=vssa}
N -420 170 -380 170 {
lab=clkin}
N -420 -10 -150 -10 {
lab=vin}
N -420 -200 -30 -200 {
lab=vssa}
N -420 -220 -10 -220 {
lab=vdda}
N -420 -240 10 -240 {
lab=vlo}
N -420 -260 30 -260 {
lab=vhi}
N -60 70 -60 170 {
lab=p1e}
N -80 170 -60 170 {
lab=p1e}
N 270 60 270 230 {
lab=p2e}
N -80 230 270 230 {
lab=p2e}
N -20 70 -20 210 {
lab=p2}
N -80 210 -20 210 {
lab=p2}
N -40 70 -40 190 {
lab=p1}
N -80 190 -40 190 {
lab=p1}
N -80 70 -80 130 {
lab=res}
N -420 130 -80 130 {
lab=res}
N 250 60 250 130 {
lab=res}
N -80 130 250 130 {
lab=res}
N 310 60 310 190 {
lab=p1}
N -40 190 310 190 {
lab=p1}
N 290 60 290 210 {
lab=p2}
N -20 210 290 210 {
lab=p2}
N 380 150 870 150 {
lab=#net1}
N 380 60 380 150 {
lab=#net1}
N 50 170 890 170 {
lab=#net2}
N 50 70 50 170 {
lab=#net2}
N 870 -40 870 150 {
lab=#net1}
N 300 -200 690 -200 {
lab=vssa}
N 320 -220 710 -220 {
lab=vdda}
N 680 50 680 130 {
lab=res}
N 250 130 680 130 {
lab=res}
N 700 50 700 190 {
lab=p1}
N 310 190 700 190 {
lab=p1}
N 720 50 720 210 {
lab=p2}
N 290 210 720 210 {
lab=p2}
N 840 -20 890 -20 {
lab=#net2}
N 890 -20 890 170 {
lab=#net2}
N 840 -40 870 -40 {
lab=#net1}
N 840 0 930 -0 {
lab=dout}
N 710 -220 710 -90 {
lab=vdda}
N 690 -200 690 -90 {
lab=vssa}
C {devices/ipin.sym} -420 -260 0 0 {name=p9 lab=vhi}
C {devices/ipin.sym} -420 -240 0 0 {name=p1 lab=vlo
}
C {devices/ipin.sym} -420 -220 0 0 {name=p2 lab=vdda}
C {devices/ipin.sym} -420 -200 0 0 {name=p3 lab=vssa}
C {devices/ipin.sym} -420 -10 0 0 {name=p4 lab=vin}
C {devices/ipin.sym} -420 130 0 0 {name=p5 lab=res
}
C {devices/ipin.sym} -420 170 0 0 {name=p6 lab=clkin
}
C {devices/lab_wire.sym} 530 -10 0 0 {name=p7 sig_type=std_logic lab=vmid2}
C {devices/lab_pin.sym} 510 -30 1 0 {name=p10 sig_type=std_logic lab=vout2}
C {devices/lab_pin.sym} 170 -20 1 0 {name=p8 sig_type=std_logic lab=vout1}
C {devices/lab_wire.sym} 20 190 0 0 {name=p12 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} -60 170 0 0 {name=p14 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} 20 230 0 0 {name=p15 sig_type=std_logic lab=p2e}
C {devices/lab_wire.sym} 20 210 0 0 {name=p16 sig_type=std_logic lab=p2}
C {devices/opin.sym} 930 0 0 0 {name=p11 lab=dout}
C {/foss/designs/comp_t4.sym} 690 -20 0 0 {name=x1}
C {/foss/designs/stage_t4.sym} 0 -10 0 0 {name=x2}
C {/foss/designs/stage_t4.sym} 330 -20 0 0 {name=x3}
C {/foss/designs/clkgen_t4.sym} -230 200 0 0 {name=x4}
