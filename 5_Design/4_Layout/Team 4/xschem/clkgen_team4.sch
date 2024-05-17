v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -580 110 -560 110 {
lab=b1}
N -580 -20 -560 -20 {
lab=b2}
N 100 -40 110 -40 {
lab=p1e}
N -730 -60 -720 -60 {
lab=#net1}
N -730 -60 -730 150 {
lab=#net1}
N -750 -60 -730 -60 {
lab=#net1}
N -730 150 -560 150 {
lab=#net1}
N -640 -60 -560 -60 {
lab=#net2}
N -850 -60 -830 -60 {
lab=clkin}
N 230 -40 270 -40 {
lab=b1}
N 230 130 270 130 {
lab=b2}
N 100 130 110 130 {
lab=p2e}
N 70 -40 100 -40 {
lab=p1e}
N -10 130 0 130 {
lab=a2}
N 510 150 550 150 {
lab=#net3}
N -10 -80 -10 -40 {
lab=a1}
N 100 -160 100 -40 {
lab=p1e}
N -10 -80 270 -80 {
lab=a1}
N -10 170 270 170 {
lab=a2}
N -10 130 -10 170 {
lab=a2}
N 100 130 100 220 {
lab=p2e}
N 80 130 100 130 {
lab=p2e}
N 390 -60 430 -60 {
lab=#net4}
N 390 150 430 150 {
lab=#net5}
N 100 220 680 220 {
lab=p2e}
N 100 -160 690 -160 {
lab=p1e}
N 630 -60 690 -60 {
lab=p1}
N 630 150 680 150 {
lab=p2}
N 510 -60 550 -60 {
lab=#net6}
N -440 -40 -410 -40 {
lab=#net7}
N -440 130 -410 130 {
lab=#net8}
N -330 -40 -310 -40 {
lab=#net9}
N -330 130 -310 130 {
lab=#net10}
N -230 130 -210 130 {
lab=#net11}
N -130 130 -110 130 {
lab=#net12}
N -30 130 -10 130 {
lab=a2}
N -30 -40 -10 -40 {
lab=a1}
N -130 -40 -110 -40 {
lab=#net13}
N -230 -40 -210 -40 {
lab=#net14}
N -580 60 -580 110 {
lab=b1}
N -580 60 -370 60 {
lab=b1}
N -580 -20 -580 20 {
lab=b2}
N -580 20 -370 20 {
lab=b2}
N -370 20 -60 60 {
lab=b2}
N -370 60 -60 20 {
lab=b1}
N -60 20 230 20 {
lab=b1}
N 230 -40 230 20 {
lab=b1}
N 190 -40 230 -40 {
lab=b1}
N -60 60 230 60 {
lab=b2}
N 230 60 230 130 {
lab=b2}
N 190 130 230 130 {
lab=b2}
C {devices/code_shown.sym} 1150 -160 0 0 {name=NGSPICE only_toplevel=true
value="
.param temp=27 vdd=1.2 per=20n
.option method=gear2

.control
save all
tran 10p 15n
set color0=white
plot p1 p2
.endc
"}
C {devices/code_shown.sym} 1150 100 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ
.inc /foss/pdks/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/opin.sym} 690 -160 0 0 {name=p1 lab=p1e}
C {devices/opin.sym} 690 -60 0 0 {name=p2 lab=p1}
C {devices/opin.sym} 680 150 0 0 {name=p3 lab=p2}
C {devices/opin.sym} 680 220 0 0 {name=p4 lab=p2e}
C {devices/ipin.sym} -850 -60 0 0 {name=p7 lab=clkin}
C {sg13g2_stdcells/sg13g2_inv_2.sym} -790 -60 0 0 {name=x15 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} -680 -60 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} -500 130 0 0 {name=x17 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} -500 -40 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 330 -60 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 330 150 2 1 {name=x11 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 470 -60 0 0 {name=x12 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 470 150 0 0 {name=x13 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 40 130 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 150 130 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 150 -40 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 30 -40 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} -170 -40 0 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} -370 -40 0 0 {name=x16 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} -270 -40 0 0 {name=x18 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} -70 -40 0 0 {name=x19 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} -170 130 0 0 {name=x14 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} -370 130 0 0 {name=x20 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} -270 130 0 0 {name=x21 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} -70 130 0 0 {name=x22 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 260 170 0 0 {name=p8 sig_type=std_logic lab=a2}
C {devices/lab_wire.sym} 260 130 0 0 {name=p9 sig_type=std_logic lab=b2}
C {devices/lab_wire.sym} 260 -80 0 0 {name=p10 sig_type=std_logic lab=a1}
C {devices/lab_wire.sym} 260 -40 0 0 {name=p11 sig_type=std_logic lab=b1}
C {sg13g2_stdcells/sg13g2_inv_8.sym} 590 -60 0 0 {name=x9 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 590 150 0 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
