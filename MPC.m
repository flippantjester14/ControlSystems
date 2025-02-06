clc; clear; close all;

% Define a simple plant
plant = ss(tf(1, [1, 10, 20]));

% Create an MPC controller
mpc_controller = mpc(plant, 0.1); % Sample time = 0.1 sec

% Define reference signal
r = ones(50, 1);

% Simulate MPC control
[y, t, u] = sim(mpc_controller, 50, r);

% Plot response
figure;
plot(t, y, 'b', 'LineWidth', 2);
title('MPC Controlled Response');
xlabel('Time (s)');
ylabel('Output');
grid on;
