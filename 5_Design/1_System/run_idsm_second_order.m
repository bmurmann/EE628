clearvars;
% Input sweep, second order IDSM

%vin_sweep = 0:0.01:1;
vin_sweep = 0.5:0.001:0.6;

for i=1:length(vin_sweep)
    vin = vin_sweep(i);
    out = sim("idsm_second_order");
    dout(i)=out.simout.signals.values(end);
end

plot(vin_sweep, dout)
xlabel('V_i_n')
ylabel('D_o_u_t')

figure;
plot(vin_sweep, dout-vin_sweep)
xlabel('V_i_n')
ylabel('D_o_u_t-V_i_n')