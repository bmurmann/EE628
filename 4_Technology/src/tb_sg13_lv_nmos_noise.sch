v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -400 -560 -400 -540 {
lab=d}
N -520 -390 -520 -360 {
lab=GND}
N -210 -390 -210 -360 {
lab=GND}
N -520 -510 -520 -450 {
lab=g}
N -520 -510 -440 -510 {
lab=g}
N -400 -560 -210 -560 {
lab=d}
N -210 -560 -210 -450 {
lab=d}
N -400 -460 -330 -460 {
lab=GND}
N -400 -480 -400 -460 {
lab=GND}
N -330 -510 -330 -460 {
lab=GND}
N -400 -510 -330 -510 {
lab=GND}
N -400 -460 -400 -430 {
lab=GND}
N -120 -390 -120 -360 {
lab=GND}
N -120 -480 -120 -450 {
lab=vx}
C {sg13g2_pr/sg13_lv_nmos.sym} -420 -510 2 1 {name=m1
L=\{Lx\}
W=\{Wx\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} -400 -430 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -520 -420 0 0 {name=Vgs value="dc 0.5 ac 1" savecurrent=false}
C {devices/gnd.sym} -520 -360 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 10 -250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {devices/vsource.sym} -210 -420 0 0 {name=Vds value=0.6 savecurrent=false}
C {devices/gnd.sym} -210 -360 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -470 -510 0 0 {name=p1 sig_type=std_logic lab=g}
C {devices/lab_wire.sym} -300 -560 0 0 {name=p2 sig_type=std_logic lab=d}
C {devices/code_shown.sym} 10 -610 0 0 {name=COMMANDS only_toplevel=false
value="
.param temp=27
.param Wx=5u Lx=0.13u

.control
save all @n.xm1.nsg13_lv_nmos[gm]
set sqrnoise
noise v(vx) Vgs dec 1 100e6 100e9
setplot noise1
print v(onoise_spectrum)
print @n.xm1.nsg13_lv_nmos[gm]

* id^2 = 4*k*T*gamma*gm
* gamma = =id^2 / (4*k*T*gm)
print v(onoise_spectrum)/(4*1.38e-23*300*@n.xm1.nsg13_lv_nmos[gm])
.endc
"}
C {devices/ccvs.sym} -120 -420 0 0 {name=H1 vnam=Vds value=1}
C {devices/gnd.sym} -120 -360 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -120 -480 0 0 {name=p3 sig_type=std_logic lab=vx}
C {devices/title.sym} -420 -100 0 0 {name=l5 author="Boris Murmann"}
