v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 120 -10 120 {
lab=#net1}
N 70 120 130 120 {
lab=#net2}
N 210 120 270 120 {
lab=#net3}
N -400 140 -210 140 {
lab=nand_B2}
N -280 100 -210 100 {
lab=nand_A2}
N -280 90 -280 100 {
lab=nand_A2}
N 350 70 350 120 {
lab=inv_bottom}
C {sg13g2_stdcells/sg13g2_inv_4.sym} 30 120 0 0 {name=x16 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 170 120 0 0 {name=x17 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 310 120 0 0 {name=x18 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} -150 120 0 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/iopin.sym} 350 70 3 0 {name=p1 lab=inv_bottom}
C {devices/iopin.sym} -280 90 3 0 {name=p2 lab=nand_A2}
C {devices/iopin.sym} -400 140 3 0 {name=p4 lab=nand_B2}
