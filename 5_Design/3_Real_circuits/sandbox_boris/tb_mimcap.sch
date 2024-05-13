v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -580 -340 -580 -310 {
lab=GND}
N -370 -480 -170 -480 {
lab=vt}
N -580 -480 -580 -400 {
lab=vt}
N -370 -390 -370 -310 {
lab=GND}
N -170 -390 -170 -310 {
lab=GND}
N -370 -480 -370 -450 {
lab=vt}
N -580 -480 -370 -480 {
lab=vt}
N -170 -480 -170 -450 {
lab=vt}
N -500 -340 -500 -310 {
lab=GND}
N -500 -420 -500 -400 {
lab=vb}
N -500 -420 -400 -420 {
lab=vb}
C {devices/code_shown.sym} 0 -250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/code_shown.sym} 0 -450 0 0 {name=COMMANDS only_toplevel=false
value="
.param temp=27

.control
op
show all
.endc
"}
C {devices/vsource.sym} -580 -370 0 0 {name=V1 value=1 savecurrent=false}
C {devices/gnd.sym} -580 -310 0 0 {name=l2 lab=GND}
C {devices/title.sym} -470 -170 0 0 {name=l4 author="Boris Murmann"}
C {sg13g2_pr/cap_rfcmim.sym} -370 -420 0 0 {name=C1 model=cap_rfcmim W=10.0e-6 L=10.0e-6 wfeed=5.0e-6 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -170 -420 0 0 {name=C2 model=cap_cmim W=7.0e-6 L=7.0e-6 MF=1 spiceprefix=X}
C {devices/gnd.sym} -370 -310 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -170 -310 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -500 -370 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -500 -310 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -430 -480 0 0 {name=p1 sig_type=std_logic lab=vt}
C {devices/lab_wire.sym} -430 -420 0 0 {name=p2 sig_type=std_logic lab=vb}
