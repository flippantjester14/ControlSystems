clc; clear; close all;

s = tf('s');
G = 1 / (s^2 + 2*s + 1); % Plant (Second-order system)
T = feedback(5 * G, 1);  % Closed-loop with P-control (Kp=5)

% Step Response
[y, t] = step(T);
S = stepinfo(T);  % Extract system performance metrics

% Display metrics
disp('Rise Time:'), disp(S.RiseTime);
disp('Settling Time:'), disp(S.SettlingTime);
disp('Overshoot:'), disp(S.Overshoot);
disp('Steady-State Value:'), disp(S.SettlingMin);

% Plot
figure;
step(T);
title('Step Response with Performance Metrics');
xlabel('Time (s)');
ylabel('Output');
grid on;
