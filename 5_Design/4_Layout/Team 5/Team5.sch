v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -980 -1380 -900 -1380 {
lab=vhi}
N -980 -1360 -900 -1360 {
lab=vlo}
N -910 -1340 -900 -1340 {
lab=vdda}
N -920 -1320 -900 -1320 {
lab=vssa}
N -980 -1300 -900 -1300 {
lab=vin}
N -930 -1280 -900 -1280 {
lab=res}
N -590 -1340 -540 -1340 {
lab=dd}
N -590 -1340 -590 -1110 {
lab=dd}
N -600 -1340 -590 -1340 {
lab=dd}
N -600 -1110 -590 -1110 {
lab=dd}
N -600 -1320 -580 -1320 {
lab=d}
N -580 -1320 -580 -1170 {
lab=d}
N -600 -1170 -580 -1170 {
lab=d}
N -600 -1360 -570 -1360 {
lab=vout2}
N -570 -1360 -570 -1130 {
lab=vout2}
N -600 -1130 -570 -1130 {
lab=vout2}
N -600 -1380 -560 -1380 {
lab=vmid}
N -560 -1380 -560 -1150 {
lab=vmid}
N -600 -1150 -560 -1150 {
lab=vmid}
N -600 -1300 -550 -1300 {
lab=#net1}
N -550 -1300 -550 -1030 {
lab=#net1}
N -600 -1030 -550 -1030 {
lab=#net1}
N -600 -1240 -540 -1240 {
lab=#net2}
N -540 -1240 -540 -1050 {
lab=#net2}
N -600 -1050 -540 -1050 {
lab=#net2}
N -600 -1280 -530 -1280 {
lab=#net3}
N -530 -1280 -530 -1070 {
lab=#net3}
N -600 -1070 -530 -1070 {
lab=#net3}
N -600 -1260 -520 -1260 {
lab=#net4}
N -520 -1260 -520 -1090 {
lab=#net4}
N -600 -1090 -520 -1090 {
lab=#net4}
N -910 -1340 -910 -1170 {
lab=vdda}
N -980 -1340 -910 -1340 {
lab=vdda}
N -910 -1170 -900 -1170 {
lab=vdda}
N -920 -1320 -920 -1150 {
lab=vssa}
N -980 -1320 -920 -1320 {
lab=vssa}
N -920 -1150 -900 -1150 {
lab=vssa}
N -930 -1280 -930 -1130 {
lab=res}
N -980 -1280 -930 -1280 {
lab=res}
N -930 -1130 -900 -1130 {
lab=res}
N -980 -1110 -900 -1110 {
lab=clkin}
C {devices/ipin.sym} -980 -1380 0 0 {name=p1 lab=vhi}
C {devices/ipin.sym} -980 -1360 0 0 {name=p2 lab=vlo}
C {devices/ipin.sym} -980 -1340 0 0 {name=p3 lab=vdda}
C {devices/ipin.sym} -980 -1320 0 0 {name=p4 lab=vssa}
C {devices/ipin.sym} -980 -1300 0 0 {name=p5 lab=vin}
C {devices/ipin.sym} -980 -1280 0 0 {name=p6 lab=res}
C {devices/opin.sym} -540 -1340 0 0 {name=p8 lab=dd}
C {devices/ipin.sym} -980 -1110 0 0 {name=p7 lab=clkin}
C {/foss/designs/Team5_split1.sym} -750 -1310 0 0 {name=x2}
C {/foss/designs/Team5_split2.sym} -750 -1100 0 0 {name=x1}
C {devices/lab_pin.sym} -570 -1360 0 1 {name=p9 sig_type=std_logic lab=vout2}
C {devices/lab_pin.sym} -580 -1380 0 1 {name=p10 sig_type=std_logic lab=vmid}
C {devices/lab_pin.sym} -580 -1320 0 1 {name=p11 sig_type=std_logic lab=d}
