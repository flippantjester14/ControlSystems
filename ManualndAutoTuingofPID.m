clc; clear; close all;

s = tf('s');
G = 1 / (s^2 + 3*s + 2);  % Plant

% Manual Tuning
Kp = 20; Ki = 10; Kd = 5;
C_manual = Kp + Ki/s + Kd*s; 
T_manual = feedback(C_manual * G, 1); 

% Auto-Tuning (MATLAB PID Tuner)
C_auto = pidtune(G, 'PID'); 
T_auto = feedback(C_auto * G, 1); 

% Step Responses
figure;
subplot(2,1,1);
step(T_manual);
title('Manually Tuned PID');
xlabel('Time (s)'); ylabel('Output');
grid on;

subplot(2,1,2);
step(T_auto);
title('Auto-Tuned PID using pidtune()');
xlabel('Time (s)'); ylabel('Output');
grid on;
