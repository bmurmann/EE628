v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -410 -210 -410 -160 {
lab=GND}
N -100 -210 -100 -160 {
lab=GND}
N -410 -320 -410 -270 {
lab=vin}
N -230 -410 -190 -410 {
lab=#net1}
N -230 -230 -190 -230 {
lab=#net1}
N -190 -410 -190 -230 {
lab=#net1}
N -330 -410 -290 -410 {
lab=vin}
N -330 -230 -290 -230 {
lab=vin}
N -330 -320 -330 -230 {
lab=vin}
N -410 -320 -330 -320 {
lab=vin}
N -330 -410 -330 -320 {
lab=vin}
N -260 -190 -260 -160 {
lab=GND}
N -260 -480 -260 -450 {
lab=vdd}
N -100 -480 -100 -270 {
lab=vdd}
N -260 -480 -100 -480 {
lab=vdd}
N -260 -410 -260 -340 {
lab=GND}
N -260 -300 -260 -230 {
lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} -260 -430 3 1 {name=mn
L=0.13u
W=\{Wn\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/vsource.sym} -410 -240 0 0 {name=Vin value=0.6 savecurrent=false}
C {devices/gnd.sym} -410 -160 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -450 -550 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {devices/vsource.sym} -100 -240 0 0 {name=Vdd value=1.2 savecurrent=false}
C {devices/gnd.sym} -100 -160 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 10 -460 0 0 {name=COMMANDS only_toplevel=false
value="
.param temp=27
.param Wn=5u Wp=5u
.dc Vin 0 1.2 10m
.save @n.xmn.nsg13_lv_nmos[gds] @n.xmp.nsg13_lv_pmos[gds]

.control
set wr_singlescale
set wr_vecnames
option numdgt = 5
run
wrdata sg13_lv_tgate.txt all
plot @n.xmn.nsg13_lv_nmos[gds] @n.xmp.nsg13_lv_pmos[gds]
op
show
.endc
"}
C {devices/gnd.sym} -260 -160 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -170 -480 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -370 -320 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/gnd.sym} -260 -340 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -260 -300 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_pmos.sym} -260 -210 3 0 {name=mp
L=0.13u
W=\{Wp\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
