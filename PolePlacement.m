clc; clear; close all;

% Define system matrices
A = [0 1; -2 -3];
B = [0; 1];
C = [1 0];
D = 0;

% Desired closed-loop poles
desired_poles = [-2 -5];

% Compute state feedback gain using pole placement
K = place(A, B, desired_poles);

% Closed-loop system
A_cl = A - B * K;
sys_cl = ss(A_cl, B, C, D);

% Step response
figure;
step(sys_cl);
title('State Feedback Control - Step Response');
xlabel('Time (s)');
ylabel('Output');
grid on;
