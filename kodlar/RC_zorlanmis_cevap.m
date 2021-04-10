clear all; close all; clc;
T = 1e-3; stopTime = 2; % saniye
R1 = 1e4; % 10k
C1 = 1e-5; % 10uF
R2 = 2e4; C2 = 1e-5;
R3 = 3e4; C3 = 1e-5;
R4 = 3e4; C4 = 1e-6;
R5 = 4700; C5 = 1e-4;
Vc0 = 0;
Vcc = 5;
t = 0:T:stopTime;
y1 = Vc0*exp(-(t/(R1*C1))) - Vcc*exp(-(t/(R1*C1))) + Vcc;
y2 = Vc0*exp(-(t/(R2*C2))) - Vcc*exp(-(t/(R2*C2))) + Vcc;
y3 = Vc0*exp(-(t/(R3*C3))) - Vcc*exp(-(t/(R3*C3))) + Vcc;
y4 = Vc0*exp(-(t/(R4*C4))) - Vcc*exp(-(t/(R4*C4))) + Vcc;
y5 = Vc0*exp(-(t/(R5*C5))) - Vcc*exp(-(t/(R5*C5))) + Vcc;
fprintf('Zaman sabitleri tau = RC\n');
tau = [R1*C1; R2*C2; R3*C3; R4*C4; R5*C5]
%%
figure(1);
lw = 1.1;
plot(t, y1, 'k-', 'linewidth', lw);
hold on;
plot(t, y2, 'r-', 'linewidth', lw);
plot(t, y3, 'g-', 'linewidth', lw);
plot(t, y4, 'b-', 'linewidth', lw);
plot(t, y5, 'm-', 'linewidth', lw);
hold off;
xlabel('Zaman (s)');
ylabel('V_C (Volt)');
leg1 = sprintf('R = %iohm  x  C = %.6fF  =  tau = %.2f', R1, C1, tau(1));
leg2 = sprintf('R = %iohm  x  C = %.6fF  =  tau = %.2f', R2, C2, tau(2));
leg3 = sprintf('R = %iohm  x  C = %.6fF  =  tau = %.2f', R3, C3, tau(3));
leg4 = sprintf('R = %iohm  x  C = %.6fF  =  tau = %.2f', R4, C4, tau(4));
leg5 = sprintf('R = %iohm  x  C = %.6fF  =  tau = %.2f', R5, C5, tau(5));
legend(leg1, leg2, leg3, leg4, leg5, 'location', 'southeast');
set(legend, 'Interpreter', 'tex');
grid on;
set(gca, 'gridlinestyle', '--');
axis([0 2 -0.2 5.4]);