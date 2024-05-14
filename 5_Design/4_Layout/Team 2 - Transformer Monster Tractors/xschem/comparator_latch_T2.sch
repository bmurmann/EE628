v {xschem version=3.4.5 file_version=1.2
* Copyright 2023  IHP PDK Authors
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {type=nmos
lvs_format="@name @pinlist @model L=@L W=@W ng=@ng m=@m"
format="@spiceprefix@name @pinlist @model W=@W L=@L ng=@ng m=@m"
template="name=M1
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
"}
V {}
S {}
E {}
N -100 -140 -100 -120 {
lab=out1m}
N -100 -60 -100 -10 {
lab=d2p}
N -100 50 -100 100 {
lab=d1p}
N -100 210 160 210 {
lab=vssa}
N -450 210 -100 210 {
lab=vssa}
N 160 50 160 100 {
lab=d1m}
N 160 -60 160 -10 {
lab=d2m}
N 160 -140 160 -120 {
lab=out1p}
N -310 -310 -310 -230 {
lab=vdda}
N -100 -310 -100 -230 {
lab=vdda}
N 160 -310 370 -310 {
lab=vdda}
N 370 -310 370 -230 {
lab=vdda}
N 160 -310 160 -230 {
lab=vdda}
N -100 -310 160 -310 {
lab=vdda}
N 410 -230 440 -230 {
lab=pc}
N 440 -290 440 -230 {
lab=pc}
N -400 -290 440 -290 {
lab=pc}
N -400 -230 -350 -230 {
lab=pc}
N -400 20 -140 20 {
lab=pc}
N -400 -230 -400 20 {
lab=pc}
N -400 -290 -400 -230 {
lab=pc}
N -310 -200 -310 -160 {
lab=out1m}
N -60 -230 -20 -230 {
lab=out1p}
N -20 -190 -20 -90 {
lab=out1p}
N -60 -90 -20 -90 {
lab=out1p}
N 80 -230 120 -230 {
lab=out1m}
N 80 -190 80 -90 {
lab=out1m}
N 80 -90 120 -90 {
lab=out1m}
N 370 -160 520 -160 {
lab=out1p}
N 160 -200 160 -160 {
lab=out1p}
N 370 -200 370 -160 {
lab=out1p}
N 160 -160 370 -160 {
lab=out1p}
N 440 -230 440 20 {
lab=pc}
N 200 20 440 20 {
lab=pc}
N 50 -190 80 -190 {
lab=out1m}
N 80 -230 80 -190 {
lab=out1m}
N -100 -160 -100 -140 {
lab=out1m}
N -100 -200 -100 -160 {
lab=out1m}
N -20 -190 10 -190 {
lab=out1p}
N -20 -230 -20 -190 {
lab=out1p}
N 50 -140 160 -140 {
lab=out1p}
N 160 -160 160 -140 {
lab=out1p}
N 10 -190 50 -140 {
lab=out1p}
N 10 -140 50 -190 {
lab=out1m}
N 160 -90 260 -90 {
lab=vssa}
N -200 -90 -100 -90 {
lab=vssa}
N 200 130 260 130 {
lab=vinm_samp}
N -200 130 -140 130 {
lab=vinp}
N -100 20 -10 20 {
lab=vssa}
N 70 20 160 20 {
lab=vssa}
N 160 130 160 210 {
lab=vssa}
N -100 130 -100 210 {
lab=vssa}
N -600 -310 -310 -310 {
lab=vdda}
N 820 -140 820 -120 {
lab=#net1}
N 820 -60 820 -10 {
lab=d2p2}
N 820 50 820 100 {
lab=VSS}
N 1080 50 1080 100 {
lab=VSS}
N 1080 -60 1080 -10 {
lab=d2m2}
N 1080 -140 1080 -120 {
lab=#net2}
N 610 -310 610 -230 {
lab=VDD}
N 820 -310 820 -230 {
lab=VDD}
N 1290 -310 1290 -230 {
lab=VDD}
N 1080 -310 1080 -230 {
lab=VDD}
N 820 -310 1080 -310 {
lab=VDD}
N 520 -230 570 -230 {
lab=out1p}
N 520 20 780 20 {
lab=out1p}
N 520 -160 520 20 {
lab=out1p}
N 610 -200 610 -160 {
lab=#net1}
N 860 -230 900 -230 {
lab=#net2}
N 900 -190 900 -90 {
lab=#net2}
N 860 -90 900 -90 {
lab=#net2}
N 1000 -230 1040 -230 {
lab=#net1}
N 1000 -190 1000 -90 {
lab=#net1}
N 1000 -90 1040 -90 {
lab=#net1}
N 1080 -200 1080 -160 {
lab=#net2}
N 1270 -160 1290 -160 {
lab=#net2}
N 970 -190 1000 -190 {
lab=#net1}
N 1000 -230 1000 -190 {
lab=#net1}
N 820 -140 930 -140 {
lab=#net1}
N 820 -160 820 -140 {
lab=#net1}
N 820 -200 820 -160 {
lab=#net1}
N 900 -190 930 -190 {
lab=#net2}
N 900 -230 900 -190 {
lab=#net2}
N 970 -140 1080 -140 {
lab=#net2}
N 1080 -160 1080 -140 {
lab=#net2}
N 930 -190 970 -140 {
lab=#net2}
N 930 -140 970 -190 {
lab=#net1}
N 1080 -90 1180 -90 {
lab=VSS}
N 720 -90 820 -90 {
lab=VSS}
N 820 20 910 20 {
lab=VSS}
N 990 20 1080 20 {
lab=VSS}
N 610 -310 820 -310 {
lab=VDD}
N 1080 -310 1290 -310 {
lab=VDD}
N 1120 20 1330 20 {
lab=out1m}
N 1290 -200 1290 -160 {
lab=#net2}
N 820 100 1080 100 {
lab=VSS}
N 520 -230 520 -160 {
lab=out1p}
N -100 -140 10 -140 {
lab=out1m}
N -310 -310 -100 -310 {
lab=vdda}
N -600 -290 -400 -290 {
lab=pc}
N -210 -160 -100 -160 {
lab=out1m}
N 610 -160 820 -160 {
lab=#net1}
N -210 -380 -210 -160 {
lab=out1m}
N -310 -160 -210 -160 {
lab=out1m}
N -210 -380 1330 -380 {
lab=out1m}
N 1330 -380 1330 20 {
lab=out1m}
N 260 130 260 400 {
lab=vinm_samp}
N -170 330 -140 330 {
lab=vinm}
N -170 400 -170 490 {
lab=vinm}
N -170 490 -140 490 {
lab=vinm}
N -80 330 -50 330 {
lab=vinm_samp}
N -50 400 -50 490 {
lab=vinm_samp}
N -80 490 -50 490 {
lab=vinm_samp}
N -110 330 -110 390 {
lab=vssa}
N -110 420 -110 490 {
lab=vdda}
N 90 400 260 400 {
lab=vinm_samp}
N -50 330 -50 400 {
lab=vinm_samp}
N 90 400 90 440 {
lab=vinm_samp}
N -50 400 90 400 {
lab=vinm_samp}
N 90 500 90 560 {
lab=vssa}
N -450 290 -110 290 {
lab=ps}
N -170 330 -170 400 {
lab=vinm}
N -450 400 -170 400 {
lab=vinm}
N -220 570 -110 570 {
lab=#net3}
N -110 530 -110 570 {
lab=#net3}
N -360 570 -300 570 {
lab=ps}
N 1290 -160 1400 -160 {
lab=#net2}
N 1270 -160 1270 90 {
lab=#net2}
N 1080 -160 1270 -160 {
lab=#net2}
N 1270 90 1370 90 {
lab=#net2}
N 1330 110 1370 110 {
lab=#net4}
N 1330 110 1330 160 {
lab=#net4}
N 1310 160 1330 160 {
lab=#net4}
N 1200 160 1230 160 {
lab=res}
N 1570 70 1600 70 {
lab=dd}
N 1480 -160 1600 -160 {
lab=d}
N 1330 70 1370 70 {
lab=ps}
N 1570 120 1580 120 {
lab=dd}
N 1570 70 1570 120 {
lab=dd}
N 1550 70 1570 70 {
lab=dd}
N 1660 120 1700 120 {
lab=dout}
C {sg13g2_pr/sg13_lv_nmos.sym} -120 20 2 1 {name=M1
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -330 -230 0 0 {name=M3
L=0.13u
W=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -80 -230 0 1 {name=M4
L=0.13u
W=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -80 -90 2 0 {name=M5
L=0.13u
W=2.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -120 130 2 1 {name=M6
L=1u
W=2.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 140 -230 0 0 {name=M2
L=0.13u
W=4.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 390 -230 0 1 {name=M7
L=0.13u
W=4.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 20 2 0 {name=M8
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 140 -90 2 1 {name=M9
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 130 2 0 {name=M10
L=1u
W=2.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 70 20 0 0 {name=p1 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -10 20 0 1 {name=p2 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 260 -90 0 1 {name=p9 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -200 -90 0 0 {name=p10 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 470 -160 0 1 {name=p13 sig_type=std_logic lab=out1p}
C {devices/lab_wire.sym} -100 80 0 0 {name=p15 sig_type=std_logic lab=d1p}
C {devices/lab_wire.sym} -100 -30 0 0 {name=p16 sig_type=std_logic lab=d2p
}
C {devices/lab_wire.sym} 160 -40 0 0 {name=p17 sig_type=std_logic lab=d2m}
C {devices/lab_wire.sym} 160 80 0 0 {name=p18 sig_type=std_logic lab=d1m}
C {sg13g2_pr/sg13_lv_nmos.sym} 800 20 2 1 {name=M11
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 590 -230 0 0 {name=M12
L=0.13u
W=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 840 -230 0 1 {name=M13
L=0.13u
W=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 840 -90 2 0 {name=M14
L=0.13u
W=2.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1060 -230 0 0 {name=M16
L=0.13u
W=4.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1310 -230 0 1 {name=M17
L=0.13u
W=4.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1100 20 2 0 {name=M18
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1060 -90 2 1 {name=M19
L=0.13u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 990 20 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 910 20 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1180 -90 0 1 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 720 -90 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 820 -40 0 0 {name=p26 sig_type=std_logic lab=d2p2
}
C {devices/lab_wire.sym} 1080 -40 0 0 {name=p27 sig_type=std_logic lab=d2m2}
C {devices/iopin.sym} -600 -310 0 1 {name=p3 lab=vdda}
C {devices/iopin.sym} -450 210 0 1 {name=p5 lab=vssa}
C {devices/ipin.sym} -600 -290 0 0 {name=p23 lab=pc}
C {devices/ipin.sym} -200 130 0 0 {name=p4 lab=vinp}
C {devices/ipin.sym} -450 400 0 0 {name=p24 lab=vinm}
C {devices/lab_wire.sym} 540 -380 0 1 {name=p6 sig_type=std_logic lab=out1m}
C {devices/vdd.sym} 950 -310 0 0 {name=l1 lab=VDD}
C {devices/vdd.sym} 950 100 2 0 {name=l2 lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} -110 310 3 1 {name=M15
L=0.13u
W=2.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -110 510 3 0 {name=M20
L=0.13u
W=6u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} -110 420 0 0 {name=p8 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -110 390 0 0 {name=p11 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 90 560 0 0 {name=p14 sig_type=std_logic lab=vssa}
C {devices/ipin.sym} -450 290 0 0 {name=p25 lab=ps}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -260 570 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} -360 570 0 0 {name=p28 sig_type=std_logic lab=ps}
C {sg13g2_stdcells/sg13g2_buf_2.sym} 1440 -160 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dfrbp_2.sym} 1460 90 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1270 160 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/opin.sym} 1600 70 0 0 {name=p7 lab=dd}
C {devices/opin.sym} 1600 -160 0 0 {name=p12 lab=d}
C {devices/lab_wire.sym} 1330 70 0 0 {name=p29 sig_type=std_logic lab=ps}
C {devices/ipin.sym} 1200 160 0 0 {name=p30 lab=res}
C {devices/lab_wire.sym} 190 400 0 0 {name=p31 sig_type=std_logic lab=vinm_samp}
C {sg13g2_pr/cap_cmim.sym} 90 470 0 0 {name=C1 model=cap_cmim W=5.77e-6 L=5.77e-6 MF=1 spiceprefix=X}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 1620 120 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/opin.sym} 1700 120 0 0 {name=p32 lab=dout}
C {devices/noconn.sym} 1550 90 0 1 {name=l4}
