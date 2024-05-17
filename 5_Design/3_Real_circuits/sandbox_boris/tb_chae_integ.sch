v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -520 20 -500 {
lab=GND}
N 20 -620 20 -580 {p1
lab=p1}
N -300 -240 -300 -210 {
lab=GND}
N -400 -250 -400 -210 {
lab=GND}
N -770 -360 -770 -330 {
lab=p1}
N -400 -250 -340 -250 {
lab=GND}
N 320 -520 320 -500 {
lab=GND}
N 320 -620 320 -580 {p1
lab=p2}
N -790 -350 -790 -330 {
lab=GND}
N -700 -290 -660 -290 {
lab=#net1}
N -910 -290 -800 -290 {
lab=vi}
N -910 -290 -910 -230 {
lab=vi}
N -910 -170 -910 -150 {
lab=GND}
N -700 -170 -700 -150 {
lab=GND}
N -470 -360 -470 -330 {
lab=p2}
N -490 -350 -490 -330 {
lab=GND}
N -540 -290 -500 -290 {
lab=#net2}
N -400 -290 -340 -290 {
lab=#net3}
N -300 -320 -300 -300 {
lab=vo1}
N -220 -320 -150 -320 {
lab=vo1}
N -400 -380 -340 -380 {
lab=#net3}
N -400 -380 -400 -290 {
lab=#net3}
N -440 -290 -400 -290 {
lab=#net3}
N -280 -380 -220 -380 {
lab=vo1}
N -220 -380 -220 -320 {
lab=vo1}
N -300 -320 -220 -320 {
lab=vo1}
N -770 -180 -740 -180 {
lab=GND}
N -770 -180 -770 -150 {
lab=GND}
N -770 -200 -740 -200 {
lab=p2}
N -700 -290 -700 -230 {
lab=#net1}
N -740 -290 -700 -290 {
lab=#net1}
N -540 -170 -540 -150 {
lab=GND}
N -610 -180 -580 -180 {
lab=GND}
N -610 -180 -610 -150 {
lab=GND}
N -610 -200 -580 -200 {
lab=p1}
N -540 -290 -540 -230 {
lab=#net2}
N -600 -290 -540 -290 {
lab=#net2}
N -230 -590 -230 -560 {
lab=GND}
N -330 -600 -330 -560 {
lab=GND}
N -770 -710 -770 -680 {
lab=p1}
N -330 -600 -270 -600 {
lab=GND}
N -790 -700 -790 -680 {
lab=GND}
N -700 -640 -660 -640 {
lab=#net4}
N -700 -520 -700 -500 {
lab=GND}
N -540 -640 -470 -640 {
lab=#net5}
N -230 -670 -230 -650 {
lab=vo2}
N -150 -670 -80 -670 {
lab=vo2}
N -210 -870 -150 -870 {
lab=vo2}
N -230 -670 -150 -670 {
lab=vo2}
N -770 -530 -740 -530 {
lab=GND}
N -770 -530 -770 -500 {
lab=GND}
N -770 -550 -740 -550 {
lab=p2}
N -700 -640 -700 -580 {
lab=#net4}
N -740 -640 -700 -640 {
lab=#net4}
N -540 -520 -540 -500 {
lab=GND}
N -610 -530 -580 -530 {
lab=GND}
N -610 -530 -610 -500 {
lab=GND}
N -610 -550 -580 -550 {
lab=p1}
N -540 -640 -540 -580 {
lab=#net5}
N -600 -640 -540 -640 {
lab=#net5}
N -910 -640 -800 -640 {
lab=vi}
N -910 -640 -910 -290 {
lab=vi}
N -330 -640 -270 -640 {
lab=#net6}
N -610 -770 -580 -770 {
lab=GND}
N -610 -770 -610 -740 {
lab=GND}
N -610 -790 -580 -790 {
lab=p2}
N -150 -870 -150 -670 {
lab=vo2}
N -540 -870 -540 -820 {
lab=#net7}
N -330 -870 -270 -870 {
lab=#net7}
N -540 -760 -540 -640 {
lab=#net5}
N -400 -770 -370 -770 {
lab=GND}
N -400 -770 -400 -740 {
lab=GND}
N -400 -790 -370 -790 {
lab=p1}
N -330 -870 -330 -820 {
lab=#net7}
N -540 -870 -330 -870 {
lab=#net7}
N -330 -760 -330 -640 {
lab=#net6}
N -410 -640 -330 -640 {
lab=#net6}
C {devices/code_shown.sym} 0 -340 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.2
.model mysw SW vt=\{vdd/2\} ron=10k roff=10gig
.control
save all 
tran 1n 50u
plot vo1 vo2
.endc
"}
C {devices/gnd.sym} 20 -500 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 20 -550 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 5n, 500p, 500p, 495n, 1u) "}
C {devices/title.sym} -650 -40 0 0 {name=l5 author="Boris Murmann"}
C {devices/vcvs.sym} -300 -270 0 0 {name=E1 value=-50}
C {devices/switch_ngspice.sym} -770 -290 1 0 {name=S1 model=mysw}
C {devices/lab_wire.sym} 20 -620 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/gnd.sym} -300 -210 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -400 -210 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -770 -360 1 0 {name=p3 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 320 -500 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 320 -550 0 0 {name=Vp2 value="dc \{vdd\} pulse(\{vdd\}, 0, 0, 500p, 500p, 505n, 1u) "}
C {devices/lab_wire.sym} 320 -620 0 0 {name=p1 sig_type=std_logic lab=p2}
C {devices/gnd.sym} -790 -350 2 0 {name=l6 lab=GND}
C {devices/gnd.sym} -700 -150 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -910 -150 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -910 -200 0 0 {name=Vin value="dc 0.1"}
C {devices/lab_wire.sym} -850 -290 0 0 {name=p4 sig_type=std_logic lab=vi}
C {devices/capa.sym} -630 -290 3 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/switch_ngspice.sym} -470 -290 1 0 {name=S2 model=mysw}
C {devices/lab_pin.sym} -470 -360 1 0 {name=p5 sig_type=std_logic lab=p2}
C {devices/gnd.sym} -490 -350 2 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -150 -320 0 0 {name=p6 sig_type=std_logic lab=vo1}
C {devices/capa.sym} -310 -380 3 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/switch_ngspice.sym} -700 -200 0 0 {name=S3 model=mysw}
C {devices/gnd.sym} -770 -150 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} -770 -200 0 0 {name=p8 sig_type=std_logic lab=p2}
C {devices/gnd.sym} -540 -150 0 0 {name=l10 lab=GND}
C {devices/switch_ngspice.sym} -540 -200 0 0 {name=S4 model=mysw}
C {devices/gnd.sym} -610 -150 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} -610 -200 0 0 {name=p7 sig_type=std_logic lab=p1}
C {devices/vcvs.sym} -230 -620 0 0 {name=E2 value=-50}
C {devices/switch_ngspice.sym} -770 -640 1 0 {name=S5 model=mysw}
C {devices/gnd.sym} -230 -560 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} -330 -560 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} -770 -710 1 0 {name=p10 sig_type=std_logic lab=p1}
C {devices/gnd.sym} -790 -700 2 0 {name=l15 lab=GND}
C {devices/gnd.sym} -700 -500 0 0 {name=l16 lab=GND}
C {devices/capa.sym} -630 -640 3 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -80 -670 0 0 {name=p13 sig_type=std_logic lab=vo2}
C {devices/capa.sym} -240 -870 3 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/switch_ngspice.sym} -700 -550 0 0 {name=S7 model=mysw}
C {devices/gnd.sym} -770 -500 0 0 {name=l19 lab=GND}
C {devices/lab_wire.sym} -770 -550 0 0 {name=p14 sig_type=std_logic lab=p2}
C {devices/gnd.sym} -540 -500 0 0 {name=l20 lab=GND}
C {devices/switch_ngspice.sym} -540 -550 0 0 {name=S8 model=mysw}
C {devices/gnd.sym} -610 -500 0 0 {name=l21 lab=GND}
C {devices/lab_wire.sym} -610 -550 0 0 {name=p15 sig_type=std_logic lab=p1}
C {devices/capa.sym} -440 -640 3 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/switch_ngspice.sym} -540 -790 0 0 {name=S6 model=mysw}
C {devices/gnd.sym} -610 -740 0 0 {name=l18 lab=GND}
C {devices/lab_wire.sym} -610 -790 0 0 {name=p9 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} -330 -790 0 0 {name=S9 model=mysw}
C {devices/gnd.sym} -400 -740 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} -400 -790 0 0 {name=p11 sig_type=std_logic lab=p1}
