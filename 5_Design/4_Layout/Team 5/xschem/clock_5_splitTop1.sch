v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -40 -80 30 -80 {
lab=nand_B2}
N -40 -60 10 -60 {
lab=nand_B1}
N 310 -200 310 -100 {
lab=#net1}
N 300 -200 310 -200 {
lab=#net1}
N 300 -160 330 -160 {
lab=nand_A2}
N 10 -60 10 50 {
lab=nand_B1}
N 30 -80 30 50 {
lab=nand_B2}
N 330 -160 330 0 {
lab=nand_A2}
N -460 -100 -340 -100 {
lab=clkin}
N -40 -100 310 -100 {
lab=#net1}
N 300 -180 360 -180 {}
N 300 -220 360 -220 {}
C {devices/ipin.sym} -460 -100 0 0 {name=p1 lab=clkin
}
C {devices/opin.sym} 360 -220 0 0 {name=p4 lab=p1e}
C {devices/opin.sym} 360 -180 0 0 {name=p5 lab=p1}
C {/foss/designs/clock_5_split1.sym} 150 -190 0 0 {name=x1}
C {/foss/designs/clock_5_split3.sym} -190 -80 0 0 {name=x3}
C {devices/iopin.sym} 30 50 0 0 {name=p3 lab=nand_B2}
C {devices/iopin.sym} 10 50 2 0 {name=p8 lab=nand_B1}
C {devices/iopin.sym} 330 0 0 0 {name=p9 lab=nand_A2}
