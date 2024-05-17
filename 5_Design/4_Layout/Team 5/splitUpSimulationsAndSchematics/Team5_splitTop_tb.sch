v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -500 110 -460 {
lab=vin}
N 210 -500 210 -460 {
lab=clkin}
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
C {devices/vsource.sym} 110 -430 0 0 {name=Vin value="dc \{vin\}" savecurrent=false}
C {devices/lab_wire.sym} 110 -500 0 0 {name=p7 sig_type=std_logic lab=vin}
C {devices/gnd.sym} 110 -400 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 210 -430 0 0 {name=Vclk value="pulse(\{vdd\}, \{0\}, \{per/2\}, 100p, 100p, \{per/2\}, \{per\})" savecurrent=false}
C {devices/lab_wire.sym} 210 -500 0 0 {name=p23 sig_type=std_logic lab=clkin}
C {devices/gnd.sym} 210 -400 0 0 {name=l12 lab=GND}
C {devices/code_shown.sym} 320 -820 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerCAP.lib cap_typ
.inc /foss/pdks/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 300 -1160 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.2 per=20n
.param vin=0.6 vlo=0.3 vhi=0.9
.option method = gear2 reltol=1e-5
*.ic v(x1.x1.x1.out1p)=0
.meas tran iavg_ana AVG i(Vdda)
.meas tran iavg_dig AVG i(Vddd)

.control
tran 100p 1u
set color0=white
plot vin dd x1.x2.vout1 x1.vout2 x1.x1.x1.out1p
.endc
"
}
C {devices/lab_wire.sym} -250 -940 0 0 {name=p6 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -250 -960 0 0 {name=p8 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -250 -980 0 0 {name=p9 sig_type=std_logic lab=vlo}
C {devices/lab_wire.sym} -250 -1000 0 0 {name=p10 sig_type=std_logic lab=vhi}
C {devices/lab_wire.sym} -250 -900 0 0 {name=p11 sig_type=std_logic lab=res}
C {devices/lab_wire.sym} -250 -920 0 0 {name=p12 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} -250 -880 0 0 {name=p13 sig_type=std_logic lab=clkin}
C {devices/lab_wire.sym} 50 -1000 2 0 {name=p14 sig_type=std_logic lab=dd}
C {/foss/designs/Team5_splitTop.sym} -100 -940 0 0 {name=x1}
