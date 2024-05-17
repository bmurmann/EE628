v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1190 -530 -1120 -530 {
lab=clkin}
N -1180 -1080 160 -1080 {
lab=vssa}
N 160 -1080 160 -930 {
lab=vssa}
N 200 -1100 200 -930 {
lab=vdda}
N -1180 -1100 200 -1100 {
lab=vdda}
N -1180 -690 170 -690 {
lab=res}
N 170 -790 170 -690 {
lab=res}
N -820 -530 -650 -530 {
lab=p1e}
N -630 -510 200 -510 {
lab=p1}
N -610 -490 220 -490 {
lab=p2}
N -820 -470 -230 -470 {
lab=p2e}
N 200 -790 200 -510 {
lab=p1}
N 220 -790 220 -490 {
lab=p2}
N -10 -860 30 -860 {
lab=vinm}
N -10 -880 30 -880 {
lab=vinp}
N -610 -590 -610 -490 {
lab=p2}
N -820 -490 -610 -490 {
lab=p2}
N -630 -590 -630 -510 {
lab=p1}
N -820 -510 -630 -510 {
lab=p1}
N -650 -590 -650 -530 {
lab=p1e}
N -230 -590 -230 -470 {
lab=p2e}
N 330 -880 360 -880 {
lab=d}
N 330 -860 390 -860 {
lab=dd}
C {devices/ipin.sym} -1180 -1100 0 0 {name=p3 lab=vdda}
C {devices/ipin.sym} -1180 -1080 0 0 {name=p4 lab=vssa}
C {devices/ipin.sym} -1180 -690 0 0 {name=p6 lab=res}
C {devices/ipin.sym} -1190 -530 0 0 {name=p7 lab=clkin}
C {devices/lab_wire.sym} -730 -530 0 0 {name=p9 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} -730 -510 0 0 {name=p10 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} -730 -490 0 0 {name=p11 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} -730 -470 0 0 {name=p12 sig_type=std_logic lab=p2e}
C {/foss/designs/comp_5_splitTop.sym} 190 -860 0 0 {name=x1}
C {/foss/designs/clock_5_splitTop.sym} -970 -500 0 0 {name=x4}
C {devices/iopin.sym} -10 -880 0 1 {name=p16 lab=vinp}
C {devices/iopin.sym} -10 -860 0 1 {name=p17 lab=vinm}
C {devices/iopin.sym} -650 -590 1 1 {name=p13 lab=p1e}
C {devices/iopin.sym} -630 -590 1 1 {name=p14 lab=p1}
C {devices/iopin.sym} -610 -590 1 1 {name=p18 lab=p2}
C {devices/iopin.sym} -230 -590 1 1 {name=p19 lab=p2e}
C {devices/iopin.sym} 360 -880 2 1 {name=p1 lab=d}
C {devices/iopin.sym} 390 -860 2 1 {name=p2 lab=dd}
