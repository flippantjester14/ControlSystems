clc; clear; close all;

s = tf('s');
G = 10 / (s * (s + 2) * (s + 5)); % Plant

% Nyquist Plot
figure;
nyquist(G);
title('Nyquist Plot');
grid on;
