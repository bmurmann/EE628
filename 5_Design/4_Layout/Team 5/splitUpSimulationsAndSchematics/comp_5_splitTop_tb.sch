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
N -220 -500 -220 -460 {
lab=vinm}
N 70 -150 120 -150 {
lab=p2}
N 70 -170 120 -170 {
lab=p1}
N 70 -130 120 -130 {
lab=#net1}
N -210 -360 -210 -320 {
lab=vinp}
C {devices/vsource.sym} -430 -620 0 0 {name=Vssd value="dc 0" savecurrent=false}
C {devices/vsource.sym} -340 -620 0 0 {name=Vddd value="dc \{vdd\}" savecurrent=false}
C {devices/vsource.sym} -230 -620 0 0 {name=Vres value="dc \{vdd\} pwl(0, \{vdd\}, \{per/4\}, \{vdd\}, \{per/4 + 50p\}, 0)" savecurrent=false}
C {devices/vsource.sym} -430 -440 0 0 {name=Vssa value="dc 0" savecurrent=false}
C {devices/vsource.sym} -330 -440 0 0 {name=Vdda value="dc \{vdd\}" savecurrent=false}
C {devices/lab_wire.sym} -430 -470 0 0 {name=p1 sig_type=std_logic lab=vssa}
C {devices/gnd.sym} -430 -410 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -330 -470 0 0 {name=p2 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} -330 -410 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -230 -650 0 0 {name=p5 sig_type=std_logic lab=res}
C {devices/gnd.sym} -230 -590 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -340 -590 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -430 -590 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} -340 -650 0 0 {name=l8 lab=VDD}
C {devices/vdd.sym} -430 -650 0 0 {name=l9 lab=VSS}
C {/foss/designs/clock.sym} -80 -160 0 0 {name=x1}
C {devices/vsource.sym} -410 -60 0 0 {name=Vp3 value="pulse(\{vdd\}, \{0\}, \{per/2\}, 100p, 100p, \{per/2\}, \{per\})" savecurrent=false}
C {devices/lab_wire.sym} -320 -190 0 0 {name=p6 sig_type=std_logic lab=clkin}
C {devices/gnd.sym} -410 -30 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -220 -430 0 0 {name=Vd value="dc \{vdd\} pwl(0, \{v1\}, 105n, \{v1\}, 105.1n, \{v2\})" savecurrent=false}
C {devices/lab_wire.sym} -220 -500 0 0 {name=p7 sig_type=std_logic lab=vinm}
C {devices/gnd.sym} -220 -400 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 120 -150 0 0 {name=p9 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 120 -170 0 0 {name=p10 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 390 -500 0 0 {name=p11 sig_type=std_logic lab=res}
C {devices/lab_wire.sym} 390 -480 0 0 {name=p13 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 390 -540 0 0 {name=p14 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 390 -460 0 0 {name=p15 sig_type=std_logic lab=vinm}
C {devices/lab_wire.sym} 390 -520 0 0 {name=p16 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} 690 -540 0 1 {name=p18 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 690 -480 0 1 {name=p20 sig_type=std_logic lab=vssa}
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
.param vmid=0.6 v1=\{vmid-100m\} v2=\{vmid+100m\}
.option method = gear2 reltol=1e-4
.ic v(x2.out1p)=0

.control
tran 100p 200n
set color0=white
plot vinm x2.x2.vinm_samp d dd
.endc
"
}
C {devices/vsource.sym} -210 -290 0 0 {name=Vmid value="dc \{vmid\}" savecurrent=false}
C {devices/lab_wire.sym} -210 -360 0 0 {name=p3 sig_type=std_logic lab=vinp}
C {devices/gnd.sym} -210 -260 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 690 -520 0 1 {name=p4 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 690 -500 0 1 {name=p8 sig_type=std_logic lab=dd}
C {/foss/designs/comp_5_splitTop.sym} 540 -500 0 0 {name=x2}
