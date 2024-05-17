v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 550 -140 580 -140 {
lab=#net1}
N 550 -320 580 -320 {
lab=#net2}
N 190 -340 190 -120 {
lab=clkinb}
N 660 -140 690 -140 {
lab=#net3}
N 660 -320 690 -320 {
lab=#net4}
N 770 -140 800 -140 {
lab=#net5}
N 770 -320 800 -320 {
lab=#net6}
N 890 -140 910 -140 {
lab=a2}
N 1000 -140 1020 -140 {
lab=p2e}
N 1000 -320 1020 -320 {
lab=p1e}
N 890 -360 890 -320 {
lab=a1}
N 890 -320 910 -320 {
lab=a1}
N 890 -140 890 -100 {
lab=a2}
N 880 -140 890 -140 {
lab=a2}
N 880 -320 890 -320 {
lab=a1}
N 1110 -200 1110 -140 {
lab=b2}
N 1110 -320 1110 -260 {
lab=b1}
N 660 -260 720 -200 {
lab=b2}
N 290 -260 660 -260 {
lab=b2}
N 660 -200 720 -260 {
lab=b1}
N 290 -200 660 -200 {
lab=b1}
N 1250 -340 1280 -340 {
lab=#net7}
N 1250 -120 1280 -120 {
lab=#net8}
N 1360 -340 1390 -340 {
lab=#net9}
N 1360 -120 1390 -120 {
lab=#net10}
N 1470 -340 1500 -340 {
lab=p1}
N 1470 -120 1500 -120 {
lab=p2}
N 1000 -140 1000 -60 {
lab=p2e}
N 990 -140 1000 -140 {
lab=p2e}
N 1000 -400 1000 -320 {
lab=p1e}
N 990 -320 1000 -320 {
lab=p1e}
N 440 -320 470 -320 {
lab=#net11}
N 440 -140 470 -140 {
lab=#net12}
N 290 -300 320 -300 {
lab=b2}
N 290 -340 320 -340 {
lab=clkinbb}
N 290 -160 320 -160 {
lab=b1}
N 290 -200 290 -160 {
lab=b1}
N 290 -300 290 -260 {
lab=b2}
N 190 -340 210 -340 {
lab=clkinb}
N 190 -120 320 -120 {
lab=clkinb}
N 180 -340 190 -340 {
lab=clkinb}
N 70 -340 100 -340 {
lab=clkin}
N 720 -260 1110 -260 {
lab=b1}
N 720 -200 1110 -200 {
lab=b2}
N 1110 -320 1130 -320 {
lab=b1}
N 1100 -320 1110 -320 {
lab=b1}
N 1110 -140 1130 -140 {
lab=b2}
N 1100 -140 1110 -140 {
lab=b2}
N 890 -360 1130 -360 {
lab=a1}
N 890 -100 1130 -100 {
lab=a2}
N 1000 -400 1500 -400 {
lab=p1e}
N 1000 -60 1500 -60 {
lab=p2e}
C {devices/title.sym} 190 0 0 0 {name=l1 author="Alex Montoya"}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 140 -340 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 380 -320 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 250 -340 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 510 -320 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 380 -140 0 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 510 -140 0 0 {name=x9 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} 70 -340 0 0 {name=p1 lab=clkin}
C {devices/opin.sym} 1500 -60 0 0 {name=p6 lab=p2e}
C {devices/opin.sym} 1500 -120 0 0 {name=p7 lab=p2}
C {devices/opin.sym} 1500 -340 0 0 {name=p8 lab=p1}
C {devices/opin.sym} 1500 -400 0 0 {name=p9 lab=p1e}
C {sg13g2_stdcells/sg13g2_inv_4.sym} 620 -320 0 0 {name=x15 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 620 -140 0 0 {name=x16 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 730 -320 0 0 {name=x17 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 730 -140 0 0 {name=x18 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 840 -320 0 0 {name=x19 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 840 -140 0 0 {name=x20 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 950 -320 0 0 {name=x21 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 950 -140 0 0 {name=x22 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1060 -320 0 0 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1060 -140 0 0 {name=x24 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 1190 -340 0 0 {name=x25 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 1190 -120 2 1 {name=x26 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1320 -340 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1320 -120 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 1430 -340 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 1430 -120 0 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 310 -340 2 1 {name=p2 sig_type=std_logic lab=clkinbb}
C {devices/lab_wire.sym} 300 -120 2 1 {name=p3 sig_type=std_logic lab=clkinb}
C {devices/lab_wire.sym} 1120 -360 2 0 {name=p4 sig_type=std_logic lab=a1}
C {devices/lab_wire.sym} 1120 -320 2 0 {name=p5 sig_type=std_logic lab=b1}
C {devices/lab_wire.sym} 1120 -140 0 1 {name=p10 sig_type=std_logic lab=b2}
C {devices/lab_wire.sym} 1120 -100 0 1 {name=p11 sig_type=std_logic lab=a2}
