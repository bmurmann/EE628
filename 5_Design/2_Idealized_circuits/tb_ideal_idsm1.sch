v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {comparator + flipflop} -320 -540 0 0 0.4 0.4 {}
T {vref scaling} -880 -190 0 0 0.4 0.4 {}
N -1150 -630 -1150 -610 {
lab=GND}
N -1150 -730 -1150 -690 {p1
lab=p1}
N -570 -380 -570 -350 {
lab=GND}
N -670 -390 -670 -350 {
lab=GND}
N -1040 -500 -1040 -470 {
lab=p1}
N -670 -390 -610 -390 {
lab=GND}
N -790 -630 -790 -610 {
lab=GND}
N -790 -730 -790 -690 {p1
lab=p2}
N -1060 -490 -1060 -470 {
lab=GND}
N -970 -430 -930 -430 {
lab=#net1}
N -1180 -430 -1070 -430 {
lab=vi}
N -1180 -430 -1180 -370 {
lab=vi}
N -1180 -310 -1180 -290 {
lab=GND}
N -970 -310 -970 -210 {
lab=#net2}
N -740 -500 -740 -470 {
lab=p2}
N -760 -490 -760 -470 {
lab=GND}
N -810 -430 -770 -430 {
lab=#net3}
N -670 -430 -610 -430 {
lab=vx}
N -570 -460 -570 -440 {
lab=vo}
N -490 -460 -360 -460 {
lab=vo}
N -670 -520 -610 -520 {
lab=vx}
N -670 -520 -670 -430 {
lab=vx}
N -710 -430 -670 -430 {
lab=vx}
N -550 -520 -490 -520 {
lab=vo}
N -490 -520 -490 -460 {
lab=vo}
N -570 -460 -490 -460 {
lab=vo}
N -1040 -320 -1010 -320 {
lab=GND}
N -1040 -320 -1040 -290 {
lab=GND}
N -1040 -340 -1010 -340 {
lab=p2}
N -970 -430 -970 -370 {
lab=#net1}
N -1010 -430 -970 -430 {
lab=#net1}
N -810 -310 -810 -290 {
lab=GND}
N -880 -320 -850 -320 {
lab=GND}
N -880 -320 -880 -290 {
lab=GND}
N -880 -340 -850 -340 {
lab=p1}
N -810 -430 -810 -370 {
lab=#net3}
N -870 -430 -810 -430 {
lab=#net3}
N -970 -150 -970 -130 {
lab=GND}
N -320 -460 -320 -440 {
lab=vcmp}
N -320 -410 -320 -350 {
lab=GND}
N -400 -630 -400 -610 {
lab=GND}
N -400 -730 -400 -690 {p1
lab=VDD}
N -1070 -160 -1010 -160 {
lab=GND}
N -180 -630 -180 -610 {
lab=GND}
N -180 -730 -180 -690 {p1
lab=resb}
N -320 -460 -230 -460 {
lab=vcmp}
N -1070 -160 -1070 -120 {
lab=GND}
N -1090 -200 -1010 -200 {
lab=q}
N -260 -480 -230 -480 {
lab=p1}
N -260 -440 -230 -440 {
lab=resb}
N -50 -480 -20 -480 {
lab=q}
N -290 -630 -290 -610 {
lab=GND}
N -290 -730 -290 -690 {p1
lab=VSS}
C {devices/code_shown.sym} 0 -200 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 0 -570 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.2 per=1u
.model mysw SW vt=\{vdd/2\} ron=10k roff=10gig
.option method=gear reltol=1e-4

.control
save all 
tran 10n 64u
plot vo q
set wr_singlescale
set wr_vecnames
wrdata tb_ideal_idsm1.txt vo q p1 p2
.endc
"}
C {devices/gnd.sym} -1150 -610 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -1150 -660 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 5n, 100p, 100p, \{per/2-5n\}, \{per\}) "}
C {devices/title.sym} -650 -40 0 0 {name=l5 author="Boris Murmann"}
C {devices/vcvs.sym} -570 -410 0 0 {name=E1 value=-10000}
C {devices/switch_ngspice.sym} -1040 -430 1 0 {name=S1 model=mysw}
C {devices/lab_wire.sym} -1150 -730 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/gnd.sym} -570 -350 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -670 -350 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -1040 -500 1 0 {name=p3 sig_type=std_logic lab=p1}
C {devices/gnd.sym} -790 -610 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -790 -660 0 0 {name=Vp2 value="dc \{vdd\} pulse(\{vdd\}, 0, 0, 100p, 100p, \{per/2+5n\}, \{per\}) "}
C {devices/lab_wire.sym} -790 -730 0 0 {name=p1 sig_type=std_logic lab=p2}
C {devices/gnd.sym} -1060 -490 2 0 {name=l6 lab=GND}
C {devices/gnd.sym} -1180 -290 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -1180 -340 0 0 {name=Vin value="dc 0.075"}
C {devices/lab_wire.sym} -1120 -430 0 0 {name=p4 sig_type=std_logic lab=vi}
C {devices/capa.sym} -900 -430 3 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/switch_ngspice.sym} -740 -430 1 0 {name=S2 model=mysw}
C {devices/lab_pin.sym} -740 -500 1 0 {name=p5 sig_type=std_logic lab=p2}
C {devices/gnd.sym} -760 -490 2 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -420 -460 0 0 {name=p6 sig_type=std_logic lab=vo}
C {devices/capa.sym} -580 -520 3 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/switch_ngspice.sym} -970 -340 0 0 {name=S3 model=mysw}
C {devices/gnd.sym} -1040 -290 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} -1040 -340 0 0 {name=p8 sig_type=std_logic lab=p2}
C {devices/gnd.sym} -810 -290 0 0 {name=l10 lab=GND}
C {devices/switch_ngspice.sym} -810 -340 0 0 {name=S4 model=mysw}
C {devices/gnd.sym} -880 -290 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} -880 -340 0 0 {name=p7 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} -630 -430 0 0 {name=p9 sig_type=std_logic lab=vx}
C {devices/gnd.sym} -970 -130 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -320 -350 0 0 {name=l13 lab=GND}
C {devices/vsource.sym} -320 -410 0 0 {name=E2 value="TABLE \{V(vo,0)\} = (-0.1mV, 0V) (0.1mV, \{vdd\})"}
C {devices/lab_wire.sym} -260 -460 0 0 {name=p10 sig_type=std_logic lab=vcmp}
C {devices/gnd.sym} -400 -610 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} -400 -660 0 0 {name=Vdd value="dc \{vdd\}"}
C {devices/vdd.sym} -400 -730 0 0 {name=l15 lab=VDD}
C {devices/vcvs.sym} -970 -180 0 0 {name=E3 value=\{1/vdd\}}
C {devices/gnd.sym} -1070 -120 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} -1050 -200 0 0 {name=p11 sig_type=std_logic lab=q}
C {devices/gnd.sym} -180 -610 0 0 {name=l18 lab=GND}
C {devices/vsource.sym} -180 -660 0 0 {name=Vresb value="dc 0 pwl(0, 0, \{per/2\}, 0, \{per/2+100p\} \{vdd\}"}
C {devices/lab_wire.sym} -180 -730 0 0 {name=p12 sig_type=std_logic lab=resb}
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} -140 -460 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} -260 -480 0 0 {name=p13 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} -260 -440 0 0 {name=p14 sig_type=std_logic lab=resb}
C {devices/lab_wire.sym} -20 -480 0 0 {name=p15 sig_type=std_logic lab=q}
C {devices/gnd.sym} -290 -610 0 0 {name=l17 lab=GND}
C {devices/vsource.sym} -290 -660 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} -290 -730 0 0 {name=l19 lab=VSS}
