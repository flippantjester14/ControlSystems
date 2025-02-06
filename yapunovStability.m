clc; clear; close all;

% Define nonlinear system (dx/dt = -x^3)
syms x;
V = x^2;  % Lyapunov function candidate
dV = diff(V, x) * (-x^3); % Time derivative

% Check stability
disp('Lyapunov Derivative:');
disp(dV);
