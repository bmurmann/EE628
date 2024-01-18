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
C {devices/vsource.sym} -410 -240 2 1 {name=Vgs value=0.6 savecurrent=false}
C {devices/gnd.sym} -410 -180 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -450 -460 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {devices/vsource.sym} -100 -240 2 1 {name=Vds value=0.6 savecurrent=false}
C {devices/gnd.sym} -100 -180 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -190 -240 0 0 {name=Vsb value=\{Vsbx\} savecurrent=false}
C {devices/gnd.sym} -190 -180 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -360 -330 0 0 {name=p1 sig_type=std_logic lab=g}
C {devices/lab_wire.sym} -190 -380 0 0 {name=p2 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} -190 -330 0 0 {name=p3 sig_type=std_logic lab=b}
C {devices/code_shown.sym} 0 -560 0 0 {name=COMMANDS only_toplevel=false
value="
.param temp=27
.param Wx=5u
.param Lx=0.13u
.param Vsbx=0
.dc Vgs 0 1.2 25m Vds 0 1.2 25m
.include tb_sg13_lv_pmos_save.spice

.control
*pre_osdi ./psp103_nqs.osdi
set wr_singlescale
*set wr_vecnames
option numdgt = 3

foreach L_val 0.13u 0.14u 0.15u 0.16u 0.17u 0.18u 0.19u
+ 0.2u 0.3u 0.4u 0.5u 1u 2u 3u
  alterparam Lx = $L_val
  foreach Vsb_val 0 0.2 0.4 0.6
    alterparam Vsbx = $Vsb_val
    reset
    run
    wrdata sg13_lv_pmos.txt all
    destroy $curplot
    set appendwrite
  end
end
alterparam Vsbx = 0
reset
op
show
.endc
"}
C {sg13g2_pr/sg13_lv_pmos.sym} -310 -330 2 1 {name=m1
L=\{Lx\}
W=\{Wx\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
