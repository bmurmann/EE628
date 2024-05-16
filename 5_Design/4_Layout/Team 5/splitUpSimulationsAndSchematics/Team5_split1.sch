v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1180 -860 -790 -860 {
lab=vin}
N -1180 -1080 -670 -1080 {
lab=vssa}
N -670 -1080 -250 -1080 {
lab=vssa}
N -230 -1100 -230 -930 {
lab=vdda}
N -650 -1100 -230 -1100 {
lab=vdda}
N -650 -1100 -650 -930 {
lab=vdda}
N -1180 -1100 -650 -1100 {
lab=vdda}
N -620 -1120 -200 -1120 {
lab=vlo}
N -590 -1140 -170 -1140 {
lab=vhi}
N -170 -1140 -160 -1140 {
lab=vhi}
N -200 -1120 -190 -1120 {
lab=vlo}
N -490 -870 -420 -870 {
lab=vout1}
N -420 -870 -420 -850 {
lab=vout1}
N -420 -850 -370 -850 {
lab=vout1}
N -1180 -690 -670 -690 {
lab=res}
N -670 -690 -250 -690 {
lab=res}
N -630 -510 -190 -510 {
lab=p1}
N -610 -490 -210 -490 {
lab=p2}
N -250 -1080 -250 -930 {
lab=vssa}
N -200 -1120 -200 -930 {
lab=vlo}
N -170 -1140 -170 -930 {
lab=vhi}
N -590 -1140 -590 -930 {
lab=vhi}
N -620 -1120 -620 -930 {
lab=vlo}
N -670 -1080 -670 -930 {
lab=vssa}
N -370 -860 -370 -850 {
lab=vout1}
N -490 -870 -490 -860 {
lab=vout1}
N -70 -840 -40 -840 {
lab=vinp}
N -190 -770 -190 -510 {
lab=p1}
N -210 -770 -210 -490 {
lab=p2}
N -230 -770 -230 -470 {
lab=p2e}
N -250 -770 -250 -690 {
lab=res}
N -650 -770 -650 -530 {
lab=p1e}
N -670 -770 -670 -690 {
lab=res}
N -630 -770 -630 -510 {
lab=p1}
N -610 -770 -610 -490 {
lab=p2}
N -1180 -1140 -590 -1140 {
lab=vhi}
N -1180 -1120 -620 -1120 {
lab=vlo}
N -690 -530 -650 -530 {
lab=p1e}
N -690 -510 -630 -510 {
lab=p1}
N -690 -470 -230 -470 {
lab=p2e}
N -690 -490 -610 -490 {
lab=p2}
N -70 -860 -40 -860 {
lab=vinm}
N -130 -770 -130 -730 {
lab=d}
N -550 -770 -550 -740 {
lab=dd}
C {devices/ipin.sym} -1180 -1140 0 0 {name=p1 lab=vhi}
C {devices/ipin.sym} -1180 -1120 0 0 {name=p2 lab=vlo}
C {devices/ipin.sym} -1180 -1100 0 0 {name=p3 lab=vdda}
C {devices/ipin.sym} -1180 -1080 0 0 {name=p4 lab=vssa}
C {devices/ipin.sym} -1180 -860 0 0 {name=p5 lab=vin}
C {devices/ipin.sym} -1180 -690 0 0 {name=p6 lab=res}
C {devices/lab_wire.sym} -430 -870 0 0 {name=p15 sig_type=std_logic lab=vout1}
C {/foss/designs/layout/integ_5_splitTop.sym} -630 -850 0 0 {name=x3}
C {/foss/designs/layout/integ_5_splitTop.sym} -210 -850 0 0 {name=x5}
C {devices/iopin.sym} -690 -510 0 1 {name=p16 lab=p1}
C {devices/iopin.sym} -690 -530 0 1 {name=p9 lab=p1e}
C {devices/iopin.sym} -690 -470 0 1 {name=p17 lab=p2e}
C {devices/iopin.sym} -690 -490 0 1 {name=p18 lab=p2}
C {devices/iopin.sym} -40 -840 0 0 {name=p7 lab=vinp}
C {devices/iopin.sym} -40 -860 0 0 {name=p10 lab=vinm}
C {devices/iopin.sym} -130 -730 1 0 {name=p11 lab=d}
C {devices/iopin.sym} -550 -740 1 0 {name=p12 lab=dd}
