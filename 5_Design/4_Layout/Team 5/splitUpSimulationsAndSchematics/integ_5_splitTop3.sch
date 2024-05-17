v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1390 -1130 -1240 -1130 {
lab=ps}
N -1600 -1070 -1240 -1070 {
lab=d}
N -1280 -1090 -1240 -1090 {
lab=vin}
N -1260 -1050 -1260 -720 {
lab=#net1}
N -1260 -1050 -1240 -1050 {
lab=#net1}
N -1390 -1110 -1240 -1110 {
lab=vhi}
N -1320 -1030 -1240 -1030 {
lab=vdda}
N -1260 -720 -1240 -720 {
lab=#net1}
N -1360 -990 -1250 -990 {
lab=vssa}
N -1250 -660 -1240 -660 {
lab=vssa}
N -1270 -1010 -1240 -1010 {
lab=pr}
N -1270 -740 -1240 -740 {
lab=pr}
N -1280 -760 -1240 -760 {
lab=vx4}
N -1320 -800 -1240 -800 {
lab=vdda}
N -1320 -1030 -1320 -800 {
lab=vdda}
N -1360 -1030 -1320 -1030 {
lab=vdda}
N -1280 -700 -1240 -700 {
lab=vx3}
N -1320 -680 -1240 -680 {
lab=pse}
N -1360 -780 -1240 -780 {
lab=#net2}
N -1270 -1010 -1270 -740 {
lab=pr}
N -1290 -1010 -1270 -1010 {
lab=pr}
N -1250 -990 -1250 -660 {
lab=vssa}
N -1250 -990 -1240 -990 {
lab=vssa}
N -1360 -970 -1240 -970 {
lab=vlo}
C {devices/ipin.sym} -1320 -680 0 0 {name=p2 lab=pse}
C {devices/ipin.sym} -1290 -1010 0 0 {name=p4 lab=pr}
C {devices/iopin.sym} -1360 -990 0 1 {name=p9 lab=vssa}
C {devices/ipin.sym} -1600 -1070 0 0 {name=p28 lab=d}
C {devices/iopin.sym} -1360 -970 0 1 {name=p29 lab=vlo}
C {devices/ipin.sym} -1280 -1090 0 0 {name=p34 lab=vin}
C {devices/iopin.sym} -1390 -1110 0 1 {name=p7 lab=vhi}
C {/foss/designs/layout/integ_5_splitTop1.sym} -1090 -1050 0 1 {name=x1}
C {/foss/designs/layout/integ_5_splitTop2.sym} -1090 -720 0 1 {name=x2}
C {devices/iopin.sym} -1360 -1030 0 1 {name=p15 lab=vdda}
C {devices/iopin.sym} -1390 -1130 0 1 {name=p6 lab=ps}
C {devices/iopin.sym} -1240 -640 0 1 {name=p8 lab=vmid}
C {devices/iopin.sym} -1280 -700 0 1 {name=p10 lab=vx3}
C {devices/iopin.sym} -1280 -760 0 1 {name=p3 lab=vx4}
C {devices/iopin.sym} -1360 -780 0 1 {name=p1 lab=vout}
