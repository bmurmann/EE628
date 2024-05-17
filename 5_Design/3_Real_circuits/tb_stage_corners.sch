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
N -750 -600 -750 -580 {
lab=GND}
N -750 -710 -750 -660 {
lab=res}
N -930 -130 -930 -110 {
lab=GND}
N -930 -270 -930 -190 {
lab=clkin}
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
N -300 -360 -300 -330 {
lab=res}
N -280 -360 -280 -270 {
lab=p1e}
N -930 -270 -770 -270 {
lab=clkin}
N -470 -270 -280 -270 {
lab=p1e}
N -470 -250 -260 -250 {
lab=p1}
N -260 -360 -260 -250 {
lab=p1}
N -240 -360 -240 -230 {
lab=p2}
N -470 -230 -240 -230 {
lab=p2}
N -140 -260 -140 -240 {
lab=GND}
N -70 -470 -30 -470 {
lab=vout}
N -140 -360 -140 -320 {
lab=d}
N -30 -470 -30 -450 {
lab=vout}
N -30 -390 -30 -370 {
lab=GND}
N -480 -470 -370 -470 {
lab=vin}
N -480 -470 -480 -440 {
lab=vin}
N -470 -210 -390 -210 {
lab=p2e}
C {devices/code_shown.sym} 30 -580 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 per=80n vdd=1.2 
.param vin=0.6 vlo=0.3 vhi=0.9 vd=\{vdd\}
.option method=gear reltol=1e-6

.control
set wr_singlescale
set wr_vecnames
set color0 = white
tran 100p 240n
plot p2 p2e vout
***
wrdata tb_stage_corners_ff.txt p2e vout
***
.endc
"}
C {devices/title.sym} -650 -40 0 0 {name=l5 author="Boris Murmann"}
C {devices/vsource.sym} -480 -410 0 0 {name=Vin value="dc \{vin\}"}
C {devices/lab_wire.sym} -420 -470 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/gnd.sym} -930 -360 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} -930 -410 0 0 {name=Vssa value="dc 0"}
C {devices/lab_wire.sym} -930 -480 0 0 {name=p12 sig_type=std_logic lab=vssa}
C {devices/code_shown.sym} -400 -160 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_ff
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/gnd.sym} -750 -580 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -750 -630 0 0 {name=Vres value="dc \{vdd\} pwl(0, \{vdd\}, \{per/2\}, \{vdd\}, \{per/2+25p\}, 0)"}
C {devices/lab_wire.sym} -750 -700 0 0 {name=p27 sig_type=std_logic lab=res}
C {devices/gnd.sym} -930 -110 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -930 -160 0 0 {name=Vclk value="pulse(\{vdd\}, 0, \{per\}, 100p, 100p, \{per/2\}, \{per\}) "}
C {template_clkgen.sym} -620 -240 0 0 {name=x2}
C {devices/lab_wire.sym} -850 -270 0 0 {name=p6 sig_type=std_logic lab=clkin}
C {devices/lab_wire.sym} -390 -230 0 0 {name=p7 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} -390 -250 0 0 {name=p8 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} -390 -270 0 0 {name=p9 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} -300 -330 3 0 {name=p10 sig_type=std_logic lab=res}
C {template_stage.sym} -220 -460 0 0 {name=x1}
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
C {devices/gnd.sym} -140 -240 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} -140 -330 0 0 {name=p1 sig_type=std_logic lab=d}
C {devices/capa.sym} -30 -420 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -30 -370 0 0 {name=l13 lab=GND}
C {devices/vsource.sym} -140 -290 0 0 {name=Vd value="dc \{vd\}"}
C {devices/lab_wire.sym} -390 -210 0 0 {name=p3 sig_type=std_logic lab=p2e}
