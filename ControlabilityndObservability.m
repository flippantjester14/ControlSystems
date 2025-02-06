clc; clear; close all;

A = [0 1; -2 -3];
B = [0; 1];
C = [1 0];
D = 0;

% Check Controllability
Co = ctrb(A, B);
rank_Co = rank(Co);
disp('Controllability Matrix:');
disp(Co);
disp('Rank of Controllability Matrix:'), disp(rank_Co);

% Check Observability
Ob = obsv(A, C);
rank_Ob = rank(Ob);
disp('Observability Matrix:');
disp(Ob);
disp('Rank of Observability Matrix:'), disp(rank_Ob);
