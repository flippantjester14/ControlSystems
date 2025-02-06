clc; clear; close all;

% Define System
A = [0 1; -2 -3];
B = [0; 1];
C = [1 0];
D = 0;

% Sliding surface
S = [1 2];

% Control law: u = -K*x - k*sign(S*x)
K = [5 10];
k = 2;

% Closed-loop system
A_cl = A - B * K;
sys_cl = ss(A_cl, B, C, D);

% Step Response
figure;
step(sys_cl);
title('Sliding Mode Control - Step Response');
xlabel('Time (s)');
ylabel('Output');
grid on;
