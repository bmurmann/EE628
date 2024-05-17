v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -290 -380 -290 -360 {
lab=d}
N -410 -210 -410 -180 {
lab=GND}
N -100 -210 -100 -180 {
lab=GND}
N -190 -210 -190 -180 {
lab=GND}
N -290 -300 -290 -270 {
lab=GND}
N -190 -330 -190 -270 {
lab=b}
N -410 -330 -410 -270 {
lab=g}
N -410 -330 -330 -330 {
lab=g}
N -290 -330 -190 -330 {
lab=b}
N -290 -380 -100 -380 {
lab=d}
N -100 -380 -100 -270 {
lab=d}
C {devices/gnd.sym} -290 -270 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -410 -240 0 0 {name=Vgs value=0.6 savecurrent=false}
C {devices/gnd.sym} -410 -180 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -450 -460 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
"}
C {devices/vsource.sym} -100 -240 0 0 {name=Vds value=0.6 savecurrent=false}
C {devices/gnd.sym} -100 -180 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -190 -240 2 1 {name=Vsb value=\{vsbx\} savecurrent=false}
C {devices/gnd.sym} -190 -180 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -360 -330 0 0 {name=p1 sig_type=std_logic lab=g}
C {devices/lab_wire.sym} -190 -380 0 0 {name=p2 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} -190 -330 0 0 {name=p3 sig_type=std_logic lab=b}
C {devices/code_shown.sym} 0 -560 0 0 {name=COMMANDS only_toplevel=false
value="
.param temp=27
.param Wx=5u Lx=0.13u Vsbx=0
.dc Vgs -1 1.2 25m Vds 0.1 1.2 0.5
.include tb_sg13_lv_nmos_save.spice

.control
save all
run
plot ylog -i(Vds)
.endc
"}
C {sg13g2_pr/sg13_hv_nmos.sym} -310 -330 2 1 {name=M2
L=0.45u
W=1.0u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
