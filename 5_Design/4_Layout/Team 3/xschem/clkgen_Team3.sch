v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -440 -810 -400 -810 {
lab=clkin}
N -300 -810 -270 -810 {
lab=#net1}
N -190 -810 -140 -810 {
lab=#net2}
N -20 -790 40 -790 {
lab=#net3}
N 120 -790 160 -790 {
lab=#net4}
N 240 -790 280 -790 {
lab=#net5}
N 360 -790 400 -790 {
lab=#net6}
N 510 -790 530 -790 {
lab=#net7}
N 640 -790 660 -790 {
lab=p1e}
N 510 -830 510 -790 {
lab=#net7}
N 480 -790 510 -790 {
lab=#net7}
N 510 -830 820 -830 {
lab=#net7
}
N 1070 -810 1160 -810 {
lab=#net8}
N -300 -810 -300 -590 {
lab=#net1}
N -320 -810 -300 -810 {
lab=#net1}
N -300 -590 -130 -590 {
lab=#net1}
N -10 -610 30 -610 {
lab=#net9}
N 110 -610 160 -610 {
lab=#net10}
N 240 -610 280 -610 {
lab=#net11}
N 360 -610 400 -610 {
lab=#net12}
N 500 -610 510 -610 {
lab=#net13}
N 620 -610 650 -610 {
lab=p2e}
N 790 -610 810 -610 {
lab=#net14}
N 500 -610 500 -570 {
lab=#net13}
N 480 -610 500 -610 {
lab=#net13}
N 500 -570 810 -570 {
lab=#net13}
N 620 -610 620 -520 {
lab=p2e}
N 590 -610 620 -610 {
lab=p2e}
N 1070 -590 1150 -590 {
lab=#net15}
N 1240 -810 1280 -810 {
lab=p1}
N 1230 -590 1270 -590 {
lab=p2}
N -130 -670 -130 -630 {
lab=#net16}
N -130 -670 320 -670 {
lab=#net16}
N 320 -670 600 -720 {
lab=#net16}
N 940 -810 990 -810 {
lab=#net17}
N -140 -770 -140 -740 {
lab=#net14}
N -140 -740 320 -740 {
lab=#net14}
N 320 -740 610 -660 {
lab=#net14}
N 930 -590 990 -590 {
lab=#net18}
N 620 -520 1270 -520 {
lab=p2e}
N 610 -790 640 -790 {
lab=p1e}
N 640 -900 640 -790 {
lab=p1e}
N 640 -900 1280 -900 {
lab=p1e}
N 790 -790 820 -790 {
lab=#net16}
N 600 -720 790 -720 {
lab=#net16}
N 790 -790 790 -720 {
lab=#net16}
N 740 -790 790 -790 {
lab=#net16}
N 610 -660 790 -660 {
lab=#net14}
N 790 -660 790 -610 {
lab=#net14}
N 720 -610 790 -610 {
lab=#net14}
C {devices/title.sym} 150 -200 0 0 {name=l1 author="Keith Maki"}
C {devices/ipin.sym} -440 -810 0 0 {name=p2 lab=clkin}
C {devices/opin.sym} 1280 -900 0 0 {name=p1 lab=p1e}
C {devices/opin.sym} 1270 -520 0 0 {name=p3 lab=p2e}
C {devices/opin.sym} 1280 -810 0 0 {name=p4 lab=p1}
C {devices/opin.sym} 1270 -590 0 0 {name=p5 lab=p2}
C {sg13g2_stdcells/sg13g2_inv_2.sym} -360 -810 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} -230 -810 0 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} -80 -790 0 0 {name=x11 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 80 -790 0 0 {name=x12 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 200 -790 0 0 {name=x13 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 320 -790 0 0 {name=x16 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 440 -790 0 0 {name=x17 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 70 -610 0 0 {name=x18 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 200 -610 0 0 {name=x19 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 320 -610 0 0 {name=x20 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 440 -610 0 0 {name=x21 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} -70 -610 2 1 {name=x22 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 570 -790 0 0 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 700 -790 0 0 {name=x24 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 550 -610 0 0 {name=x25 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 690 -610 0 0 {name=x26 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 880 -810 0 0 {name=x27 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 870 -590 2 1 {name=x28 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1030 -810 0 0 {name=x29 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1030 -590 0 0 {name=x30 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 1200 -810 0 0 {name=x31 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 1190 -590 0 0 {name=x32 VDD=VDD VSS=VSS prefix=sg13g2_ }
