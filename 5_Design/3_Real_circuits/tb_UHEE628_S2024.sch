v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -620 190 -620 {
lab=GND}
N 70 -360 70 -260 {
lab=GND}
N 70 -360 190 -360 {
lab=GND}
N 70 -380 70 -360 {
lab=GND}
N 70 -380 190 -380 {
lab=GND}
N 70 -400 70 -380 {
lab=GND}
N 70 -400 190 -400 {
lab=GND}
N 70 -420 70 -400 {
lab=GND}
N 70 -420 190 -420 {
lab=GND}
N 70 -440 70 -420 {
lab=GND}
N 70 -440 190 -440 {
lab=GND}
N 70 -460 70 -440 {
lab=GND}
N 70 -460 190 -460 {
lab=GND}
N 70 -480 70 -460 {
lab=GND}
N 70 -480 190 -480 {
lab=GND}
N 70 -500 70 -480 {
lab=GND}
N 70 -500 190 -500 {
lab=GND}
N 70 -520 70 -500 {
lab=GND}
N 70 -520 190 -520 {
lab=GND}
N 70 -540 70 -520 {
lab=GND}
N 70 -540 190 -540 {
lab=GND}
N 70 -560 70 -540 {
lab=GND}
N 70 -600 190 -600 {
lab=GND}
N 70 -620 70 -600 {
lab=GND}
N 70 -580 190 -580 {
lab=GND}
N 70 -600 70 -580 {
lab=GND}
N 70 -560 190 -560 {
lab=GND}
N 70 -580 70 -560 {
lab=GND}
N 520 -270 520 -230 {
lab=GND}
N 520 -360 520 -340 {
lab=GND}
N 520 -440 520 -360 {
lab=GND}
N 1040 -310 1040 -260 {
lab=GND}
N 1040 -500 1040 -370 {
lab=iovdd}
N 1100 -310 1100 -260 {
lab=GND}
N 1100 -580 1100 -370 {
lab=vdd}
N 1100 -600 1100 -580 {
lab=vdd}
N 920 -310 920 -260 {
lab=GND}
N 980 -310 980 -260 {
lab=GND}
N 920 -460 920 -370 {
lab=vlo}
N 490 -460 920 -460 {
lab=vlo}
N 490 -480 980 -480 {
lab=vhi}
N 980 -480 980 -370 {
lab=vhi}
N 490 -500 1040 -500 {
lab=iovdd}
N 490 -580 1100 -580 {
lab=vdd}
N 490 -600 1100 -600 {
lab=vdd}
N 490 -340 520 -340 {
lab=GND}
N 490 -360 520 -360 {
lab=GND}
N 490 -440 520 -440 {
lab=GND}
N 490 -380 580 -380 {
lab=out6}
N 580 -380 580 -350 {
lab=out6}
N 490 -400 630 -400 {
lab=out5}
N 630 -400 630 -350 {
lab=out5}
N 490 -420 680 -420 {
lab=out4}
N 680 -420 680 -350 {
lab=out4}
N 630 -270 680 -270 {
lab=GND}
N 520 -340 520 -270 {
lab=GND}
N 680 -290 680 -270 {
lab=GND}
N 630 -290 630 -270 {
lab=GND}
N 580 -270 630 -270 {
lab=GND}
N 580 -290 580 -270 {
lab=GND}
N 520 -270 580 -270 {
lab=GND}
N 780 -270 830 -270 {
lab=GND}
N 830 -290 830 -270 {
lab=GND}
N 780 -290 780 -270 {
lab=GND}
N 730 -270 780 -270 {
lab=GND}
N 730 -290 730 -270 {
lab=GND}
N 490 -520 730 -520 {
lab=out3}
N 730 -520 730 -350 {
lab=out3}
N 490 -540 780 -540 {
lab=out2}
N 780 -540 780 -350 {
lab=out2}
N 490 -560 830 -560 {
lab=out1}
N 830 -560 830 -350 {
lab=out1}
N 680 -270 730 -270 {
lab=GND}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Boris Murmann"}
C {/foss/designs/EE628/5_Design/3_Real_circuits/UHEE628_S2024.sym} 340 -480 0 0 {name=x1}
C {devices/gnd.sym} 70 -260 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 520 -230 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1040 -260 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 1040 -340 0 0 {name=V1 value=3 savecurrent=false}
C {devices/gnd.sym} 1100 -260 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 1100 -340 0 0 {name=V2 value=1.2 savecurrent=false}
C {devices/noconn.sym} 490 -620 2 0 {name=l6}
C {devices/gnd.sym} 920 -260 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 920 -340 0 0 {name=V3 value=0.3 savecurrent=false}
C {devices/gnd.sym} 980 -260 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 980 -340 0 0 {name=V4 value=0.9 savecurrent=false}
C {devices/capa.sym} 580 -320 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 630 -320 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 680 -320 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 730 -320 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 780 -320 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 830 -320 0 0 {name=C6
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/simulator_commands_shown.sym} 1170 -580 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerCAP.lib cap_typ
.inc /foss/pdks/sg13g2/libs.tech/ngspice/models/diodes.lib
.inc \\"../../4_Layout/Team 1/Team1_sim.spice\\"
.inc \\"../../4_Layout/Team 3/Team3_sim.spice\\"
.inc \\"../../4_Layout/Team 5/Team5_sim.spice\\"
.inc \\"../../4_Layout/Team 6/Team6_sim.spice\\"
.inc ../sg13g2_stdcell.spice
.inc ../sg13g2_io.spi
.options gmin=1e-8 keepopinfo

.control
optran 0 0 0 100p 2n 0
op
.endc"}
C {devices/lab_wire.sym} 600 -560 0 0 {name=p1 sig_type=std_logic lab=out1}
C {devices/lab_wire.sym} 600 -540 0 0 {name=p2 sig_type=std_logic lab=out2}
C {devices/lab_wire.sym} 600 -520 0 0 {name=p3 sig_type=std_logic lab=out3}
C {devices/lab_wire.sym} 600 -420 0 0 {name=p4 sig_type=std_logic lab=out4}
C {devices/lab_wire.sym} 600 -400 0 0 {name=p5 sig_type=std_logic lab=out5}
C {devices/lab_wire.sym} 570 -380 0 0 {name=p6 sig_type=std_logic lab=out6}
C {devices/lab_wire.sym} 600 -580 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 600 -500 0 0 {name=p8 sig_type=std_logic lab=iovdd}
C {devices/lab_wire.sym} 600 -480 0 0 {name=p9 sig_type=std_logic lab=vhi}
C {devices/lab_wire.sym} 600 -460 0 0 {name=p10 sig_type=std_logic lab=vlo}
