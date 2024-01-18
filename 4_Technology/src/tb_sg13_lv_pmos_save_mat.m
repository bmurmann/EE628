
% Read Ngspice output text file and save as mat file
clearvars;
close all;

s.INFO   = 'IHP SG13G2, 130nm CMOS, PSP'; 
s.CORNER = 'NOM'; 
s.TEMP   = 300;
s.VGS = (0:25e-3:1.2)';
s.VDS = (0:25e-3:1.2)';
s.VSB = (0:0.2:0.6)';
s.L = [0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.3 0.4 0.5 1 2 3]';
s.W = 5;
s.NFING = 1;

t = readtable('sg13_lv_pmos.txt');
a = table2array(t);

% column vectors from ngspice
% 1 v-sweep
% 2 @n.xm1.nsg13_lv_pmos[cdd]
% 3 @n.xm1.nsg13_lv_pmos[cgb]
% 4 @n.xm1.nsg13_lv_pmos[cgd]
% 5 @n.xm1.nsg13_lv_pmos[cgdol]
% 6 @n.xm1.nsg13_lv_pmos[cgg]
% 7 @n.xm1.nsg13_lv_pmos[cgs]
% 8 @n.xm1.nsg13_lv_pmos[cgsol]
% 9 @n.xm1.nsg13_lv_pmos[cjd]
% 10 @n.xm1.nsg13_lv_pmos[cjs]
% 11 @n.xm1.nsg13_lv_pmos[css]
% 12 @n.xm1.nsg13_lv_pmos[gds]
% 13 @n.xm1.nsg13_lv_pmos[gm]
% 14 @n.xm1.nsg13_lv_pmos[gmb]
% 15 @n.xm1.nsg13_lv_pmos[ids]
% 16 @n.xm1.nsg13_lv_pmos[vth]
% 17 v-sweep

% ngspice sweep order
d1 = length(s.VGS);
d2 = length(s.VDS);
d3 = length(s.VSB);
d4 = length(s.L);

s.ID = reshape(a(:, 15), d1, d2, d3, d4);
s.VT = reshape(a(:, 16), d1, d2, d3, d4);
s.GM = reshape(a(:, 13), d1, d2, d3, d4);
s.GMB = reshape(a(:, 14), d1, d2, d3, d4);
s.GDS = reshape(a(:, 12), d1, d2, d3, d4);

%                  cgb
s.CGB = reshape(a(:, 3), d1, d2, d3, d4);
%                  cgg     cgsol     cgdol
s.CGG = reshape(a(:, 6) + a(:, 8) + a(:, 5), d1, d2, d3, d4);
%                  cgs     cgsol
s.CGS = reshape(a(:, 7) + a(:, 8), d1, d2, d3, d4);
%                  cgd     cgdol
s.CGD = reshape(a(:, 4) + a(:, 5), d1, d2, d3, d4);
%                  cdd     cgdol      cjd
s.CDD = reshape(a(:, 2) + a(:, 5) + a(:, 9), d1, d2, d3, d4);
%                  css     cgsol      cjs
s.CSS = reshape(a(:, 11) + a(:, 8) + a(:, 10), d1, d2, d3, d4);

% permute diemnsions so that L comes first
s.ID = permute(s.ID, [4 1 2 3]);
s.VT = permute(s.VT, [4 1 2 3]);
s.GM = permute(s.GM, [4 1 2 3]);
s.GMB = permute(s.GMB, [4 1 2 3]);
s.GDS = permute(s.GDS, [4 1 2 3]);
s.CGB = permute(s.CGB, [4 1 2 3]);
s.CGG = permute(s.CGG, [4 1 2 3]);
s.CGS = permute(s.CGS, [4 1 2 3]);
s.CGD = permute(s.CGD, [4 1 2 3]);
s.CDD = permute(s.CDD, [4 1 2 3]);
s.CSS = permute(s.CSS, [4 1 2 3]);

pch = s;
save('sg13_lv_pmos.mat', 'pch');
