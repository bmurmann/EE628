v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 -80 -50 -80 {
lab=#net1}
N -230 -80 -200 -80 {
lab=#net2}
N -230 -80 -230 110 {
lab=#net2}
N -230 110 -50 110 {
lab=#net2}
N -80 -40 -50 -40 {
lab=#net3}
N -80 -40 -80 0 {
lab=#net3}
N -80 0 470 0 {
lab=#net3}
N -80 70 -50 70 {
lab=#net4}
N -80 30 -80 70 {
lab=#net4}
N -80 30 470 30 {
lab=#net4}
N -90 30 -80 30 {
lab=#net4}
N -100 0 -80 0 {
lab=#net3}
N 70 90 100 90 {
lab=#net5}
N 180 90 210 90 {
lab=#net6}
N 290 90 330 90 {
lab=#net7}
N 400 90 450 90 {
lab=#net8}
N 840 90 860 90 {
lab=p2e}
N 180 -60 210 -60 {
lab=#net9}
N 290 -60 320 -60 {
lab=#net10}
N 400 -60 440 -60 {
lab=#net11}
N 720 -60 740 -60 {
lab=#net12}
N 840 -60 860 -60 {
lab=p1e}
N 60 -60 100 -60 {
lab=#net13}
N 470 30 540 0 {
lab=#net4}
N 470 0 540 30 {
lab=#net3}
N 940 -60 990 -60 {
lab=#net4}
N 990 -60 990 0 {
lab=#net4}
N 940 90 990 90 {
lab=#net3}
N 990 30 990 90 {
lab=#net3}
N 990 90 1030 90 {
lab=#net3}
N 990 -60 1040 -60 {
lab=#net4}
N 720 90 740 90 {
lab=#net14}
N 720 130 1030 130 {
lab=#net14}
N 720 90 720 130 {
lab=#net14}
N 720 -100 1040 -100 {
lab=#net12}
N 720 -100 720 -60 {
lab=#net12}
N 840 -150 840 -60 {
lab=p1e}
N 820 -60 840 -60 {
lab=p1e}
N 840 -150 1210 -150 {
lab=p1e}
N 1150 110 1170 110 {
lab=#net15}
N 1250 110 1280 110 {
lab=#net16}
N 1160 -80 1180 -80 {
lab=#net17}
N 1260 -80 1290 -80 {
lab=#net18}
N 1370 -80 1400 -80 {
lab=p1}
N 1360 110 1390 110 {
lab=p2}
N 840 90 840 200 {
lab=p2e}
N 820 90 840 90 {
lab=p2e}
N 840 200 1200 200 {
lab=p2e}
N -360 -80 -340 -80 {
lab=clkIn}
N -260 -80 -230 -80 {
lab=#net2}
N 520 90 720 90 {
lab=#net19}
N 520 -60 720 -60 {
lab=#net20}
N 540 0 990 0 {
lab=#net4}
N 540 30 990 30 {
lab=#net3}
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 10 -60 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 10 90 2 1 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 1090 110 2 1 {name=x17 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 1100 -80 0 0 {name=x18 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} -360 -80 0 0 {name=p1 lab=clkIn}
C {devices/opin.sym} 1400 -80 0 0 {name=p2 lab=p1}
C {devices/opin.sym} 1210 -150 0 0 {name=p3 lab=p1e}
C {devices/opin.sym} 1390 110 0 0 {name=p4 lab=p2}
C {devices/opin.sym} 1200 200 0 0 {name=p5 lab=p2e}
C {sg13g2_stdcells/sg13g2_inv_4.sym} 360 -60 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 480 -60 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 780 -60 0 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 360 90 0 0 {name=x11 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 480 90 0 0 {name=x12 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 780 90 0 0 {name=x13 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 900 90 0 0 {name=x14 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 900 -60 0 0 {name=x15 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1220 -80 0 0 {name=x16 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1210 110 0 0 {name=x19 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 1330 -80 0 0 {name=x20 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 1320 110 0 0 {name=x21 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} -160 -80 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} -300 -80 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 140 90 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 250 90 0 0 {name=x9 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 140 -60 0 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 250 -60 0 0 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
