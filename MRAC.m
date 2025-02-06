clc; clear; close all;

s = tf('s');
G = 1 / (s + 1);  % Plant
G_ref = 1 / (s + 2);  % Reference Model

% Adaptive gain
Kp_adaptive = 5; % Adaptive gain
T = feedback(Kp_adaptive * G, 1);

% Compare with reference model
T_ref = feedback(G_ref, 1);

figure;
step(T, 'b', T_ref, 'r--');
legend('Adaptive Control', 'Reference Model');
title('MRAC - Model Reference Adaptive Control');
xlabel('Time (s)');
ylabel('Output');
grid on;
