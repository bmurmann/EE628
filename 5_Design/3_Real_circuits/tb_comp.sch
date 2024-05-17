v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -910 -720 -910 -680 {p1
lab=vssa}
N -820 -430 -820 -390 {p1
lab=VDD}
N -910 -430 -910 -390 {p1
lab=VSS}
N -820 -720 -820 -680 {p1
lab=vdda}
N -100 -790 -80 -790 {
lab=d}
N -290 -470 -250 -470 {
lab=ps}
N -290 -430 -230 -430 {
lab=pc}
N -630 -470 -590 -470 {
lab=clkin}
N -630 -470 -630 -390 {
lab=clkin}
N -710 -540 -270 -540 {
lab=res}
N -700 -680 -600 -680 {
lab=#net1}
N -100 -770 -80 -770 {
lab=dd}
N -100 -750 -80 -750 {
lab=dout}
N -230 -700 -230 -430 {
lab=pc}
N -250 -700 -250 -470 {
lab=ps}
N -700 -780 -700 -740 {
lab=vinm}
N -700 -780 -400 -780 {
lab=vinm}
N -600 -760 -400 -760 {
lab=vinp}
N -600 -760 -600 -740 {
lab=vinp}
N -270 -870 -270 -840 {
lab=vssa}
N -250 -890 -250 -840 {
lab=vdda}
N -710 -540 -710 -330 {
lab=res}
N -270 -700 -270 -540 {
lab=res}
C {devices/title.sym} -790 -60 0 0 {name=l1 author="Boris Murmann"}
C {devices/vsource.sym} -650 -650 0 0 {name=Vic value="dc \{vic\}"}
C {devices/gnd.sym} -910 -620 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} -910 -650 0 0 {name=Vssa value="dc 0"}
C {devices/lab_wire.sym} -910 -720 0 0 {name=p12 sig_type=std_logic lab=vssa}
C {devices/gnd.sym} -710 -270 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -710 -300 0 0 {name=Vres value="dc \{vdd\} pwl(0, \{vdd\}, \{per/4\}, \{vdd\}, \{per/4+50p\}, 0)"}
C {devices/gnd.sym} -630 -330 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -630 -360 0 0 {name=Vclk value="pulse(\{vdd\}, \{0\}, \{per/2\}, 100p, 100p, \{per/2\}, \{per\}) "}
C {devices/gnd.sym} -820 -330 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -820 -360 0 0 {name=Vddd value="dc \{vdd\}"}
C {devices/vdd.sym} -820 -430 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} -910 -330 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -910 -360 0 0 {name=Vssd value="dc 0"}
C {devices/vdd.sym} -910 -430 0 0 {name=l11 lab=VSS}
C {devices/gnd.sym} -820 -620 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} -820 -650 0 0 {name=Vdda value="dc \{vdd\}"}
C {devices/lab_wire.sym} -820 -720 0 0 {name=p7 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} -650 -620 0 0 {name=l15 lab=GND}
C {devices/code_shown.sym} -160 -580 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 per=20n vdd=1.2 vic=0.6 vid=100m 
.option method=gear reltol=1e-4

.control 
tran 100p 20n
alterparam vid=-100m
reset
tran 100p 20n
plot pc tran1.x1.out1m tran1.x1.out1p
plot pc tran2.x1.out1m tran2.x1.out1p
.endc
"}
C {devices/lab_wire.sym} -80 -790 0 1 {name=p4 sig_type=std_logic lab=d}
C {devices/code_shown.sym} -860 -190 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {template_comp.sym} -250 -770 0 0 {name=x1}
C {devices/lab_wire.sym} -630 -470 0 0 {name=p1 sig_type=std_logic lab=clkin}
C {/foss/designs/EE628/5_Design/3_Real_circuits/template_clkgen.sym} -440 -440 0 0 {name=x2}
C {devices/vsource.sym} -700 -710 0 0 {name=Vm value="dc \{-vid/2\}"}
C {devices/vsource.sym} -600 -710 0 0 {name=Vp value="dc \{+vid/2\}"}
C {devices/lab_wire.sym} -80 -770 0 1 {name=p2 sig_type=std_logic lab=dd}
C {devices/lab_wire.sym} -80 -750 0 1 {name=p3 sig_type=std_logic lab=dout}
C {devices/lab_wire.sym} -480 -780 0 0 {name=p5 sig_type=std_logic lab=vinm}
C {devices/lab_wire.sym} -480 -760 0 0 {name=p6 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -270 -870 0 0 {name=p8 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -250 -890 0 0 {name=p9 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -270 -650 3 0 {name=p10 sig_type=std_logic lab=res}
C {devices/lab_wire.sym} -250 -650 3 0 {name=p11 sig_type=std_logic lab=ps}
C {devices/lab_wire.sym} -230 -650 3 0 {name=p13 sig_type=std_logic lab=pc}
