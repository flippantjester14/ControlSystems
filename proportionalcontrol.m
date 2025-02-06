clc; clear; close all;

s = tf('s');
G = 1 / (s + 1);
Kp = 10; % Proportional Gain

T = feedback(Kp * G, 1); % Closed-loop System
step(T);

title('Step Response with Proportional Control');
xlabel('Time (s)');
ylabel('Output');
grid on;
