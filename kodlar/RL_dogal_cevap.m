clear all; close all; clc;
T = 1e-5; stopTime = 0.005; % 5ms
R1 = 1e3 / 2; % 1kohm
L1 = 100  / 1000; % 1000H
R2 = R1; L2 = 0.5*L1 ;
R3 = R1; L3 = 2*L1;
R4 = 0.5*R1; L4 = L1;
R5 = 2*R1; L5 = L1;
i0 = 0.01*ones(1,5);
% i0 = [0.01, 0.01, 0.01, 0.02, 0.005];
Vcc = 5;
t = 0:T:stopTime;
i1 = i0(1)*exp(-(R1/L1)*t);
i2 = i0(2)*exp(-(R2/L2)*t);
i3 = i0(3)*exp(-(R3/L3)*t);
i4 = i0(4)*exp(-(R4/L4)*t);
i5 = i0(5)*exp(-(R5/L5)*t);
fprintf('Zaman sabitleri tau = L/R\n');
tau = [L1/R1; L2/R2; L3/R3; L4/R4; L5/R5]
%%
figure(1);
lw = 1.1;
plot(t, i1, 'k-', 'linewidth', lw);
hold on;
plot(t, i2, 'r-', 'linewidth', lw);
plot(t, i3, 'g-', 'linewidth', lw);
plot(t, i4, 'm--', 'linewidth', lw);
plot(t, i5, 'b--', 'linewidth', lw);
hold off;
set(gca, 'position', [0.1089    0.1062    0.8800    0.8438]);
xlabel('Zaman (s)');
ylabel('i(t) (A)');
title('RL devresinin doğal cevabı', 'fontweight', 'normal');
leg1 = sprintf('L = %.2fH  /  R = %i\\Omega \\rightarrow  \\tau = %.4f', L1, R1, tau(1));
leg2 = sprintf('L = %.2fH  /  R = %i\\Omega  \\rightarrow  \\tau = %.4f', L2, R2, tau(2));
leg3 = sprintf('L = %.2fH  /  R = %i\\Omega  \\rightarrow  \\tau = %.4f', L3, R3, tau(3));
leg4 = sprintf('L = %.2fH  /  R = %i\\Omega  \\rightarrow  \\tau = %.4f', L4, R4, tau(4));
leg5 = sprintf('L = %.2fH  /  R = %i\\Omega  \\rightarrow  \\tau = %.4f', L5, R5, tau(5));
legend(leg1, leg2, leg3, leg4, leg5, 'location', 'northeast');
set(legend, 'Interpreter', 'tex');
grid on;
set(gca, 'gridlinestyle', '--');