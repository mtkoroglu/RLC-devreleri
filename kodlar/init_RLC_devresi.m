clear all; close all; clc;
L = 1; C = 0.01; Vcc = 5;
stopTime = 5;
%%
R = 100; % R>20 değeri için aşırı sönümlü
data = sim('RLC_devresi.mdl');
figure(1); set(gcf, 'position', [270  600  840  205]);
subplot(1,2,1);
plot(data.tout, data.Vc(:,2), 'b-');
grid on; xlabel('Time (s)'); ylabel('V_C(t)');
set(gca,'gridlinestyle', '--', 'position', [0.0430    0.1829    0.4404    0.7967]);
subplot(1,2,2);
plot(data.tout, data.iL(:,2), 'r-');
grid on; xlabel('Time (s)'); ylabel('i_L(t)');
set(gca,'gridlinestyle', '--','position', [0.5430    0.1829    0.4404    0.7967]);
%%
R = 50; % R>20 değeri için aşırı sönümlü
data = sim('RLC_devresi.mdl');
figure(2); set(gcf, 'position', [270  500  840  205]);
subplot(1,2,1);
plot(data.tout, data.Vc(:,2), 'b-');
grid on; xlabel('Time (s)'); ylabel('V_C(t)');
set(gca,'gridlinestyle', '--', 'position', [0.0430    0.1829    0.4404    0.7967]);
subplot(1,2,2);
plot(data.tout, data.iL(:,2), 'r-');
grid on; xlabel('Time (s)'); ylabel('i_L(t)');
set(gca,'gridlinestyle', '--','position', [0.5430    0.1829    0.4404    0.7967]);
%%
R = 20; % kritik sönümlü
data = sim('RLC_devresi.mdl');
figure(3); set(gcf, 'position', [270  400  840  205]);
subplot(1,2,1);
plot(data.tout, data.Vc(:,2), 'b-');
grid on; xlabel('Time (s)'); ylabel('V_C(t)');
set(gca,'gridlinestyle', '--', 'position', [0.0430    0.1829    0.4404    0.7967]);
subplot(1,2,2);
plot(data.tout, data.iL(:,2), 'r-');
grid on; xlabel('Time (s)'); ylabel('i_L(t)');
set(gca,'gridlinestyle', '--','position', [0.5430    0.1829    0.4404    0.7967]);
%%
R = 15; % eksik sönümlü
data = sim('RLC_devresi.mdl');
figure(4); set(gcf, 'position', [270  300  840  205]);
subplot(1,2,1);
plot(data.tout, data.Vc(:,2), 'b-');
grid on; xlabel('Time (s)'); ylabel('V_C(t)');
set(gca,'gridlinestyle', '--', 'position', [0.0430    0.1829    0.4404    0.7967]);
subplot(1,2,2);
plot(data.tout, data.iL(:,2), 'r-');
grid on; xlabel('Time (s)'); ylabel('i_L(t)');
set(gca,'gridlinestyle', '--','position', [0.5430    0.1829    0.4404    0.7967]);
%%
R = 10; % eksik sönümlü
data = sim('RLC_devresi.mdl');
figure(5); set(gcf, 'position', [270  200  840  205]);
subplot(1,2,1);
plot(data.tout, data.Vc(:,2), 'b-');
grid on; xlabel('Time (s)'); ylabel('V_C(t)');
set(gca,'gridlinestyle', '--', 'position', [0.0430    0.1829    0.4404    0.7967]);
subplot(1,2,2);
plot(data.tout, data.iL(:,2), 'r-');
grid on; xlabel('Time (s)'); ylabel('i_L(t)');
set(gca,'gridlinestyle', '--','position', [0.5430    0.1829    0.4404    0.7967]);
%%
R = 5; % eksik sönümlü
data = sim('RLC_devresi.mdl');
figure(6); set(gcf, 'position', [270  100  840  205]);
subplot(1,2,1);
plot(data.tout, data.Vc(:,2), 'b-');
grid on; xlabel('Time (s)'); ylabel('V_C(t)');
set(gca,'gridlinestyle', '--', 'position', [0.0430    0.1829    0.4404    0.7967]);
subplot(1,2,2);
plot(data.tout, data.iL(:,2), 'r-');
grid on; xlabel('Time (s)'); ylabel('i_L(t)');
set(gca,'gridlinestyle', '--','position', [0.5430    0.1829    0.4404    0.7967]);
%%
R = 0; % sönümsüz
data = sim('RLC_devresi.mdl');
figure(7); set(gcf, 'position', [270  0  840  205]);
subplot(1,2,1);
plot(data.tout, data.Vc(:,2), 'b-');
grid on; xlabel('Time (s)'); ylabel('V_C(t)');
set(gca,'gridlinestyle', '--', 'position', [0.0430    0.1829    0.4404    0.7967]);
subplot(1,2,2);
plot(data.tout, data.iL(:,2), 'r-');
grid on; xlabel('Time (s)'); ylabel('i_L(t)');
set(gca,'gridlinestyle', '--','position', [0.5430    0.1829    0.4404    0.7967]);