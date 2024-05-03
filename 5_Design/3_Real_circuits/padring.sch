v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 930 -1900 930 -1560 {}
L 4 810 -590 810 -250 {}
T {in1

in2

in3

vhi

vlo 

in4

in5

in6} 110 -670 2 0 1 1 {}
T {out1

out2

out3

iovdd

iovss

out4

out5

out6} 2150 -670 2 0 1 1 {}
T {avdd   vref  vldo   iovdd   ck3   ck2   ck1   vdd} 560 -2030 0 0 0.8 0.8 {}
T {avss   avss    res    iovss   ck4    ck5   ck6   vss} 570 -170 0 0 0.8 0.8 {}
T {(downbond)} 510 -200 0 0 0.5 0.5 {}
T {TopVia2 connection 
on top of pas cell
(intended, not dummy)} 290 -1700 0 0 0.4 0.4 {}
T {Via2 connection 
on top of pas cell
(intended, not dummy)} 280 -570 0 0 0.4 0.4 {}
T {avss} 1040 -1110 0 0 0.4 0.4 {}
T {iovss} 1200 -1110 0 0 0.4 0.4 {}
T {Dummy connections to please LVS (no metal connection 
between these 3 nets, only soft short through substrate)

Time permitting, add back-to-back ESD diodes between all
supply domains. (Some are taken care of in the pad cells, 
some are not.)} 800 -910 0 0 0.4 0.4 {}
N 600 -760 600 -640 {
lab=avdd}
N 460 -1480 600 -1480 {
lab=avdd}
N 600 -1480 600 -1360 {
lab=avdd}
N 460 -1360 600 -1360 {
lab=avdd}
N 600 -1360 600 -1240 {
lab=avdd}
N 600 -1190 600 -1120 {
lab=avdd}
N 600 -1120 600 -1000 {
lab=avdd}
N 460 -1000 600 -1000 {
lab=avdd}
N 460 -880 600 -880 {
lab=avdd}
N 600 -1000 600 -880 {
lab=avdd}
N 600 -880 600 -760 {
lab=avdd}
N 460 -760 600 -760 {
lab=avdd}
N 460 -640 600 -640 {
lab=avdd}
N 460 -1240 600 -1240 {
lab=avdd}
N 460 -1120 600 -1120 {
lab=avdd}
N 460 -1460 580 -1460 {
lab=#net1}
N 580 -1460 580 -1340 {
lab=#net1}
N 460 -1340 580 -1340 {
lab=#net1}
N 580 -1340 580 -1220 {
lab=#net1}
N 460 -1220 580 -1220 {
lab=#net1}
N 580 -1220 580 -1100 {
lab=#net1}
N 460 -1100 580 -1100 {
lab=#net1}
N 460 -980 580 -980 {
lab=#net1}
N 580 -980 580 -860 {
lab=#net1}
N 460 -860 580 -860 {
lab=#net1}
N 580 -860 580 -740 {
lab=#net1}
N 580 -740 580 -620 {
lab=#net1}
N 460 -620 580 -620 {
lab=#net1}
N 580 -550 580 -530 {
lab=#net1}
N 600 -640 600 -530 {
lab=avdd}
N 720 -640 720 -530 {
lab=avdd}
N 700 -620 700 -530 {
lab=#net1}
N 760 -1520 880 -1520 {
lab=avdd}
N 640 -800 640 -680 {
lab=avdd}
N 620 -780 620 -660 {
lab=#net1}
N 600 -1580 600 -1480 {
lab=avdd}
N 580 -1620 580 -1460 {
lab=#net1}
N 880 -1620 880 -1520 {
lab=avdd}
N 860 -1620 860 -1500 {
lab=#net1}
N 760 -1620 760 -1520 {
lab=avdd}
N 740 -1620 740 -1500 {
lab=#net1}
N 840 -620 840 -530 {
lab=#net2}
N 960 -620 960 -530 {
lab=#net2}
N 840 -620 960 -620 {
lab=#net2}
N 1080 -620 1080 -530 {
lab=#net2}
N 960 -620 1080 -620 {
lab=#net2}
N 1200 -620 1200 -530 {
lab=#net2}
N 1080 -620 1200 -620 {
lab=#net2}
N 1320 -620 1320 -530 {
lab=#net2}
N 1200 -620 1320 -620 {
lab=#net2}
N 1440 -620 1440 -530 {
lab=#net2}
N 1320 -620 1440 -620 {
lab=#net2}
N 860 -640 860 -530 {
lab=iovdd}
N 980 -640 980 -530 {
lab=iovdd}
N 860 -640 980 -640 {
lab=iovdd}
N 1100 -640 1100 -530 {
lab=iovdd}
N 980 -640 1100 -640 {
lab=iovdd}
N 1220 -640 1220 -530 {
lab=iovdd}
N 1100 -640 1220 -640 {
lab=iovdd}
N 1340 -640 1340 -530 {
lab=iovdd}
N 1220 -640 1340 -640 {
lab=iovdd}
N 1460 -640 1460 -530 {
lab=iovdd}
N 1340 -640 1460 -640 {
lab=iovdd}
N 880 -660 880 -530 {
lab=vss}
N 1000 -660 1000 -530 {
lab=vss}
N 880 -660 1000 -660 {
lab=vss}
N 1120 -660 1120 -530 {
lab=vss}
N 1000 -660 1120 -660 {
lab=vss}
N 1240 -660 1240 -530 {
lab=vss}
N 1120 -660 1240 -660 {
lab=vss}
N 1360 -660 1360 -530 {
lab=vss}
N 1240 -660 1360 -660 {
lab=vss}
N 1480 -660 1480 -530 {
lab=vss}
N 1360 -660 1480 -660 {
lab=vss}
N 900 -680 900 -530 {
lab=vdd}
N 1020 -680 1020 -530 {
lab=vdd}
N 900 -680 1020 -680 {
lab=vdd}
N 1140 -680 1140 -530 {
lab=vdd}
N 1020 -680 1140 -680 {
lab=vdd}
N 1260 -680 1260 -530 {
lab=vdd}
N 1140 -680 1260 -680 {
lab=vdd}
N 1380 -680 1380 -530 {
lab=vdd}
N 1260 -680 1380 -680 {
lab=vdd}
N 1500 -680 1500 -530 {
lab=vdd}
N 1380 -680 1500 -680 {
lab=vdd}
N 960 -1620 960 -1460 {
lab=#net2}
N 980 -1620 980 -1480 {
lab=iovdd}
N 1000 -1620 1000 -1500 {
lab=vss}
N 1020 -1620 1020 -1520 {
lab=vdd}
N 1080 -1620 1080 -1460 {
lab=#net2}
N 960 -1460 1080 -1460 {
lab=#net2}
N 1100 -1620 1100 -1480 {
lab=iovdd}
N 980 -1480 1100 -1480 {
lab=iovdd}
N 1120 -1620 1120 -1500 {
lab=vss}
N 1000 -1500 1120 -1500 {
lab=vss}
N 1140 -1620 1140 -1520 {
lab=vdd}
N 1020 -1520 1140 -1520 {
lab=vdd}
N 1200 -1620 1200 -1460 {
lab=#net2}
N 1080 -1460 1200 -1460 {
lab=#net2}
N 1220 -1620 1220 -1480 {
lab=iovdd}
N 1100 -1480 1220 -1480 {
lab=iovdd}
N 1240 -1620 1240 -1500 {
lab=vss}
N 1120 -1500 1240 -1500 {
lab=vss}
N 1260 -1620 1260 -1520 {
lab=vdd}
N 1140 -1520 1260 -1520 {
lab=vdd}
N 1320 -1620 1320 -1460 {
lab=#net2}
N 1200 -1460 1320 -1460 {
lab=#net2}
N 1340 -1620 1340 -1480 {
lab=iovdd}
N 1220 -1480 1340 -1480 {
lab=iovdd}
N 1360 -1620 1360 -1500 {
lab=vss}
N 1240 -1500 1360 -1500 {
lab=vss}
N 1380 -1620 1380 -1520 {
lab=vdd}
N 1260 -1520 1380 -1520 {
lab=vdd}
N 1440 -1620 1440 -1460 {
lab=#net2}
N 1320 -1460 1440 -1460 {
lab=#net2}
N 1460 -1620 1460 -1480 {
lab=iovdd}
N 1340 -1480 1460 -1480 {
lab=iovdd}
N 1480 -1620 1480 -1500 {
lab=vss}
N 1360 -1500 1480 -1500 {
lab=vss}
N 1500 -1620 1500 -1520 {
lab=vdd}
N 1380 -1520 1500 -1520 {
lab=vdd}
N 1440 -740 1440 -620 {
lab=#net2}
N 1460 -760 1460 -640 {
lab=iovdd}
N 1480 -780 1480 -660 {
lab=vss}
N 1500 -800 1500 -680 {
lab=vdd}
N 1440 -620 1620 -620 {
lab=#net2}
N 1460 -640 1620 -640 {
lab=iovdd}
N 1480 -660 1620 -660 {
lab=vss}
N 1500 -680 1620 -680 {
lab=vdd}
N 1500 -1520 1620 -1520 {
lab=vdd}
N 1480 -1500 1620 -1500 {
lab=vss}
N 1460 -1480 1620 -1480 {
lab=iovdd}
N 1440 -1460 1620 -1460 {
lab=#net2}
N 1500 -1400 1620 -1400 {
lab=vdd}
N 1500 -1520 1500 -1400 {
lab=vdd}
N 1480 -1380 1620 -1380 {
lab=vss}
N 1480 -1500 1480 -1380 {
lab=vss}
N 1460 -1360 1620 -1360 {
lab=iovdd}
N 1460 -1480 1460 -1360 {
lab=iovdd}
N 1440 -1340 1620 -1340 {
lab=#net2}
N 1440 -1460 1440 -1340 {
lab=#net2}
N 1500 -1280 1620 -1280 {
lab=vdd}
N 1480 -1260 1620 -1260 {
lab=vss}
N 1480 -1380 1480 -1260 {
lab=vss}
N 1460 -1240 1620 -1240 {
lab=iovdd}
N 1460 -1360 1460 -1240 {
lab=iovdd}
N 1440 -1220 1620 -1220 {
lab=#net2}
N 1440 -1340 1440 -1220 {
lab=#net2}
N 1500 -1160 1620 -1160 {
lab=vdd}
N 1500 -1280 1500 -1160 {
lab=vdd}
N 1480 -1140 1620 -1140 {
lab=vss}
N 1480 -1260 1480 -1140 {
lab=vss}
N 1460 -1120 1620 -1120 {
lab=iovdd}
N 1460 -1190 1460 -1120 {
lab=iovdd}
N 1440 -1100 1620 -1100 {
lab=#net2}
N 1440 -1220 1440 -1100 {
lab=#net2}
N 1500 -1040 1620 -1040 {
lab=vdd}
N 1500 -1160 1500 -1040 {
lab=vdd}
N 1480 -1020 1620 -1020 {
lab=vss}
N 1480 -1140 1480 -1020 {
lab=vss}
N 1460 -1000 1620 -1000 {
lab=iovdd}
N 1460 -1120 1460 -1000 {
lab=iovdd}
N 1440 -980 1620 -980 {
lab=#net2}
N 1440 -1070 1440 -980 {
lab=#net2}
N 1500 -920 1620 -920 {
lab=vdd}
N 1500 -1040 1500 -920 {
lab=vdd}
N 1480 -900 1620 -900 {
lab=vss}
N 1480 -950 1480 -900 {
lab=vss}
N 1460 -880 1620 -880 {
lab=iovdd}
N 1460 -1000 1460 -880 {
lab=iovdd}
N 1440 -860 1620 -860 {
lab=#net2}
N 1440 -980 1440 -860 {
lab=#net2}
N 1500 -800 1620 -800 {
lab=vdd}
N 1500 -920 1500 -800 {
lab=vdd}
N 1480 -780 1620 -780 {
lab=vss}
N 1480 -900 1480 -780 {
lab=vss}
N 1460 -760 1620 -760 {
lab=iovdd}
N 1460 -880 1460 -760 {
lab=iovdd}
N 1440 -740 1620 -740 {
lab=#net2}
N 1440 -860 1440 -740 {
lab=#net2}
N 600 -1190 760 -1190 {
lab=avdd}
N 600 -1240 600 -1190 {
lab=avdd}
N 580 -1100 580 -980 {
lab=#net1}
N 1440 -1100 1440 -1070 {
lab=#net2}
N 1400 -1190 1460 -1190 {
lab=iovdd}
N 1460 -1240 1460 -1190 {
lab=iovdd}
N 1480 -1020 1480 -950 {
lab=vss}
N 1400 -1310 1500 -1310 {
lab=vdd}
N 1500 -1310 1500 -1280 {
lab=vdd}
N 1500 -1400 1500 -1310 {
lab=vdd}
N 460 -740 580 -740 {
lab=#net1}
N 580 -620 700 -620 {
lab=#net1}
N 600 -640 720 -640 {
lab=avdd}
N 620 -660 740 -660 {
lab=#net1}
N 740 -660 740 -530 {
lab=#net1}
N 640 -680 760 -680 {
lab=avdd}
N 760 -680 760 -530 {
lab=avdd}
N 620 -570 620 -530 {
lab=#net1}
N 460 -660 620 -660 {
lab=#net1}
N 640 -680 640 -530 {
lab=avdd}
N 460 -680 640 -680 {
lab=avdd}
N 460 -780 620 -780 {
lab=#net1}
N 620 -900 620 -780 {
lab=#net1}
N 460 -800 640 -800 {
lab=avdd}
N 640 -920 640 -800 {
lab=avdd}
N 460 -900 620 -900 {
lab=#net1}
N 620 -1020 620 -900 {
lab=#net1}
N 460 -920 640 -920 {
lab=avdd}
N 640 -1040 640 -920 {
lab=avdd}
N 460 -1020 620 -1020 {
lab=#net1}
N 620 -1070 620 -1020 {
lab=#net1}
N 460 -1040 640 -1040 {
lab=avdd}
N 640 -1160 640 -1040 {
lab=avdd}
N 460 -1140 620 -1140 {
lab=#net1}
N 620 -1260 620 -1140 {
lab=#net1}
N 460 -1160 640 -1160 {
lab=avdd}
N 640 -1280 640 -1160 {
lab=avdd}
N 460 -1260 620 -1260 {
lab=#net1}
N 620 -1380 620 -1260 {
lab=#net1}
N 460 -1280 640 -1280 {
lab=avdd}
N 640 -1400 640 -1280 {
lab=avdd}
N 460 -1380 620 -1380 {
lab=#net1}
N 620 -1500 620 -1380 {
lab=#net1}
N 460 -1400 640 -1400 {
lab=avdd}
N 640 -1520 640 -1400 {
lab=avdd}
N 460 -1500 620 -1500 {
lab=#net1}
N 620 -1620 620 -1500 {
lab=#net1}
N 460 -1520 640 -1520 {
lab=avdd}
N 640 -1600 640 -1520 {
lab=avdd}
N 640 -1520 760 -1520 {
lab=avdd}
N 620 -1500 740 -1500 {
lab=#net1}
N 740 -1500 860 -1500 {
lab=#net1}
N 700 -1620 700 -1460 {
lab=#net1}
N 580 -1460 700 -1460 {
lab=#net1}
N 720 -1620 720 -1480 {
lab=avdd}
N 600 -1480 720 -1480 {
lab=avdd}
N 700 -1460 820 -1460 {
lab=#net1}
N 820 -1620 820 -1460 {
lab=#net1}
N 720 -1480 840 -1480 {
lab=avdd}
N 840 -1620 840 -1480 {
lab=avdd}
N 530 -1600 640 -1600 {
lab=avdd}
N 640 -1620 640 -1600 {
lab=avdd}
N 530 -1600 530 -1580 {
lab=avdd}
N 530 -1580 600 -1580 {
lab=avdd}
N 600 -1620 600 -1580 {
lab=avdd}
N 580 -620 580 -550 {
lab=#net1}
N 520 -570 520 -550 {
lab=#net1}
N 620 -660 620 -570 {
lab=#net1}
N 520 -570 620 -570 {
lab=#net1}
N 520 -550 580 -550 {
lab=#net1}
N 1170 -950 1480 -950 {}
N 1170 -1070 1440 -1070 {}
N 1170 -1070 1170 -950 {}
N 1150 -950 1170 -950 {}
N 1150 -1070 1150 -950 {}
N 1030 -950 1150 -950 {}
N 620 -1070 1150 -1070 {}
N 620 -1140 620 -1070 {
lab=#net1}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Boris Murmann"}
C {sg13g2_IOPadAnalog.sym} 310 -1500 0 0 {name=xp1}
C {sg13g2_IOPadIn.sym} 1360 -1770 1 0 {name=xp26}
C {sg13g2_IOPadOut16mA.sym} 1770 -1500 0 1 {name=xp24}
C {sg13g2_IOPadVdd.sym} 620 -1770 1 0 {name=xp32}
C {sg13g2_IOPadVss.sym} 620 -380 1 1 {name=xp9}
C {sg13g2_IOPadAnalog.sym} 310 -1380 0 0 {name=xp2}
C {sg13g2_IOPadAnalog.sym} 310 -1260 0 0 {name=xp3}
C {sg13g2_IOPadAnalog.sym} 310 -1140 0 0 {name=xp4}
C {sg13g2_IOPadAnalog.sym} 310 -1020 0 0 {name=xp5}
C {sg13g2_IOPadAnalog.sym} 310 -900 0 0 {name=xp6}
C {sg13g2_IOPadAnalog.sym} 310 -780 0 0 {name=xp7}
C {sg13g2_IOPadAnalog.sym} 310 -660 0 0 {name=xp8}
C {sg13g2_IOPadOut16mA.sym} 1770 -1380 0 1 {name=xp23}
C {sg13g2_IOPadOut16mA.sym} 1770 -1260 0 1 {name=xp22}
C {sg13g2_IOPadIOVdd.sym} 1770 -1140 0 1 {name=xp21}
C {sg13g2_IOPadIOVss.sym} 1770 -1020 0 1 {name=xp20}
C {sg13g2_IOPadOut16mA.sym} 1770 -900 0 1 {name=xp19}
C {sg13g2_IOPadOut16mA.sym} 1770 -780 0 1 {name=xp18}
C {sg13g2_IOPadOut16mA.sym} 1770 -660 0 1 {name=xp17}
C {sg13g2_IOPadVdd.sym} 1480 -1770 1 0 {name=xp25}
C {sg13g2_IOPadVss.sym} 1480 -380 1 1 {name=xp16}
C {sg13g2_IOPadIn.sym} 1240 -1770 1 0 {name=xp27}
C {sg13g2_IOPadIn.sym} 1120 -1770 1 0 {name=xp28}
C {sg13g2_IOPadIOVdd.sym} 1000 -1770 1 0 {name=xp29}
C {sg13g2_IOPadAnalog.sym} 860 -1770 1 0 {name=xp30}
C {sg13g2_IOPadAnalog.sym} 740 -1770 1 0 {name=xp31}
C {sg13g2_IOPadIn.sym} 1360 -380 1 1 {name=xp15}
C {sg13g2_IOPadIn.sym} 1240 -380 1 1 {name=xp14}
C {sg13g2_IOPadIn.sym} 1120 -380 1 1 {name=xp13}
C {sg13g2_IOPadIOVss.sym} 1000 -380 1 1 {name=xp12}
C {sg13g2_IOPadIn.sym} 880 -380 1 1 {name=xp11}
C {sg13g2_IOPadVss.sym} 740 -380 1 1 {name=xp10}
C {devices/ipin.sym} 160 -1540 0 0 {name=p1 lab=in1}
C {devices/ipin.sym} 160 -1420 0 0 {name=p2 lab=in2}
C {devices/ipin.sym} 160 -1300 0 0 {name=p3 lab=in3}
C {devices/iopin.sym} 160 -1180 0 1 {name=p4 lab=vhi}
C {devices/iopin.sym} 160 -1060 0 1 {name=p6 lab=vlo}
C {devices/ipin.sym} 160 -940 0 0 {name=p7 lab=in4}
C {devices/ipin.sym} 160 -820 0 0 {name=p8 lab=in5}
C {devices/ipin.sym} 160 -700 0 0 {name=p9 lab=in6}
C {devices/opin.sym} 1920 -1540 0 0 {name=p5 lab=out1}
C {devices/opin.sym} 1920 -1420 0 0 {name=p10 lab=out2}
C {devices/opin.sym} 1920 -1300 0 0 {name=p11 lab=out3}
C {devices/opin.sym} 1920 -940 0 0 {name=p12 lab=out4}
C {devices/opin.sym} 1920 -820 0 0 {name=p13 lab=out5}
C {devices/opin.sym} 1920 -700 0 0 {name=p14 lab=out6}
C {devices/ipin.sym} 920 -230 3 0 {name=p16 lab=res}
C {devices/ipin.sym} 1160 -230 3 0 {name=p17 lab=ck4}
C {devices/ipin.sym} 1280 -230 3 0 {name=p18 lab=ck5}
C {devices/ipin.sym} 1400 -230 3 0 {name=p19 lab=ck6}
C {devices/ipin.sym} 780 -1920 1 0 {name=p20 lab=vref}
C {devices/ipin.sym} 1160 -1920 1 0 {name=p22 lab=ck3}
C {devices/ipin.sym} 1280 -1920 1 0 {name=p23 lab=ck2}
C {devices/ipin.sym} 1400 -1920 1 0 {name=p24 lab=ck1}
C {devices/opin.sym} 460 -1540 0 0 {name=p25 lab=in1_c}
C {devices/opin.sym} 460 -1420 0 0 {name=p26 lab=in2_c}
C {devices/opin.sym} 460 -1300 0 0 {name=p27 lab=in3_c}
C {devices/opin.sym} 460 -940 0 0 {name=p28 lab=in4_c}
C {devices/opin.sym} 460 -820 0 0 {name=p29 lab=in5_c}
C {devices/opin.sym} 460 -700 0 0 {name=p30 lab=in6_c}
C {devices/opin.sym} 920 -530 3 0 {name=p32 lab=res_c}
C {devices/opin.sym} 1160 -530 3 0 {name=p33 lab=ck4_c}
C {devices/opin.sym} 1280 -530 3 0 {name=p34 lab=ck5_c}
C {devices/opin.sym} 1400 -530 3 0 {name=p35 lab=ck6_c}
C {devices/ipin.sym} 1620 -1540 0 0 {name=p36 lab=out1_c}
C {devices/ipin.sym} 1620 -1420 0 0 {name=p37 lab=out2_c}
C {devices/ipin.sym} 1620 -1300 0 0 {name=p38 lab=out3_c}
C {devices/ipin.sym} 1620 -940 0 0 {name=p39 lab=out4_c}
C {devices/ipin.sym} 1620 -820 0 0 {name=p40 lab=out5_c}
C {devices/ipin.sym} 1620 -700 0 0 {name=p41 lab=out6_c}
C {devices/opin.sym} 780 -1620 1 0 {name=p42 lab=vref_c}
C {devices/opin.sym} 1160 -1620 1 0 {name=p43 lab=ck3_c}
C {devices/opin.sym} 1280 -1620 1 0 {name=p44 lab=ck2_c}
C {devices/opin.sym} 1400 -1620 1 0 {name=p45 lab=ck1_c}
C {devices/noconn.sym} 460 -1180 0 1 {name=l2}
C {devices/noconn.sym} 460 -1060 0 1 {name=l3}
C {devices/noconn.sym} 900 -1620 1 1 {name=l4}
C {devices/iopin.sym} 900 -1920 1 1 {name=p21 lab=vldo}
C {devices/iopin.sym} 760 -1190 0 0 {name=p46 lab=avdd}
C {devices/iopin.sym} 1030 -950 0 1 {name=p47 lab=vss}
C {devices/iopin.sym} 1400 -1190 0 1 {name=p49 lab=iovdd}
C {devices/iopin.sym} 1400 -1310 0 1 {name=p51 lab=vdd}
