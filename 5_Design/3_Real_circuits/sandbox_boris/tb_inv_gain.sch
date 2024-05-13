v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -480 -340 -480 -310 {
lab=GND}
N -380 -370 -300 -370 {
lab=#net1}
N -260 -330 -260 -310 {
lab=GND}
N -190 -370 -190 -330 {
lab=GND}
N -260 -370 -190 -370 {
lab=GND}
N -260 -330 -190 -330 {
lab=GND}
N -260 -340 -260 -330 {
lab=GND}
N -260 -420 -260 -400 {
lab=vout}
N -380 -480 -300 -480 {
lab=#net1}
N -380 -420 -380 -370 {
lab=#net1}
N -260 -420 -120 -420 {
lab=vout}
N -260 -450 -260 -420 {
lab=vout}
N -480 -420 -480 -400 {
lab=#net1}
N -480 -420 -380 -420 {
lab=#net1}
N -380 -480 -380 -420 {
lab=#net1}
N -580 -340 -580 -310 {
lab=GND}
N -260 -540 -260 -510 {
lab=#net2}
N -580 -540 -260 -540 {
lab=#net2}
N -580 -540 -580 -400 {
lab=#net2}
N -260 -480 -190 -480 {
lab=#net2}
N -190 -540 -190 -480 {
lab=#net2}
N -260 -540 -190 -540 {
lab=#net2}
N -120 -340 -120 -310 {
lab=GND}
N -120 -420 -120 -400 {
lab=vout}
C {sg13g2_pr/sg13_lv_nmos.sym} -280 -370 2 1 {name=mn
L=\{L\}
W=\{Wn\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} -260 -310 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -480 -370 0 0 {name=Vin value=0.6 savecurrent=false}
C {devices/gnd.sym} -480 -310 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 0 -250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 0 -560 0 0 {name=COMMANDS only_toplevel=false
value="
.param temp=27
.param Wn=2.5u Wp=\{4*Wn\} L=0.13u

.control
dc Vin 0.2 1 1m
alterparam L=1.5u
reset
dc Vin 0.2 1 1m
set color0 = white
*plot dc1.vout dc2.vout 
*plot deriv(dc1.vout) deriv(dc2.vout)
plot i(Vout)
plot deriv(i(Vout))
.endc
"}
C {sg13g2_pr/sg13_lv_pmos.sym} -280 -480 0 0 {name=mp
L=\{L\}
W=\{Wp\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} -150 -420 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/vsource.sym} -580 -370 0 0 {name=Vdd value=1.2 savecurrent=false}
C {devices/gnd.sym} -580 -310 0 0 {name=l2 lab=GND}
C {devices/title.sym} -470 -170 0 0 {name=l4 author="Boris Murmann"}
C {devices/vsource.sym} -120 -370 0 0 {name=Vout value=0.6 savecurrent=false}
C {devices/gnd.sym} -120 -310 0 0 {name=l5 lab=GND}
