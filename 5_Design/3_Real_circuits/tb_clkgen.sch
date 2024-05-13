v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -900 -860 -100 -460 {flags=graph
y1=-0.1
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=10e-09
x2=11.5e-9
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color="12 4 7"
node="p1e
p1
p2"}
N -810 -190 -810 -170 {
lab=GND}
N -1000 -190 -1000 -170 {
lab=GND}
N -1000 -290 -1000 -250 {p1
lab=VDD}
N -910 -190 -910 -170 {
lab=GND}
N -910 -290 -910 -250 {p1
lab=VSS}
N -810 -330 -810 -250 {
lab=clkin}
N -810 -330 -650 -330 {
lab=clkin}
N -270 -180 -270 -160 {
lab=GND}
N -210 -180 -210 -160 {
lab=GND}
N -150 -180 -150 -160 {
lab=GND}
N -90 -180 -90 -160 {
lab=GND}
N -350 -270 -270 -270 {
lab=p2e}
N -270 -270 -270 -240 {
lab=p2e}
N -350 -290 -210 -290 {
lab=p2}
N -210 -290 -210 -240 {
lab=p2}
N -350 -310 -150 -310 {
lab=p1}
N -150 -310 -150 -240 {
lab=p1}
N -350 -330 -90 -330 {
lab=p1e}
N -90 -330 -90 -240 {
lab=p1e}
C {devices/code_shown.sym} 10 -220 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.inc /foss/pdks/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 10 -500 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.2 per=20n cl=25f
.option method=gear

.control
save all 
tran 10p 15n
meas tran tp1e_p1 TRIG v(p1e) VAL=0.6 FALL=1 TARG v(p1) VAL=0.6 FALL=1
meas tran tp1_p2  TRIG v(p1)  VAL=0.6 FALL=1 TARG v(p2) VAL=0.6 RISE=1
write tb_clkgen.raw
.endc
"}
C {devices/gnd.sym} -810 -170 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -810 -220 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 0, 100p, 100p, \{per/2\}, \{per\}) "}
C {devices/title.sym} -750 -40 0 0 {name=l5 author="Boris Murmann"}
C {devices/gnd.sym} -1000 -170 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} -1000 -220 0 0 {name=Vsup value="dc \{vdd\}"}
C {devices/vdd.sym} -1000 -290 0 0 {name=l15 lab=VDD}
C {devices/gnd.sym} -910 -170 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} -910 -220 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} -910 -290 0 0 {name=l17 lab=VSS}
C {devices/capa.sym} -270 -210 0 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -270 -160 0 0 {name=l1 lab=GND}
C {devices/capa.sym} -210 -210 0 0 {name=C2
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -210 -160 0 0 {name=l3 lab=GND}
C {devices/capa.sym} -150 -210 0 0 {name=C3
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -150 -160 0 0 {name=l4 lab=GND}
C {devices/capa.sym} -90 -210 0 0 {name=C4
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -90 -160 0 0 {name=l6 lab=GND}
C {template_clkgen.sym} -500 -300 0 0 {name=x1}
C {devices/lab_wire.sym} -300 -330 0 0 {name=p2 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} -300 -310 0 0 {name=p3 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} -300 -290 0 0 {name=p4 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} -300 -270 0 0 {name=p5 sig_type=std_logic lab=p2e}
C {devices/lab_wire.sym} -730 -330 0 0 {name=p6 sig_type=std_logic lab=clkin}
C {devices/launcher.sym} -630 -420 0 0 {name=h1
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/tb_clkgen.raw tran"
}
