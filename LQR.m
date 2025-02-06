clc; clear; close all;

% Define system
A = [0 1; -2 -3];
B = [0; 1];
C = [1 0];
D = 0;

% Define cost function weights
Q = eye(2);  % State penalty
R = 1;       % Control effort penalty

% Compute LQR gain
K = lqr(A, B, Q, R);

% Closed-loop system
A_cl = A - B * K;
sys_cl = ss(A_cl, B, C, D);

% Step response
figure;
step(sys_cl);
title('LQR Controlled System - Step Response');
xlabel('Time (s)');
ylabel('Output');
grid on;
