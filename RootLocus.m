clc; clear; close all;

s = tf('s');
G = 1 / (s * (s + 2) * (s + 5)); % Plant

% Root Locus Plot
figure;
rlocus(G);
title('Root Locus of the System');
grid on;
