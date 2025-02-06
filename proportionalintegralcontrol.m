clc; clear; close all;

s = tf('s');
G = 1 / (s + 1);
Kp = 10; Ki = 5; 

C = Kp + Ki/s; % PI Controller
T = feedback(C * G, 1); 

step(T);
title('Step Response with PI Controller');
xlabel('Time (s)');
ylabel('Output');
grid on;
