v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -630 -110 -510 -110 {
lab=clkin}
N -290 -110 -200 -110 {
lab=clkinbb}
N -80 -90 0 -90 {
lab=#net1}
N 80 -90 140 -90 {
lab=#net2}
N 220 -90 280 -90 {
lab=#net3}
N -400 -110 -370 -110 {
lab=nand_B2}
N -280 -70 -200 -70 {
lab=nand_B1}
N -280 -70 -280 -50 {
lab=nand_B1}
N 360 -130 360 -90 {
lab=inv_top}
N -400 -110 -400 -80 {
lab=nand_B2}
N -430 -110 -400 -110 {
lab=nand_B2}
C {devices/ipin.sym} -630 -110 0 0 {name=p1 lab=clkin
}
C {devices/lab_wire.sym} -240 -110 1 0 {name=p2 sig_type=std_logic lab=clkinbb}
C {sg13g2_stdcells/sg13g2_inv_4.sym} 40 -90 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 180 -90 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 320 -90 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} -470 -110 0 0 {name=x13 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} -330 -110 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} -140 -90 2 1 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/iopin.sym} -400 -80 1 0 {name=p3 lab=nand_B2}
C {devices/iopin.sym} -280 -50 1 0 {name=p5 lab=nand_B1}
C {devices/iopin.sym} 360 -130 3 0 {name=p4 lab=inv_top}
