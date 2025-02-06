clc; clear; close all;

s = tf('s');
G = 1 / (s * (s + 2) * (s + 5)); 

% Lead compensator
alpha = 0.1;  
T = 1;  
C = (1 + T*s) / (1 + alpha*T*s);

% Compensated system
T_comp = feedback(C * G, 1);

% Root locus
figure;
rlocus(G * C);
title('Root Locus with Lead Compensation');
grid on;
