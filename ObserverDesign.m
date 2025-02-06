clc; clear; close all;

% Define system
A = [0 1; -2 -3];
B = [0; 1];
C = [1 0];
D = 0;

% Design Observer with poles at [-10, -15]
L = place(A', C', [-10, -15])';  % Observer gain

% Closed-loop observer dynamics
A_obs = A - L * C;

% Simulate observer dynamics
sys_obs = ss(A_obs, B, C, D);

% Step response
figure;
step(sys_obs);
title('Observer System - Step Response');
xlabel('Time (s)');
ylabel('Estimated Output');
grid on;
