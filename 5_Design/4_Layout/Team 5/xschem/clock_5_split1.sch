v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -80 220 -80 {
lab=a1}
N 330 -80 360 -80 {
lab=p1e}
N 680 -100 760 -100 {
lab=#net1}
N 840 -100 900 -100 {
lab=#net2}
N 500 -80 560 -80 {
lab=nand_A2}
N 180 -120 560 -120 {
lab=a1}
N 180 -120 180 -80 {
lab=a1}
N 500 -80 500 0 {
lab=nand_A2}
N 330 -180 330 -80 {
lab=p1e}
N 330 -180 1070 -180 {
lab=p1e}
N 980 -100 1070 -100 {
lab=p1}
N 160 -80 180 -80 {
lab=a1}
N 440 -80 500 -80 {
lab=nand_A2}
N 300 -80 330 -80 {
lab=p1e}
N 80 -120 80 -80 {
lab=inv_top}
C {sg13g2_stdcells/sg13g2_inv_4.sym} 120 -80 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 260 -80 0 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 400 -80 0 0 {name=x9 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 800 -100 0 0 {name=x11 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 940 -100 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/opin.sym} 1070 -180 0 0 {name=p4 lab=p1e}
C {devices/opin.sym} 1070 -100 0 0 {name=p5 lab=p1}
C {devices/lab_wire.sym} 530 -120 0 0 {name=p8 sig_type=std_logic lab=a1}
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 620 -100 0 0 {name=x14 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/iopin.sym} 80 -120 0 1 {name=p1 lab=inv_top}
C {devices/iopin.sym} 500 0 0 1 {name=p2 lab=nand_A2}
