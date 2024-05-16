v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 20 110 20 {
lab=VDD}
N 70 100 110 100 {
lab=VSS}
N 50 -110 60 -110 {
lab=VDD}
N 60 -110 60 20 {
lab=VDD}
N 50 20 60 20 {
lab=VDD}
N 50 -30 70 -30 {
lab=VSS}
N 70 -30 70 100 {
lab=VSS}
N 50 100 70 100 {
lab=VSS}
N 50 -50 140 -50 {
lab=out1m}
N 50 -70 80 -70 {
lab=#net1}
N 80 -70 80 40 {
lab=#net1}
N 50 40 80 40 {
lab=#net1}
N 50 -90 90 -90 {
lab=d_inv}
N 90 -90 90 60 {
lab=d_inv}
N 50 60 90 60 {
lab=d_inv}
N 50 80 120 80 {
lab=in}
N 90 60 120 60 {
lab=d_inv}
C {/foss/designs/comp_5_split2.sym} -100 60 0 0 {name=x1}
C {/foss/designs/comp_5_split2.sym} -100 -70 0 0 {name=x5}
C {devices/iopin.sym} 110 20 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 120 60 0 0 {name=p2 lab=d_inv}
C {devices/iopin.sym} 110 100 0 0 {name=p5 lab=VSS}
C {devices/iopin.sym} 140 -50 0 0 {name=p8 lab=out1m}
C {devices/iopin.sym} 120 80 0 0 {name=p10 lab=in}
