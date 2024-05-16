v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 190 220 190 {
lab=pr}
N 90 150 220 150 {
lab=vdda}
N 110 130 220 130 {
lab=vx1}
N 60 210 220 210 {
lab=vssa}
N 60 230 220 230 {
lab=vlo}
N 60 -80 70 -80 {
lab=psb}
N 70 -80 70 170 {
lab=psb}
N 60 170 70 170 {
lab=psb}
N 60 -60 220 -60 {
lab=vhi}
N 60 -40 80 -40 {
lab=d}
N 80 -40 80 60 {
lab=d}
N -260 60 80 60 {
lab=d}
N -260 60 -260 130 {
lab=d}
N -260 130 -240 130 {
lab=d}
N -340 130 -260 130 {
lab=d}
N -340 110 -240 110 {
lab=vin}
N -260 -80 -240 -80 {
lab=ps}
N -260 -80 -260 40 {
lab=ps}
N -340 -80 -260 -80 {
lab=ps}
N -260 40 60 40 {
lab=ps}
N 60 40 60 110 {
lab=ps}
N 60 -20 90 -20 {
lab=vdda}
N 90 -20 90 150 {
lab=vdda}
N 60 150 90 150 {
lab=vdda}
N 60 0 100 -0 {
lab=pr}
N 100 -0 100 190 {
lab=pr}
N 60 190 100 190 {
lab=pr}
N 60 20 110 20 {
lab=vx1}
N 110 20 110 130 {
lab=vx1}
N 60 130 110 130 {
lab=vx1}
C {/foss/designs/integ_5_split1.sym} -90 -30 0 0 {name=x1}
C {/foss/designs/integ_5_split2.sym} -90 170 0 0 {name=x2}
C {devices/iopin.sym} -340 130 0 1 {name=p1 lab=d}
C {devices/iopin.sym} -340 110 0 1 {name=p2 lab=vin}
C {devices/iopin.sym} -340 -80 0 1 {name=p3 lab=ps}
C {devices/iopin.sym} 220 -60 0 0 {name=p4 lab=vhi}
C {devices/iopin.sym} 220 130 0 0 {name=p5 lab=vx1}
C {devices/iopin.sym} 220 150 0 0 {name=p6 lab=vdda}
C {devices/iopin.sym} 220 190 0 0 {name=p8 lab=pr}
C {devices/iopin.sym} 220 210 0 0 {name=p9 lab=vssa}
C {devices/iopin.sym} 220 230 0 0 {name=p10 lab=vlo}
