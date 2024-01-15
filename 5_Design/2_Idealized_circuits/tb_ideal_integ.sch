v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -780 -480 -780 -460 {
lab=GND}
N -780 -580 -780 -540 {p1
lab=p1}
N -200 -230 -200 -200 {
lab=GND}
N -300 -240 -300 -200 {
lab=GND}
N -670 -350 -670 -320 {
lab=p1}
N -300 -240 -240 -240 {
lab=GND}
N -480 -480 -480 -460 {
lab=GND}
N -480 -580 -480 -540 {p1
lab=p2}
N -690 -340 -690 -320 {
lab=GND}
N -600 -280 -560 -280 {
lab=#net1}
N -810 -280 -700 -280 {
lab=vi}
N -810 -280 -810 -220 {
lab=vi}
N -810 -160 -810 -140 {
lab=GND}
N -600 -160 -600 -140 {
lab=GND}
N -370 -350 -370 -320 {
lab=p2}
N -390 -340 -390 -320 {
lab=GND}
N -440 -280 -400 -280 {
lab=#net2}
N -300 -280 -240 -280 {
lab=vx}
N -200 -310 -200 -290 {
lab=vo}
N -120 -310 -50 -310 {
lab=vo}
N -300 -370 -240 -370 {
lab=vx}
N -300 -370 -300 -280 {
lab=vx}
N -340 -280 -300 -280 {
lab=vx}
N -180 -370 -120 -370 {
lab=vo}
N -120 -370 -120 -310 {
lab=vo}
N -200 -310 -120 -310 {
lab=vo}
N -670 -170 -640 -170 {
lab=GND}
N -670 -170 -670 -140 {
lab=GND}
N -670 -190 -640 -190 {
lab=p2}
N -600 -280 -600 -220 {
lab=#net1}
N -640 -280 -600 -280 {
lab=#net1}
N -440 -160 -440 -140 {
lab=GND}
N -510 -170 -480 -170 {
lab=GND}
N -510 -170 -510 -140 {
lab=GND}
N -510 -190 -480 -190 {
lab=p1}
N -440 -280 -440 -220 {
lab=#net2}
N -500 -280 -440 -280 {
lab=#net2}
C {devices/code_shown.sym} 0 -150 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 0 -410 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.2
.model mysw SW vt=\{vdd/2\} ron=10k roff=10gig
.control
save all 
tran 1n 50u
plot vo
write tb_ideal_integ.raw
.endc
"}
C {devices/gnd.sym} -780 -460 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -780 -510 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 5n, 500p, 500p, 495n, 1u) "}
C {devices/title.sym} -650 -40 0 0 {name=l5 author="Boris Murmann"}
C {devices/vcvs.sym} -200 -260 0 0 {name=E1 value=-1000}
C {devices/switch_ngspice.sym} -670 -280 1 0 {name=S1 model=mysw}
C {devices/lab_wire.sym} -780 -580 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/gnd.sym} -200 -200 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -300 -200 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -670 -350 1 0 {name=p3 sig_type=std_logic lab=p1}
C {devices/gnd.sym} -480 -460 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -480 -510 0 0 {name=Vp2 value="dc \{vdd\} pulse(\{vdd\}, 0, 0, 500p, 500p, 505n, 1u) "}
C {devices/lab_wire.sym} -480 -580 0 0 {name=p1 sig_type=std_logic lab=p2}
C {devices/gnd.sym} -690 -340 2 0 {name=l6 lab=GND}
C {devices/gnd.sym} -600 -140 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -810 -140 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -810 -190 0 0 {name=Vin value="dc 0.1"}
C {devices/lab_wire.sym} -750 -280 0 0 {name=p4 sig_type=std_logic lab=vi}
C {devices/capa.sym} -530 -280 3 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/switch_ngspice.sym} -370 -280 1 0 {name=S2 model=mysw}
C {devices/lab_pin.sym} -370 -350 1 0 {name=p5 sig_type=std_logic lab=p2}
C {devices/gnd.sym} -390 -340 2 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -50 -310 0 0 {name=p6 sig_type=std_logic lab=vo}
C {devices/capa.sym} -210 -370 3 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/switch_ngspice.sym} -600 -190 0 0 {name=S3 model=mysw}
C {devices/gnd.sym} -670 -140 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} -670 -190 0 0 {name=p8 sig_type=std_logic lab=p2}
C {devices/gnd.sym} -440 -140 0 0 {name=l10 lab=GND}
C {devices/switch_ngspice.sym} -440 -190 0 0 {name=S4 model=mysw}
C {devices/gnd.sym} -510 -140 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} -510 -190 0 0 {name=p7 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} -260 -280 0 0 {name=p9 sig_type=std_logic lab=vx}
