v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1410 -570 -1240 -570 {
lab=vinp}
N -1560 -590 -1240 -590 {
lab=pc}
N -1380 -530 -1240 -530 {
lab=vinm}
N -1250 -550 -1240 -550 {
lab=ps}
N -940 -530 -900 -530 {
lab=vssa}
N -940 -590 -900 -590 {
lab=vdda}
N -940 -550 -930 -550 {
lab=out1p}
N -930 -550 -930 -370 {
lab=out1p}
N -940 -370 -930 -370 {
lab=out1p}
N -940 -570 -920 -570 {
lab=out1m}
N -920 -570 -920 -430 {
lab=out1m}
N -940 -430 -920 -430 {
lab=out1m}
N -1250 -550 -1250 -510 {
lab=ps}
N -1380 -550 -1250 -550 {
lab=ps}
N -1250 -510 -910 -510 {
lab=ps}
N -910 -510 -910 -310 {
lab=ps}
N -940 -310 -910 -310 {
lab=ps}
N -940 -410 -890 -410 {
lab=VDD}
N -940 -390 -890 -390 {
lab=VSS}
C {devices/ipin.sym} -1560 -590 0 0 {name=p2 lab=pc}
C {devices/iopin.sym} -900 -590 2 1 {name=p1 lab=vdda}
C {devices/iopin.sym} -900 -530 2 1 {name=p3 lab=vssa}
C {devices/ipin.sym} -1410 -570 0 0 {name=p13 lab=vinp}
C {devices/lab_wire.sym} -930 -460 0 0 {name=p4 sig_type=std_logic lab=out1p}
C {devices/lab_wire.sym} -920 -560 0 1 {name=p6 sig_type=std_logic lab=out1m}
C {devices/ipin.sym} -1380 -550 0 0 {name=p10 lab=ps}
C {devices/ipin.sym} -1380 -530 0 0 {name=p22 lab=vinm}
C {devices/vdd.sym} -890 -410 1 1 {name=l1 lab=VDD}
C {devices/vdd.sym} -890 -390 1 1 {name=l2 lab=VSS}
C {devices/ipin.sym} -1240 -430 0 0 {name=p15 lab=res}
C {devices/opin.sym} -940 -330 0 0 {name=p18 lab=dd}
C {devices/opin.sym} -940 -350 0 0 {name=p19 lab=d}
C {/foss/designs/comp_5_splitTop3.sym} -1090 -560 0 0 {name=x2}
C {/foss/designs/comp_5_splitTop4.sym} -1090 -370 0 0 {name=x1}
