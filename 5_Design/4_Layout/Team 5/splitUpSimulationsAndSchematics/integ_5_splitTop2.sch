v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 140 260 140 {
lab=#net1}
N 170 120 260 120 {
lab=vssa}
N 150 100 260 100 {
lab=pse}
N 160 80 260 80 {
lab=vx3}
N 150 60 260 60 {
lab=vx1}
N 150 40 260 40 {
lab=pr}
N 150 20 260 20 {
lab=vx4}
N 150 -100 260 -100 {
lab=vdda}
N 150 -80 160 -80 {
lab=vx3}
N 160 -80 160 80 {
lab=vx3}
N 150 80 160 80 {
lab=vx3}
N 150 -60 260 -60 {
lab=vout}
N 150 -40 170 -40 {
lab=vssa}
N 170 -40 170 120 {
lab=vssa}
N 150 120 170 120 {
lab=vssa}
N 150 -20 180 -20 {
lab=#net1}
N 180 -20 180 140 {
lab=#net1}
N 150 140 180 140 {
lab=#net1}
C {/foss/designs/integ_5_split3.sym} 0 -60 0 0 {name=x1}
C {/foss/designs/integ_5_split4.sym} 0 80 0 0 {name=x2}
C {devices/iopin.sym} 260 -100 0 0 {name=p1 lab=vdda}
C {devices/iopin.sym} 260 -60 0 0 {name=p2 lab=vout}
C {devices/iopin.sym} 260 20 0 0 {name=p3 lab=vx4}
C {devices/iopin.sym} 260 40 0 0 {name=p4 lab=pr}
C {devices/iopin.sym} 260 60 0 0 {name=p5 lab=vx1}
C {devices/iopin.sym} 260 80 0 0 {name=p6 lab=vx3}
C {devices/iopin.sym} 260 100 0 0 {name=p7 lab=pse}
C {devices/iopin.sym} 260 120 0 0 {name=p8 lab=vssa}
C {devices/iopin.sym} 260 140 0 0 {name=p9 lab=vmid}
