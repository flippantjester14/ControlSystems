clc; clear; close all;

% Define the Transfer Function G(s) = 1 / (s+1)
s = tf('s');
G = 1 / (s + 1);

% Step Response
figure;
step(G);
title('Open-Loop Step Response');
xlabel('Time (s)');
ylabel('Output');
grid on;
