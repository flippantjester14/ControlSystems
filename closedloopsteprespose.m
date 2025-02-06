clc; clear; close all;

s = tf('s');
G = 1 / (s + 1); % Plant
K = 5; % Gain
T = feedback(K * G, 1); % Closed-loop transfer function

figure;
step(T);
title('Closed-Loop Step Response');
xlabel('Time (s)');
ylabel('Output');
grid on;
