v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 970 150 1070 150 {
lab=p2}
N 970 150 970 210 {
lab=p2}
N -520 220 -480 220 {
lab=nand_B2}
N -460 110 330 110 {
lab=nand_A2}
N -460 110 -460 200 {
lab=nand_A2}
N -520 200 -460 200 {
lab=nand_A2}
N -520 180 -10 180 {
lab=#net1}
N -10 80 -10 180 {
lab=#net1}
N -10 80 320 80 {
lab=#net1}
N 320 80 320 190 {
lab=#net1}
N 300 190 320 190 {
lab=#net1}
N 300 140 300 170 {
lab=nand_B1}
N -500 140 300 140 {
lab=nand_B1}
N 300 230 1070 230 {
lab=p2e}
N 1070 220 1070 230 {
lab=p2e}
N 300 210 970 210 {
lab=p2}
N -500 50 -500 140 {
lab=nand_B1}
N -480 50 -480 220 {
lab=nand_B2}
N 330 0 330 110 {
lab=nand_A2}
C {devices/opin.sym} 1070 150 0 0 {name=p6 lab=p2}
C {devices/opin.sym} 1070 220 0 0 {name=p7 lab=p2e}
C {/foss/designs/clock_5_split2.sym} 150 200 0 0 {name=x2}
C {/foss/designs/clock_5_split4.sym} -670 200 0 0 {name=x4}
C {devices/iopin.sym} -480 50 0 0 {name=p3 lab=nand_B2}
C {devices/iopin.sym} -500 50 2 0 {name=p8 lab=nand_B1}
C {devices/iopin.sym} 330 0 0 0 {name=p9 lab=nand_A2}
