v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -410 280 -410 {
lab=clkinb}
N 360 -410 500 -410 {
lab=clkinbb}
N 240 -220 500 -220 {
lab=clkinb}
N 240 -410 240 -220 {
lab=clkinb}
N 210 -410 240 -410 {
lab=clkinb}
N 1340 -390 1410 -390 {
lab=b1}
N 1410 -390 1410 -340 {
lab=b1}
N 470 -300 470 -260 {
lab=b1}
N 470 -260 500 -260 {
lab=b1}
N 1340 -240 1410 -240 {
lab=b2}
N 1410 -300 1410 -240 {
lab=b2}
N 470 -370 470 -340 {
lab=b2}
N 470 -370 500 -370 {
lab=b2}
N 1410 -390 1510 -390 {
lab=b1}
N 1410 -240 1500 -240 {
lab=b2}
N 100 -410 130 -410 {
lab=clkin}
N 1120 -390 1140 -390 {
lab=a1}
N 1240 -390 1280 -390 {
lab=p1e}
N 1120 -240 1140 -240 {
lab=a2}
N 1240 -240 1260 -240 {
lab=p2e}
N 1130 -340 1410 -340 {
lab=b1}
N 1130 -300 1410 -300 {
lab=b2}
N 1070 -340 1130 -300 {
lab=b2}
N 1070 -300 1130 -340 {
lab=b1}
N 1240 -490 1880 -490 {
lab=p1e}
N 1240 -130 1880 -130 {
lab=p2e}
N 1240 -490 1240 -390 {
lab=p1e}
N 1220 -390 1240 -390 {
lab=p1e}
N 1240 -240 1240 -130 {
lab=p2e}
N 1220 -240 1240 -240 {
lab=p2e}
N 1630 -410 1670 -410 {
lab=#net1}
N 1840 -410 1880 -410 {
lab=p1}
N 1730 -410 1770 -410 {
lab=#net2}
N 1620 -220 1650 -220 {
lab=#net3}
N 1730 -220 1760 -220 {
lab=#net4}
N 1840 -220 1880 -220 {
lab=p2}
N 470 -300 1070 -300 {
lab=b1}
N 470 -340 1070 -340 {
lab=b2}
N 1120 -430 1510 -430 {
lab=a1}
N 1120 -200 1500 -200 {
lab=a2}
N 740 -390 780 -390 {
lab=#net5}
N 860 -390 900 -390 {
lab=#net6}
N 740 -240 780 -240 {
lab=#net7}
N 860 -240 900 -240 {
lab=#net8}
N 980 -390 1020 -390 {
lab=#net9}
N 980 -240 1020 -240 {
lab=#net10}
N 1120 -240 1120 -200 {
lab=a2}
N 1100 -240 1120 -240 {
lab=a2}
N 1120 -430 1120 -390 {
lab=a1}
N 1100 -390 1120 -390 {
lab=a1}
N 620 -390 660 -390 {
lab=#net11}
N 620 -240 660 -240 {
lab=#net12}
C {devices/title.sym} 170 -50 0 0 {name=l1 author="Boris Murmann"}
C {devices/ipin.sym} 100 -410 0 0 {name=p11 lab=clkin}
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 560 -390 0 0 {name=xn1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 940 -390 0 0 {name=xi7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 170 -410 0 0 {name=xi1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 320 -410 0 0 {name=xi2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 560 -240 2 1 {name=xn2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1300 -390 0 0 {name=xi13 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 940 -240 0 0 {name=xi8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1300 -240 0 0 {name=xi14 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 1570 -410 0 0 {name=xn3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 1560 -220 2 1 {name=xn4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/opin.sym} 1880 -490 0 0 {name=p1 lab=p1e}
C {devices/opin.sym} 1880 -410 0 0 {name=p3 lab=p1}
C {devices/opin.sym} 1880 -220 0 0 {name=p4 lab=p2}
C {devices/opin.sym} 1880 -130 0 0 {name=p5 lab=p2e}
C {devices/lab_wire.sym} 420 -220 0 0 {name=p6 sig_type=std_logic lab=clkinb}
C {devices/lab_wire.sym} 420 -410 0 0 {name=p7 sig_type=std_logic lab=clkinbb}
C {devices/lab_wire.sym} 1470 -430 0 0 {name=p8 sig_type=std_logic lab=a1}
C {devices/lab_wire.sym} 1470 -390 0 0 {name=p9 sig_type=std_logic lab=b1}
C {devices/lab_wire.sym} 1470 -240 0 0 {name=p10 sig_type=std_logic lab=b2}
C {devices/lab_wire.sym} 1470 -200 0 0 {name=p12 sig_type=std_logic lab=a2}
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1180 -390 0 0 {name=xi11 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1060 -390 0 0 {name=xi9 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1180 -240 0 0 {name=x12 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1060 -240 0 0 {name=xi10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1690 -410 0 0 {name=xi15 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 1800 -410 0 0 {name=xi17 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1690 -220 0 0 {name=xi16 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 1800 -220 0 0 {name=xi18 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 700 -390 0 0 {name=xi3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 820 -390 0 0 {name=xi5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 700 -240 0 0 {name=xi4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 820 -240 0 0 {name=xi6 VDD=VDD VSS=VSS prefix=sg13g2_ }
