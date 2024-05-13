v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -480 -380 -480 -360 {
lab=GND}
N -930 -380 -930 -360 {
lab=GND}
N -930 -480 -930 -440 {p1
lab=vssa}
N -840 -600 -840 -580 {
lab=GND}
N -840 -700 -840 -660 {p1
lab=VDD}
N -930 -600 -930 -580 {
lab=GND}
N -930 -700 -930 -660 {p1
lab=VSS}
N -840 -380 -840 -360 {
lab=GND}
N -840 -480 -840 -440 {p1
lab=vdda}
N -750 -380 -750 -360 {
lab=GND}
N -750 -480 -750 -440 {p1
lab=vlo}
N -650 -380 -650 -360 {
lab=GND}
N -650 -480 -650 -440 {p1
lab=vhi}
N -250 -600 -250 -560 {
lab=vssa}
N -230 -600 -230 -560 {
lab=vdda}
N -210 -600 -210 -560 {
lab=vlo}
N -190 -600 -190 -560 {
lab=vhi}
N -70 -470 -30 -470 {
lab=vout}
N -30 -470 -30 -450 {
lab=vout}
N -30 -390 -30 -370 {
lab=GND}
N -480 -470 -370 -470 {
lab=vin}
N -480 -470 -480 -440 {
lab=vin}
N -300 -290 -300 -270 {
lab=GND}
N -260 -290 -140 -290 {
lab=GND}
N -300 -360 -300 -290 {
lab=GND}
N -140 -360 -140 -290 {
lab=GND}
N -280 -360 -280 -290 {
lab=GND}
N -300 -290 -280 -290 {
lab=GND}
N -260 -360 -260 -290 {
lab=GND}
N -280 -290 -260 -290 {
lab=GND}
N -240 -360 -240 -330 {
lab=VDD}
N -510 -690 -480 -690 {
lab=vout}
N -600 -690 -570 -690 {
lab=x1.vx4}
N -510 -580 -480 -580 {
lab=x1.vx3}
N -600 -580 -570 -580 {
lab=x1.vx2}
C {devices/code_shown.sym} 30 -580 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.2 
.param vin=0.6 vlo=0.3 vhi=0.9
.global x1.vx2 x1.vx3 x1.vx4

.control 
save all
op
write tb_stage_noise.raw

noise v(x1.vx1, x1.vx2) Vin dec 100 1 1000gig
display
print v(onoise_total)
set color0 = white
setplot noise1
plot onoise_spectrum
plot sqrt(integ(onoise_spectrum^2))
.endc
"}
C {devices/title.sym} -650 -40 0 0 {name=l5 author="Boris Murmann"}
C {devices/vsource.sym} -480 -410 0 0 {name=Vin value="dc \{vin\} ac 1"}
C {devices/lab_wire.sym} -420 -470 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/gnd.sym} -930 -360 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} -930 -410 0 0 {name=Vssa value="dc 0"}
C {devices/lab_wire.sym} -930 -480 0 0 {name=p12 sig_type=std_logic lab=vssa}
C {devices/code_shown.sym} -860 -180 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {../template_stage.sym} -220 -460 0 0 {name=x1}
C {devices/gnd.sym} -840 -580 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -840 -630 0 0 {name=Vddd value="dc \{vdd\}"}
C {devices/vdd.sym} -840 -700 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} -930 -580 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -930 -630 0 0 {name=Vssd value="dc 0"}
C {devices/vdd.sym} -930 -700 0 0 {name=l8 lab=VSS}
C {devices/gnd.sym} -840 -360 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} -840 -410 0 0 {name=Vdda value="dc \{vdd\}"}
C {devices/lab_wire.sym} -840 -480 0 0 {name=p2 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} -750 -360 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -750 -410 0 0 {name=Vlo value="dc \{vlo\}"}
C {devices/lab_wire.sym} -750 -480 0 0 {name=p11 sig_type=std_logic lab=vlo}
C {devices/gnd.sym} -650 -360 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} -650 -410 0 0 {name=Vhi value="dc \{vhi\}"}
C {devices/lab_wire.sym} -650 -480 0 0 {name=p13 sig_type=std_logic lab=vhi}
C {devices/lab_wire.sym} -230 -600 1 0 {name=p14 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -250 -600 1 0 {name=p15 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -210 -600 1 0 {name=p16 sig_type=std_logic lab=vlo}
C {devices/lab_wire.sym} -190 -600 1 0 {name=p18 sig_type=std_logic lab=vhi}
C {devices/gnd.sym} -480 -360 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -30 -470 0 0 {name=p17 sig_type=std_logic lab=vout}
C {devices/capa.sym} -30 -420 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -30 -370 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} -300 -270 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -240 -330 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/launcher.sym} 120 -170 0 0 {name=h1
descr=Backannotate
tclcommand="xschem annotate_op"}
C {devices/res.sym} -540 -690 1 0 {name=R1
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} -600 -690 0 0 {name=p1 sig_type=std_logic lab=x1.vx4}
C {devices/lab_wire.sym} -480 -690 0 1 {name=p5 sig_type=std_logic lab=vout}
C {devices/res.sym} -540 -580 1 0 {name=R2
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} -600 -580 0 0 {name=p6 sig_type=std_logic lab=x1.vx2}
C {devices/lab_wire.sym} -480 -580 0 1 {name=p7 sig_type=std_logic lab=x1.vx3}
