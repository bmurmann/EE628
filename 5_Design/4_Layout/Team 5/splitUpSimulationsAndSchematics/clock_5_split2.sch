v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 130 210 130 {
lab=a2}
N 330 130 350 130 {
lab=p2e}
N 670 150 750 150 {
lab=#net1}
N 830 150 890 150 {
lab=#net2}
N 500 130 550 130 {
lab=nand_B1}
N 180 170 550 170 {
lab=a2}
N 180 130 180 170 {
lab=a2}
N 500 60 500 130 {
lab=nand_B1}
N 330 130 330 220 {
lab=p2e}
N 330 220 1070 220 {
lab=p2e}
N 970 150 1070 150 {
lab=p2}
N 150 130 180 130 {
lab=a2}
N 430 130 500 130 {
lab=nand_B1}
N 290 130 330 130 {
lab=p2e}
N 70 80 70 130 {
lab=inv_bottom}
C {sg13g2_stdcells/sg13g2_inv_4.sym} 110 130 0 0 {name=x19 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 250 130 0 0 {name=x20 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 390 130 0 0 {name=x21 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 790 150 0 0 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 930 150 0 0 {name=x12 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/opin.sym} 1070 150 0 0 {name=p6 lab=p2}
C {devices/opin.sym} 1070 220 0 0 {name=p7 lab=p2e}
C {devices/lab_wire.sym} 530 170 0 0 {name=p11 sig_type=std_logic lab=a2}
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 610 150 2 1 {name=x15 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/iopin.sym} 70 80 0 0 {name=p1 lab=inv_bottom}
C {devices/iopin.sym} 500 60 3 0 {name=p2 lab=nand_B1}
