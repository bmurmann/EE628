clearvars;
close all;

load sg13_lv_nmos.mat;
load sg13_lv_pmos.mat;

% gm/ID and fT versus VGS
gmid_n = look_up(nch, 'GM_ID', 'VDS', 1.2, 'VGS', nch.VGS);
gmid_p = look_up(pch, 'GM_ID', 'VDS', 1.2, 'VGS', pch.VGS);
ft_n = 1e-9/2/pi*look_up(nch, 'GM_CGG', 'VDS', 1.2, 'VGS', nch.VGS);
ft_p = 1e-9/2/pi*look_up(pch, 'GM_CGG', 'VDS', 1.2, 'VGS', pch.VGS);

figure;
yyaxis left
plot(nch.VGS, gmid_n)
hold on;
plot(pch.VGS, gmid_p)
ylabel('g_m/I_D (S/A)')
xlabel('V_G_S (V)')

yyaxis right
plot(nch.VGS, ft_n)
title('L=0.13\mum, V_D_S=1.2V')
hold on;
plot(pch.VGS, ft_p)
ylabel('f_T (GHz)')
grid;
legend('lv_nmos', 'lv_pmos', 'lv_nmos', 'lv_pmos', 'location', 'southwest', 'interpreter','none')
saveas(gcf, 'gm_ID-VGS.svg')

% gm/ID*fT versus gm/ID
figure;
plot(gmid_n, gmid_n.*ft_n)
hold on;
plot(gmid_p, gmid_p.*ft_p)
title('L=0.13\mum, V_D_S=1.2V')
xlabel('g_m/I_D (S/A)')
ylabel('g_m/I_D*f_T (S/A*GHz)')
xlim([3 25]);
grid;
legend('lv_nmos', 'lv_pmos', 'location', 'northeast', 'interpreter','none')
saveas(gcf, 'gm_IDfT-gm_ID.svg')

% fT versus gm/ID
gmid_n = look_up(nch, 'GM_ID', 'VDS', 1.2, 'VGS', nch.VGS, 'L', nch.L(1:8));
gmid_p = look_up(pch, 'GM_ID', 'VDS', 1.2, 'VGS', pch.VGS, 'L', pch.L(1:8));
ft_n = 1e-9/2/pi*look_up(nch, 'GM_CGG', 'VDS', 1.2, 'VGS', nch.VGS, 'L', nch.L(1:8));
ft_p = 1e-9/2/pi*look_up(pch, 'GM_CGG', 'VDS', 1.2, 'VGS', pch.VGS, 'L', pch.L(1:8));

figure;
plot(gmid_n', ft_n')
title('L=0.13...0.2\mum, V_D_S=1.2V')
xlabel('g_m/I_D (S/A)')
ylabel('f_T (GHz)')
xlim([3 25]);
grid;
legend('lv_nmos', 'location', 'northeast', 'interpreter','none')
saveas(gcf, 'fT-gm_ID_n.svg')

figure;
plot(gmid_p', ft_p')
title('L=0.13...0.2\mum, V_D_S=1.2V')
xlabel('g_m/I_D (S/A)')
ylabel('f_T (GHz)')
xlim([3 25]);
grid;
legend('lv_pmos', 'location', 'northeast', 'interpreter','none')
saveas(gcf, 'fT-gm_ID_p.svg')

% Drain capacitance
cdd_w_n = 1e15*look_up(nch, 'CDD', 'VDS', nch.VDS, 'VGS', 0.6, 'L', 0.13)/nch.W;
cdd_w_p = 1e15*look_up(pch, 'CDD', 'VDS', nch.VDS, 'VGS', 0.6, 'L', 0.13)/nch.W;

figure;
plot(nch.VDS, cdd_w_n, pch.VDS, cdd_w_p)
title('L=0.13mum, V_G_S=0.6V')
xlabel('V_D_S (V)')
ylabel('C_d_d (fF/\mum)')
grid;
legend('lv_nmos', 'lv_pmos', 'location', 'northeast', 'interpreter','none')
saveas(gcf, 'Cdd_W-VDS.svg')

% gm/gds versus gm/ID
gmid_n = look_up(nch, 'GM_ID', 'VDS', 1.2, 'VGS', nch.VGS, 'L', nch.L);
gmid_p = look_up(pch, 'GM_ID', 'VDS', 1.2, 'VGS', pch.VGS, 'L', pch.L);
gmgds_n = look_up(nch, 'GM_GDS', 'VDS', 1.2, 'VGS', nch.VGS, 'L', nch.L);
gmgds_p = look_up(pch, 'GM_GDS', 'VDS', 1.2, 'VGS', pch.VGS, 'L', pch.L);

figure;
plot(gmid_n', gmgds_n')
title('L=0.13...0.2, 0.3, 0.4, 0.5, 1, 2, 3\mum, V_D_S=1.2V')
xlabel('g_m/I_D (S/A)')
ylabel('g_m/g_d_s')
xlim([3 25]);
grid;
legend('lv_nmos', 'location', 'northwest', 'interpreter','none')
saveas(gcf, 'gm_gds-gm_ID_n.svg')

