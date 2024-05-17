v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Verifying that the final output driver in the ADC is able to drive out to the pad (200fF) with a 25MHz square wave} 30 -670 2 1 0.4 0.4 {}
N 370 -540 400 -540 {
lab=ps}
N 370 -500 400 -500 {
lab=rb}
N 220 -410 250 -410 {
lab=reset}
N 330 -410 370 -410 {
lab=rb}
N 370 -500 370 -410 {
lab=rb}
N 610 -470 650 -470 {
lab=q}
N 610 -540 610 -470 {
lab=q}
N 610 -540 840 -540 {
lab=q}
N 800 -470 870 -470 {
lab=dout}
N 910 -250 910 -230 {
lab=VDD}
N 850 -150 850 -140 {
lab=GND}
N 850 -150 910 -150 {
lab=GND}
N 910 -170 910 -150 {
lab=GND}
N 580 -180 580 -150 {
lab=GND}
N 580 -260 610 -260 {
lab=ps}
N 580 -260 580 -240 {
lab=ps}
N 800 -580 840 -580 {
lab=VSS}
N 960 -560 990 -560 {
lab=#net1}
N 800 -470 800 -450 {
lab=dout}
N 730 -470 800 -470 {
lab=dout}
N 760 -370 800 -370 {
lab=VSS}
N 800 -390 800 -370 {
lab=VSS}
N 310 -180 310 -150 {
lab=GND}
N 310 -260 340 -260 {
lab=d}
N 310 -260 310 -240 {
lab=d}
N 370 -520 400 -520 {
lab=d}
N 50 -180 50 -150 {
lab=GND}
N 50 -260 80 -260 {
lab=reset}
N 50 -260 50 -240 {
lab=reset}
N 410 -330 440 -330 {
lab=ps}
N 520 -330 750 -330 {
lab=odummy}
N 580 -540 610 -540 {
lab=q}
N 50 -150 310 -150 {
lab=GND}
N 310 -150 580 -150 {
lab=GND}
N 580 -150 850 -150 {
lab=GND}
N 850 -170 850 -150 {
lab=GND}
N 850 -250 850 -230 {
lab=VSS}
N 710 -230 750 -230 {
lab=VSS}
N 750 -250 750 -230 {
lab=VSS}
N 750 -330 750 -310 {
lab=odummy}
C {devices/simulator_commands_shown.sym} 1070 -530 0 0 {name=COMMANDS
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
.options gmin=1e-8 keepopinfo

.control
tran 10n 500n
plot reset ps
plot d
plot q
plot dout
** Debugging Plots
plot rb VDD VSS odummy
plot ps
.endc"}
C {devices/title.sym} 160 -40 0 0 {name=l2 author="Calvin Lee"}
C {sg13g2_stdcells/sg13g2_dfrbp_2.sym} 490 -520 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 290 -410 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 370 -540 0 0 {name=p19 sig_type=std_logic lab=ps}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 690 -470 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/noconn.sym} 580 -520 0 1 {name=l4}
C {sg13g2_stdcells/sg13g2_and2_1.sym} 900 -560 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/vdd.sym} 850 -250 0 0 {name=l1 lab=VSS}
C {devices/vdd.sym} 910 -250 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} 910 -200 0 0 {name=V2 value=1.2 savecurrent=false}
C {devices/vsource.sym} 580 -210 0 0 {name=V3 value="DC 0 PULSE(0 1.2 160n 1n 1n 18n 40n 100)" savecurrent=false}
C {devices/gnd.sym} 850 -140 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 610 -260 0 1 {name=p1 sig_type=std_logic lab=ps}
C {devices/lab_wire.sym} 810 -580 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/noconn.sym} 990 -560 0 1 {name=l5}
C {devices/capa.sym} 800 -420 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 770 -370 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 310 -210 0 0 {name=V4 value="DC 0 PULSE(0 1.2 200n 1n 1n 100n 300n 100)" savecurrent=false}
C {devices/lab_wire.sym} 340 -260 0 1 {name=p4 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 370 -520 0 0 {name=p5 sig_type=std_logic lab=d}
C {devices/vsource.sym} 50 -210 0 0 {name=V5 value="DC 1.2 PULSE(0 1.2 0 1n 1n 120n 1 1)" savecurrent=false}
C {devices/lab_wire.sym} 80 -260 0 1 {name=p6 sig_type=std_logic lab=reset}
C {devices/lab_wire.sym} 220 -410 0 0 {name=p7 sig_type=std_logic lab=reset}
C {devices/lab_wire.sym} 680 -540 0 0 {name=p8 sig_type=std_logic lab=q}
C {devices/lab_wire.sym} 360 -410 0 0 {name=p9 sig_type=std_logic lab=rb}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 480 -330 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 410 -330 0 0 {name=p10 sig_type=std_logic lab=ps}
C {devices/lab_wire.sym} 570 -330 0 0 {name=p11 sig_type=std_logic lab=odummy}
C {devices/vsource.sym} 850 -200 0 0 {name=V1 value=0 savecurrent=false}
C {devices/noconn.sym} 870 -470 0 1 {name=l7}
C {devices/lab_wire.sym} 850 -470 0 0 {name=p12 sig_type=std_logic lab=dout}
C {devices/capa.sym} 750 -280 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 720 -230 0 0 {name=p13 sig_type=std_logic lab=VSS}
