v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -510 -570 -420 -570 {
lab=#net1}
N -360 -570 -260 -570 {
lab=vc}
N -260 -570 -260 -540 {
lab=vc}
N -260 -480 -260 -440 {
lab=GND}
N -510 -570 -510 -540 {
lab=#net1}
N -510 -480 -510 -440 {
lab=GND}
C {devices/code_shown.sym} 0 -560 0 0 {name=COMMANDS only_toplevel=false
value="
.param temp=27

.control
save all
noise v(vc) vdum dec 100 1 1000gig
print v(onoise_total)
set color0 = white
setplot noise1
plot onoise_spectrum
plot sqrt(integ(onoise_spectrum^2))
.endc
"}
C {devices/gnd.sym} -260 -440 0 0 {name=l2 lab=GND}
C {devices/title.sym} -470 -170 0 0 {name=l4 author="Boris Murmann"}
C {devices/res.sym} -390 -570 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -260 -510 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -510 -440 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -290 -570 0 0 {name=p1 sig_type=std_logic lab=vc}
C {devices/vsource.sym} -510 -510 0 0 {name=Vdum value="DC 0 AC 1" savecurrent=false}
