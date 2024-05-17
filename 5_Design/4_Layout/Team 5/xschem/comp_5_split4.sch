v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 460 -220 610 -220 {
lab=d_inv}
N 580 -240 610 -240 {
lab=d_inv}
N 450 -80 490 -80 {
lab=res}
N 570 -80 610 -80 {
lab=#net1}
N 610 -200 610 -80 {
lab=#net1}
N 790 -240 890 -240 {
lab=dd}
N 800 -490 880 -490 {
lab=d}
N 460 -490 460 -220 {
lab=d_inv}
N 460 -490 720 -490 {
lab=d_inv}
C {sg13g2_stdcells/sg13g2_dfrbp_2.sym} 700 -220 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} 450 -80 0 0 {name=p15 lab=res}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 530 -80 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/opin.sym} 890 -240 0 0 {name=p18 lab=dd}
C {devices/opin.sym} 880 -490 0 0 {name=p19 lab=d}
C {sg13g2_stdcells/sg13g2_buf_2.sym} 760 -490 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/iopin.sym} 460 -490 0 1 {name=p1 lab=d_inv}
C {devices/iopin.sym} 580 -240 0 1 {name=p2 lab=ps}
