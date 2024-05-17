v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -740 180 -740 {
lab=clkin}
N 280 -740 300 -740 {
lab=clkinb}
N 380 -740 420 -740 {
lab=clkinbb}
N 540 -720 580 -720 {
lab=#net1}
N 660 -720 700 -720 {
lab=#net2}
N 780 -720 820 -720 {
lab=#net3}
N 900 -720 940 -720 {
lab=#net4}
N 1040 -720 1060 -720 {
lab=a1}
N 1320 -720 1460 -720 {
lab=b1}
N 1580 -740 1620 -740 {
lab=#net5}
N 1700 -740 1740 -740 {
lab=#net6}
N 1820 -740 1920 -740 {
lab=p1}
N 540 -520 580 -520 {
lab=#net7}
N 660 -520 700 -520 {
lab=#net8}
N 780 -520 820 -520 {
lab=#net9}
N 900 -520 940 -520 {
lab=#net10}
N 1040 -520 1060 -520 {
lab=a2}
N 1160 -520 1180 -520 {
lab=p2e}
N 1320 -520 1460 -520 {
lab=b2}
N 1580 -500 1620 -500 {
lab=#net11}
N 1700 -500 1740 -500 {
lab=#net12}
N 1820 -500 1920 -500 {
lab=p2}
N 400 -660 1020 -660 {
lab=b2}
N 1020 -660 1060 -580 {
lab=b2}
N 1060 -580 1320 -580 {
lab=b2}
N 1320 -580 1320 -520 {
lab=b2}
N 1260 -520 1320 -520 {
lab=b2}
N 400 -580 1020 -580 {
lab=b1}
N 1020 -580 1060 -660 {
lab=b1}
N 1060 -660 1320 -660 {
lab=b1}
N 1320 -720 1320 -660 {
lab=b1}
N 1260 -720 1320 -720 {
lab=b1}
N 400 -700 420 -700 {
lab=b2}
N 400 -700 400 -660 {
lab=b2}
N 380 -660 400 -660 {
lab=b2}
N 400 -540 420 -540 {
lab=b1}
N 400 -580 400 -540 {
lab=b1}
N 380 -580 400 -580 {
lab=b1}
N 280 -740 280 -500 {
lab=clkinb}
N 260 -740 280 -740 {
lab=clkinb}
N 280 -500 420 -500 {
lab=clkinb}
N 1040 -760 1040 -720 {
lab=a1}
N 1020 -720 1040 -720 {
lab=a1}
N 1040 -760 1460 -760 {
lab=a1}
N 1040 -520 1040 -480 {
lab=a2}
N 1020 -520 1040 -520 {
lab=a2}
N 1040 -480 1460 -480 {
lab=a2}
N 1160 -720 1180 -720 {
lab=p1e}
N 1160 -820 1160 -720 {
lab=p1e}
N 1140 -720 1160 -720 {
lab=p1e}
N 1160 -820 1920 -820 {
lab=p1e}
N 1160 -520 1160 -420 {
lab=p2e}
N 1140 -520 1160 -520 {
lab=p2e}
N 1160 -420 1920 -420 {
lab=p2e}
C {devices/ipin.sym} 140 -740 0 0 {name=p1 lab=clkin}
C {devices/opin.sym} 1920 -820 0 0 {name=p2 lab=p1e}
C {devices/opin.sym} 1920 -740 0 0 {name=p3 lab=p1}
C {devices/opin.sym} 1920 -500 0 0 {name=p4 lab=p2}
C {devices/opin.sym} 1920 -420 0 0 {name=p5 lab=p2e}
C {devices/lab_pin.sym} 1410 -720 1 0 {name=p8 sig_type=std_logic lab=b1}
C {devices/lab_pin.sym} 1430 -520 1 0 {name=p9 sig_type=std_logic lab=b2}
C {devices/lab_pin.sym} 1410 -480 1 0 {name=p10 sig_type=std_logic lab=a2}
C {devices/lab_pin.sym} 1410 -760 1 0 {name=p12 sig_type=std_logic lab=a1}
C {devices/title.sym} 280 -50 0 0 {name=l1 author="Group"}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 220 -740 0 0 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 340 -740 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 480 -520 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 480 -720 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 740 -720 0 0 {name=x14 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 620 -720 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 860 -720 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 980 -720 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1100 -720 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1220 -720 0 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1220 -520 0 0 {name=x9 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1100 -520 0 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 980 -520 0 0 {name=x15 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 860 -520 0 0 {name=x16 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 740 -520 0 0 {name=x17 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 620 -520 0 0 {name=x18 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 1520 -740 0 0 {name=x11 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 1520 -500 2 1 {name=x19 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1660 -740 0 0 {name=x12 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1660 -500 0 0 {name=x20 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 410 -740 1 0 {name=p6 sig_type=std_logic lab=clkinbb}
C {devices/lab_pin.sym} 340 -500 1 0 {name=p7 sig_type=std_logic lab=clkinb}
C {sg13g2_stdcells/sg13g2_inv_8.sym} 1780 -740 0 0 {name=x13 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 1780 -500 0 0 {name=x21 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sg13g2_ }
