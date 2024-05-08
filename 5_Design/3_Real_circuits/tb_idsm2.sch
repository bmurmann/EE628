v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -620 -310 -620 -290 {
lab=GND}
N -980 -310 -980 -290 {
lab=GND}
N -980 -410 -980 -370 {p1
lab=vssa}
N -800 -530 -800 -510 {
lab=GND}
N -800 -640 -800 -590 {
lab=res}
N -520 -310 -520 -290 {
lab=GND}
N -890 -530 -890 -510 {
lab=GND}
N -890 -630 -890 -590 {p1
lab=VDD}
N -980 -530 -980 -510 {
lab=GND}
N -980 -630 -980 -590 {p1
lab=VSS}
N -890 -310 -890 -290 {
lab=GND}
N -890 -410 -890 -370 {p1
lab=vdda}
N -520 -410 -520 -370 {
lab=clkin}
N -800 -310 -800 -290 {
lab=GND}
N -800 -410 -800 -370 {p1
lab=vlo}
N -710 -310 -710 -290 {
lab=GND}
N -710 -410 -710 -370 {p1
lab=vhi}
N -620 -410 -620 -370 {
lab=vin}
N -430 -600 -400 -600 {
lab=vhi}
N -430 -580 -400 -580 {
lab=vlo}
N -430 -560 -400 -560 {
lab=vdda}
N -430 -540 -400 -540 {
lab=vssa}
N -430 -520 -400 -520 {
lab=vin}
N -430 -500 -400 -500 {
lab=res}
N -430 -480 -400 -480 {
lab=clkin}
N -100 -600 -50 -600 {
lab=dout}
N -50 -600 -50 -580 {
lab=dout}
N -50 -520 -50 -500 {
lab=GND}
C {devices/title.sym} -790 -60 0 0 {name=l1 author="Boris Murmann"}
C {devices/vsource.sym} -620 -340 0 0 {name=Vin value="dc \{vin\}"}
C {devices/gnd.sym} -980 -290 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} -980 -340 0 0 {name=Vssa value="dc 0"}
C {devices/lab_wire.sym} -980 -410 0 0 {name=p12 sig_type=std_logic lab=vssa}
C {devices/gnd.sym} -800 -510 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -800 -560 0 0 {name=Vres value="dc \{vdd\} pwl(0, \{vdd\}, \{per/2\}, \{vdd\}, \{per/2+25p\}, 0)"}
C {devices/lab_wire.sym} -800 -630 0 0 {name=p27 sig_type=std_logic lab=res}
C {devices/gnd.sym} -520 -290 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -520 -340 0 0 {name=Vclk value="pulse(\{vdd\}, 0, \{per\}, 100p, 100p, \{0.5*per\}, \{per\}) "}
C {devices/gnd.sym} -890 -510 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -890 -560 0 0 {name=Vddd value="dc \{vdd\}"}
C {devices/vdd.sym} -890 -630 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} -980 -510 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -980 -560 0 0 {name=Vssd value="dc 0"}
C {devices/vdd.sym} -980 -630 0 0 {name=l11 lab=VSS}
C {devices/gnd.sym} -890 -290 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} -890 -340 0 0 {name=Vdda value="dc \{vdd\}"}
C {devices/lab_wire.sym} -890 -410 0 0 {name=p7 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} -620 -290 0 0 {name=l15 lab=GND}
C {devices/code_shown.sym} 0 -560 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 per=20n N=110
.param vlo=0.3 vhi=0.9 vdd=1.2 vin=0.6
.option method=gear reltol=1e-5
.ic v(x1.x3.out1p)=0
.tran 100p \{per*N\} uic
.meas tran iavg_ana AVG i(Vdda)
.meas tran iavg_dig AVG i(Vddd)

.control
set wr_singlescale
set wr_vecnames
option numdgt = 3
let index = 1 
foreach vin_val 0.35 0.4 0.45 0.5 0.55 0.6 0.65 0.7 0.75 0.8 0.85
  alterparam vin = $vin_val
  reset
  run
  set file = \{tb_idsm2_\}\{$&index\}\{.txt\}
  wrdata $file x1.vout1 x1.vout2 dout x1.p1 x1.p2
  destroy $curplot
  let index = index + 1  
end
.endc
"}
C {devices/lab_wire.sym} -80 -600 0 1 {name=p4 sig_type=std_logic lab=dout}
C {devices/code_shown.sym} -980 -200 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {template_idsm2.sym} -250 -540 0 0 {name=x1}
C {devices/lab_wire.sym} -520 -410 0 0 {name=p1 sig_type=std_logic lab=clkin}
C {devices/gnd.sym} -800 -290 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -800 -340 0 0 {name=Vlo value="dc \{vlo\}"}
C {devices/lab_wire.sym} -800 -410 0 0 {name=p2 sig_type=std_logic lab=vlo}
C {devices/gnd.sym} -710 -290 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -710 -340 0 0 {name=Vhi value="dc \{vhi\}"}
C {devices/lab_wire.sym} -710 -410 0 0 {name=p3 sig_type=std_logic lab=vhi}
C {devices/lab_wire.sym} -620 -410 0 0 {name=p5 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} -430 -600 0 0 {name=p6 sig_type=std_logic lab=vhi}
C {devices/lab_wire.sym} -430 -580 0 0 {name=p8 sig_type=std_logic lab=vlo}
C {devices/lab_wire.sym} -430 -560 0 0 {name=p9 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -430 -540 0 0 {name=p10 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -430 -520 0 0 {name=p11 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} -430 -500 0 0 {name=p13 sig_type=std_logic lab=res}
C {devices/lab_wire.sym} -430 -480 0 0 {name=p14 sig_type=std_logic lab=clkin}
C {devices/capa.sym} -50 -550 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -50 -500 0 0 {name=l4 lab=GND}
