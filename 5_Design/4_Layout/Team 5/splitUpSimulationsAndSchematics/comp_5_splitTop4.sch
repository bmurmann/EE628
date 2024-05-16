v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 -580 20 -580 {
lab=VDD}
N -50 -520 20 -520 {
lab=VSS}
N 0 -560 20 -560 {
lab=#net1}
N 0 -560 -0 -490 {
lab=#net1}
N 10 -540 20 -540 {
lab=out1m}
N 10 -750 10 -540 {
lab=out1m}
N -350 -600 20 -600 {
lab=out1p}
N -350 -600 -350 -470 {
lab=out1p}
N 320 -490 320 -450 {
lab=#net1}
N -0 -490 320 -490 {
lab=#net1}
N -560 -750 10 -750 {
lab=out1m}
N -570 -470 -350 -470 {
lab=out1p}
C {devices/ipin.sym} 20 -450 0 0 {name=p15 lab=res}
C {devices/opin.sym} 320 -410 0 0 {name=p18 lab=dd}
C {devices/opin.sym} 320 -430 0 0 {name=p19 lab=d}
C {/foss/designs/comp_5_splitTop2.sym} 170 -560 0 1 {name=x6}
C {/foss/designs/comp_5_split4.sym} 170 -420 0 0 {name=x1}
C {devices/iopin.sym} -560 -750 2 0 {name=p5 lab=out1m}
C {devices/iopin.sym} -570 -470 2 0 {name=p7 lab=out1p}
C {devices/iopin.sym} -50 -580 2 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -50 -520 2 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 320 -390 2 1 {name=p3 lab=ps}
