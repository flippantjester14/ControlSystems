clc; clear; close all;

% Define the transfer function
s = tf('s');
G = 1 / (s^2 + 3*s + 2);

% Convert to state-space
[A, B, C, D] = tf2ss([1], [1, 3, 2]);

% Display State-Space Matrices
disp('A matrix:'), disp(A);
disp('B matrix:'), disp(B);
disp('C matrix:'), disp(C);
disp('D matrix:'), disp(D);

% State-space system
sys = ss(A, B, C, D);

% Step response
figure;
step(sys);
title('State-Space Step Response');
xlabel('Time (s)');
ylabel('Output');
grid on;