figure;
plot(gmid_p', gmgds_p')
title('L=0.13...0.2, 0.3, 0.4, 0.5, 1, 2, 3\mum, V_D_S=1.2V')
xlabel('g_m/I_D (S/A)')
ylabel('g_m/g_d_s')
xlim([3 25]);
grid;
legend('lv_pmos', 'location', 'northwest', 'interpreter','none')
saveas(gcf, 'gm_gds-gm_ID_p.svg')

% A closer look at gm/gds
gmgds_n1 = look_up(nch, 'GM_GDS', 'VGS', 0.6, 'VDS', 0.6, 'L', nch.L);
gmgds_n2 = look_up(nch, 'GM_GDS', 'VGS', 0.6, 'VDS', 1.2, 'L', nch.L);
gmgds_p1 = look_up(pch, 'GM_GDS', 'VGS', 0.6, 'VDS', 0.6, 'L', pch.L);
gmgds_p2 = look_up(pch, 'GM_GDS', 'VGS', 0.6, 'VDS', 1.2, 'L', pch.L);
figure;
plot(nch.L, gmgds_n1, 'b-o', nch.L, gmgds_n2, 'b--o')
hold on;
plot(pch.L, gmgds_p1, 'r-o', pch.L, gmgds_p2, 'r--o')
title('V_G_S=0.6V')
xlabel('L (\mum)')
ylabel('g_m/g_d_s')
grid;
legend('lv-nmos, V_D_S=0.6V',...
       'lv-nmos, V_D_S=1.2V',...
       'lv-pmos, V_D_S=0.6V',...
       'lv-pmos, V_D_S=1.2V',...
       'location', 'northwest')
saveas(gcf, 'gm_gds-L.svg')

% ID/W versus gm/ID
gmid_n = look_up(nch, 'GM_ID', 'VDS', 1.2, 'VGS', nch.VGS, 'L', nch.L);
gmid_p = look_up(pch, 'GM_ID', 'VDS', 1.2, 'VGS', pch.VGS, 'L', pch.L);
idw_n = 1e6*look_up(nch, 'ID_W', 'VDS', 1.2, 'VGS', nch.VGS, 'L', nch.L);
idw_p = 1e6*look_up(pch, 'ID_W', 'VDS', 1.2, 'VGS', pch.VGS, 'L', pch.L);

figure;
semilogy(gmid_n', idw_n')
title('L=0.13...0.2, 0.3, 0.4, 0.5, 1, 2, 3\mum, V_D_S=1.2V')
xlabel('g_m/I_D (S/A)')
ylabel('I_D/W (\muA/\mum)')
xlim([3 25]);
ylim([1e-1 4e2]);
grid;
legend('lv_nmos', 'location', 'northeast', 'interpreter','none')
saveas(gcf, 'ID_W-gm_ID_n.svg')

figure;
semilogy(gmid_p', idw_p')
title('L=0.13...0.2, 0.3, 0.4, 0.5, 1, 2, 3\mum, V_D_S=1.2V')
xlabel('g_m/I_D (S/A)')
ylabel('I_D/W (\muA/\mum)')
xlim([3 25]);
ylim([1e-2 2e2]);
grid;
legend('lv_pmos', 'location', 'northeast', 'interpreter','none')
saveas(gcf, 'ID_W-gm_ID_p.svg')

% Vt vs. L
vt_n1 = look_up(nch, 'VT', 'VGS', 0.6, 'VDS', 0.6, 'L', nch.L);
vt_n2 = look_up(nch, 'VT', 'VGS', 0.6, 'VDS', 1.2, 'L', nch.L);
vt_p1 = look_up(pch, 'VT', 'VGS', 0.6, 'VDS', 0.6, 'L', pch.L);
vt_p2 = look_up(pch, 'VT', 'VGS', 0.6, 'VDS', 1.2, 'L', pch.L);
figure;
plot(nch.L, vt_n1, 'b-o', nch.L, vt_n2, 'b--o')
hold on;
plot(pch.L, vt_p1, 'r-o', pch.L, vt_p2, 'r--o')
title('V_G_S=0.6V')
xlabel('L (\mum)')
ylabel('V_t (V)')
grid;
legend('lv-nmos, V_D_S=0.6V',...
       'lv-nmos, V_D_S=1.2V',...
       'lv-pmos, V_D_S=0.6V',...
       'lv-pmos, V_D_S=1.2V',...
       'location', 'northeast')
saveas(gcf, 'Vt-L.svg')

% Tgate ron
t = readtable('sg13_lv_tgate.txt', 'NumHeaderLines', 1);
a = table2array(t);
vin = a(:, 1);
gdsn = a(:, 2)*1e3;
gdsp = a(:, 3)*1e3;

figure;
plot(vin, gdsn, vin, gdsp, vin, gdsp*3)
title('V_D_D=1.2V, W=5\mum')
xlabel('V_i_n (V)')
ylabel('g_d_s (mS)')
grid;
legend('lv-nmos', 'lv-pmos', 'lv-pmos x3', 'location', 'north')
saveas(gcf, 'gds_tgate.svg')

figure;
plot(vin, 1./(gdsn+gdsp), vin, 1./(gdsn+gdsp*3))
title('V_D_D=1.2V, W=5\mum')
xlabel('V_i_n (V)')
ylabel('r_o_n (k\Omega)')
grid;
legend('lv-nmos||lv-pmos', 'lv-nmos||(lv-pmos x3)', 'location', 'northwest')
saveas(gcf, 'ron_tgate.svg')



