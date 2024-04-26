v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -1480 170 -1430 {
lab=GND}
N 230 -1480 230 -1430 {
lab=GND}
N 130 -790 130 -740 {
lab=GND}
N 60 -790 60 -740 {
lab=GND}
N 1700 -520 1750 -520 {
lab=GND}
N 1750 -540 1750 -520 {
lab=GND}
N 1700 -540 1700 -520 {
lab=GND}
N 1650 -520 1700 -520 {
lab=GND}
N 1650 -540 1650 -520 {
lab=GND}
N 1850 -520 1900 -520 {
lab=GND}
N 1900 -540 1900 -520 {
lab=GND}
N 1850 -540 1850 -520 {
lab=GND}
N 1800 -520 1850 -520 {
lab=GND}
N 1800 -540 1800 -520 {
lab=GND}
N 1750 -520 1800 -520 {
lab=GND}
N 230 -640 230 -600 {
lab=GND}
N 230 -1200 340 -1200 {
lab=GND}
N 230 -1120 340 -1120 {
lab=GND}
N 230 -1200 230 -1120 {
lab=GND}
N 230 -1040 340 -1040 {
lab=GND}
N 230 -1120 230 -1040 {
lab=GND}
N 230 -800 340 -800 {
lab=GND}
N 230 -1040 230 -800 {
lab=GND}
N 230 -720 340 -720 {
lab=GND}
N 230 -800 230 -720 {
lab=GND}
N 230 -640 340 -640 {
lab=GND}
N 230 -720 230 -640 {
lab=GND}
N 1530 -640 1650 -640 {
lab=#net1}
N 1650 -640 1650 -600 {
lab=#net1}
N 1700 -720 1700 -600 {
lab=#net2}
N 1530 -800 1750 -800 {
lab=#net3}
N 1750 -800 1750 -600 {
lab=#net3}
N 1800 -1040 1800 -600 {
lab=#net4}
N 1530 -1040 1800 -1040 {
lab=#net4}
N 1850 -1120 1850 -600 {
lab=#net5}
N 1530 -1120 1850 -1120 {
lab=#net5}
N 1530 -1200 1900 -1200 {
lab=#net6}
N 1900 -1200 1900 -600 {
lab=#net6}
N 640 -250 640 -180 {
lab=GND}
N 800 -250 800 -180 {
lab=GND}
N 1200 -250 1200 -180 {
lab=GND}
N 960 -250 960 -180 {
lab=GND}
N 1040 -250 1040 -180 {
lab=GND}
N 1120 -250 1120 -180 {
lab=GND}
N 230 -1620 230 -1540 {
lab=vdd}
N 230 -1620 640 -1620 {
lab=vdd}
N 640 -1620 640 -1590 {
lab=vdd}
N 1120 -1620 1200 -1620 {
lab=vdd}
N 1200 -1620 1200 -1590 {
lab=vdd}
N 960 -1620 960 -1590 {
lab=vdd}
N 720 -1620 960 -1620 {
lab=vdd}
N 1040 -1620 1040 -1590 {
lab=vdd}
N 960 -1620 1040 -1620 {
lab=vdd}
N 1120 -1620 1120 -1590 {
lab=vdd}
N 1040 -1620 1120 -1620 {
lab=vdd}
N 880 -1640 880 -1590 {
lab=iovdd}
N 170 -1640 170 -1540 {
lab=iovdd}
N 170 -1640 880 -1640 {
lab=iovdd}
N 60 -960 340 -960 {
lab=#net7}
N 60 -960 60 -850 {
lab=#net7}
N 130 -880 130 -850 {
lab=#net8}
N 130 -880 340 -880 {
lab=#net8}
N 1350 -1200 1410 -1200 {
lab=vdd}
N 1350 -1120 1410 -1120 {
lab=vdd}
N 1350 -1040 1410 -1040 {
lab=vdd}
N 1350 -800 1410 -800 {
lab=vdd}
N 1350 -720 1410 -720 {
lab=vdd}
N 1350 -640 1410 -640 {
lab=vdd}
N 1530 -880 1580 -880 {
lab=GND}
N 1580 -880 1580 -860 {
lab=GND}
N 1530 -960 1580 -960 {
lab=iovdd}
N 720 -1620 720 -1590 {
lab=vdd}
N 640 -1620 720 -1620 {
lab=vdd}
N 1530 -720 1700 -720 {
lab=#net2}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Boris Murmann"}
C {devices/gnd.sym} 170 -1430 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 170 -1510 0 0 {name=V1 value=3 savecurrent=false}
C {devices/gnd.sym} 230 -1430 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 230 -1510 0 0 {name=V2 value=1.2 savecurrent=false}
C {devices/noconn.sym} 800 -1590 2 0 {name=l6}
C {devices/gnd.sym} 130 -740 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 130 -820 0 0 {name=V3 value=0.3 savecurrent=false}
C {devices/gnd.sym} 60 -740 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 60 -820 0 0 {name=V4 value=0.9 savecurrent=false}
C {devices/capa.sym} 1650 -570 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1700 -570 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1750 -570 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1800 -570 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1850 -570 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1900 -570 0 0 {name=C6
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/simulator_commands_shown.sym} 620 -1040 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerCAP.lib cap_typ
.inc /foss/pdks/sg13g2/libs.tech/ngspice/models/diodes.lib
.inc ../sg13g2_stdcell.spice
.inc ../sg13g2_io.spi
.options gmin=1e-8

.control
tran 1n 60n
.endc"}
C {/foss/designs/EE628/5_Design/3_Real_circuits/padring.sym} 360 -270 0 0 {name=x1}
C {devices/gnd.sym} 230 -600 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 640 -180 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 800 -180 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1200 -180 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 960 -180 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 1040 -180 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 1120 -180 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 1350 -1200 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 230 -1620 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1350 -1120 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1350 -1040 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1350 -800 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1350 -720 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1350 -640 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 1580 -860 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1580 -960 0 1 {name=p8 sig_type=std_logic lab=iovdd}
C {devices/lab_pin.sym} 170 -1620 0 0 {name=p9 sig_type=std_logic lab=iovdd}
C {devices/gnd.sym} 1650 -520 0 0 {name=l15 lab=GND}
