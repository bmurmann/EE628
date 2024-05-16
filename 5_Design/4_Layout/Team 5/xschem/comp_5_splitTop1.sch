v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -170 -100 -160 -100 {
lab=pc}
N -220 -80 -160 -80 {
lab=vinp}
N 160 -100 190 -100 {
lab=vdda}
N 150 -40 190 -40 {
lab=vssa}
N 150 -40 150 90 {
lab=vssa}
N 140 -40 150 -40 {
lab=vssa}
N 140 90 150 90 {
lab=vssa}
N -230 50 -160 50 {
lab=vinm_samp}
N 160 -100 160 30 {
lab=vdda}
N 140 -100 160 -100 {
lab=vdda}
N 140 30 160 30 {
lab=vdda}
N -170 30 -160 30 {
lab=pc}
N -170 -100 -170 30 {
lab=pc}
N -220 -100 -170 -100 {
lab=pc}
N 170 -60 190 -60 {
lab=out1p}
N 140 -60 170 -60 {
lab=out1p}
N 180 -80 190 -80 {
lab=out1m}
N 180 -80 180 70 {
lab=out1m}
N 140 -80 180 -80 {
lab=out1m}
N 140 50 170 50 {
lab=out1p}
N 170 -60 170 50 {
lab=out1p}
N 140 70 180 70 {
lab=out1m}
C {/foss/designs/comp_5_split1.sym} -10 -70 0 0 {name=x1}
C {devices/ipin.sym} -220 -100 0 0 {name=p5 lab=pc}
C {devices/iopin.sym} 190 -100 2 1 {name=p8 lab=vdda}
C {devices/iopin.sym} 190 -40 2 1 {name=p10 lab=vssa}
C {devices/ipin.sym} -220 -80 0 0 {name=p14 lab=vinp}
C {devices/iopin.sym} 190 -80 2 1 {name=p15 lab=out1m}
C {devices/iopin.sym} 190 -60 2 1 {name=p16 lab=out1p}
C {/foss/designs/comp_5_split1.sym} -10 60 0 0 {name=x2}
C {devices/iopin.sym} -230 50 2 0 {name=p17 lab=vinm_samp}
