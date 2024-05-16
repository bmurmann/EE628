v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -410 -190 -410 -90 {
lab=clkin}
N -410 -190 -230 -190 {
lab=clkin}
N 110 -500 110 -460 {
lab=vin}
N 70 -150 120 -150 {
lab=p2}
N 70 -170 120 -170 {
lab=p1}
N 70 -190 120 -190 {
lab=p1e}
N 70 -130 120 -130 {
lab=p2e}
N 210 -500 210 -460 {
lab=d}
N 830 -360 830 -340 {
lab=vout}
N 720 -360 830 -360 {
lab=vout}
N 720 -360 720 -330 {
lab=vout}
C {devices/vsource.sym} -430 -620 0 0 {name=Vssd value="dc 0" savecurrent=false}
C {devices/vsource.sym} -340 -620 0 0 {name=Vddd value="dc \{vdd\}" savecurrent=false}
C {devices/vsource.sym} -230 -620 0 0 {name=Vres value="dc \{vdd\} pwl(0, \{vdd\}, \{per/4\}, \{vdd\}, \{per/4 + 50p\}, 0)" savecurrent=false}
C {devices/vsource.sym} -430 -440 0 0 {name=Vssa value="dc 0" savecurrent=false}
C {devices/vsource.sym} -330 -440 0 0 {name=Vdda value="dc \{vdd\}" savecurrent=false}
C {devices/vsource.sym} -230 -440 0 0 {name=Vlo value="dc \{vlo\}" savecurrent=false}
C {devices/vsource.sym} -130 -440 0 0 {name=Vhi value="dc \{vhi\}" savecurrent=false}
C {devices/lab_wire.sym} -430 -470 0 0 {name=p1 sig_type=std_logic lab=vssa}
C {devices/gnd.sym} -430 -410 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -330 -470 0 0 {name=p2 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} -330 -410 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -230 -470 0 0 {name=p3 sig_type=std_logic lab=vlo}
C {devices/gnd.sym} -230 -410 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -130 -470 0 0 {name=p4 sig_type=std_logic lab=vhi}
C {devices/gnd.sym} -130 -410 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -230 -650 0 0 {name=p5 sig_type=std_logic lab=res}
C {devices/gnd.sym} -230 -590 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -340 -590 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -430 -590 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} -340 -650 0 0 {name=l8 lab=VDD}
C {devices/vdd.sym} -430 -650 0 0 {name=l9 lab=VSS}
C {devices/vsource.sym} -410 -60 0 0 {name=Vp3 value="pulse(\{vdd\}, \{0\}, \{per/2\}, 100p, 100p, \{per/2\}, \{per\})" savecurrent=false}
C {devices/lab_wire.sym} -320 -190 0 0 {name=p6 sig_type=std_logic lab=clkin}
C {devices/gnd.sym} -410 -30 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 110 -430 0 0 {name=Vin value="dc \{vin\}" savecurrent=false}
C {devices/lab_wire.sym} 110 -500 0 0 {name=p7 sig_type=std_logic lab=vin}
C {devices/gnd.sym} 110 -400 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 120 -190 0 0 {name=p8 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} 120 -150 0 0 {name=p9 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 120 -170 0 0 {name=p10 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 460 -300 0 1 {name=p11 sig_type=std_logic lab=res}
C {devices/lab_wire.sym} 460 -160 2 0 {name=p12 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} 460 -280 2 0 {name=p13 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 460 -180 2 0 {name=p14 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 460 -240 2 0 {name=p15 sig_type=std_logic lab=vhi}
C {devices/lab_wire.sym} 460 -260 2 0 {name=p16 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 460 -220 2 0 {name=p17 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 460 -200 2 0 {name=p18 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 830 -360 0 1 {name=p19 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 460 -140 2 0 {name=p20 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 460 -120 2 0 {name=p21 sig_type=std_logic lab=vlo}
C {devices/vsource.sym} 210 -430 0 0 {name=Vres1 value="pwl(0, 0, 105n, 0, 105.1n, \{vdd\}, 200n, \{vdd\}, 200.1n, 0)" savecurrent=false}
C {devices/lab_wire.sym} 210 -500 0 0 {name=p23 sig_type=std_logic lab=d}
C {devices/gnd.sym} 210 -400 0 0 {name=l12 lab=GND}
C {devices/capa.sym} 830 -310 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 830 -280 0 0 {name=l13 lab=GND}
C {devices/code_shown.sym} 320 -820 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerCAP.lib cap_typ
.inc /foss/pdks/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 310 -1080 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.2 per=20n
.param vin=0.6 vlo=0.3 vhi=0.9 vd=\{vdd\}
.option method = gear2 reltol=1e-4

.control
set color0=white
set wr_singlescale
set wr_vecnames
tran 100p 300n
plot d vout
.endc
"
}
C {devices/lab_wire.sym} 120 -130 0 0 {name=p22 sig_type=std_logic lab=p2e}
C {/foss/designs/clock_5_splitTop.sym} -80 -160 0 0 {name=x1}
C {/foss/designs/layout/integ_5_splitTop.sym} 310 -190 0 0 {name=x2}
C {devices/lab_wire.sym} 460 -100 2 0 {name=p24 sig_type=std_logic lab=vout}
