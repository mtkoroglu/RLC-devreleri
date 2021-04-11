clear all; close all; clc;
T = 1e-3; stopTime = 2; % saniye
R1 = 1e4; % 10k
C1 = 1e-5; % 10uF
R2 = 2e4; C2 = 1e-5;
R3 = 3e4; C3 = 1e-5;
R4 = 3e4; C4 = 1e-6;
R5 = 4700; C5 = 1e-4;
Vcc = 5;
Vc0 = Vcc;
t = 0:T:stopTime;
Vc1 = Vc0*exp(-(t/(R1*C1)));
Vc2 = Vc0*exp(-(t/(R2*C2)));
Vc3 = Vc0*exp(-(t/(R3*C3)));
Vc4 = Vc0*exp(-(t/(R4*C4)));
Vc5 = Vc0*exp(-(t/(R5*C5)));
fprintf('Zaman sabitleri tau = RC\n');
tau = [R1*C1; R2*C2; R3*C3; R4*C4; R5*C5]
%%
figure(1);
lw = 1.1;
plot(t, Vc1, 'k-', 'linewidth', lw);
hold on;
plot(t, Vc2, 'r-', 'linewidth', lw);
plot(t, Vc3, 'g-', 'linewidth', lw);
plot(t, Vc4, 'm-', 'linewidth', lw);
plot(t, Vc5, 'b-', 'linewidth', lw);
hold off;
set(gca, 'position', [0.0918    0.1062    0.8929    0.8438]);
xlabel('Zaman (s)');
ylabel('V_C(t) (Volt)');
title('RC devresinin doğal cevabı', 'fontweight', 'normal');
s1 = 1e-3; % scale R values to print them so we have units in kohm
s2 = 1e6; % % scale C values to print them so we have units in uF
leg1 = sprintf('R = %ik\\Omega  x  C = %i\\muF  \\rightarrow  \\tau = %.2f', s1*R1, s2*C1, tau(1));
leg2 = sprintf('R = %ik\\Omega  x  C = %i\\muF  \\rightarrow  \\tau = %.2f', s1*R2, s2*C2, tau(2));
leg3 = sprintf('R = %ik\\Omega  x  C = %i\\muF  \\rightarrow  \\tau = %.2f', s1*R3, s2*C3, tau(3));
leg4 = sprintf('R = %ik\\Omega  x  C = %.1f\\muF  \\rightarrow  \\tau = %.2f', s1*R4, s2*C4, tau(4));
leg5 = sprintf('R = %.1fk\\Omega  x  C = %i\\muF  \\rightarrow  \\tau = %.2f', s1*R5, s2*C5, tau(5));
legend(leg1, leg2, leg3, leg4, leg5, 'location', 'northeast');
set(legend, 'Interpreter', 'tex');
grid on;
set(gca, 'gridlinestyle', '--');