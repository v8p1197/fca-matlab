%% Setup

close all;
clear all;
clc;

%% Variabili simboliche

syms Yel(s)
syms yel(t)

%% FDT

tt = linspace(0, 10, 1000);
G = tf([9 1], [2 3 2]);
[A,B,C,D] = tf2ss(G.Numerator{1}, G.Denominator{1});
Yel(s) = simplify(free_evolution(A, C, ones(size(C))'));
pretty(Yel)
yel(t) = simplify(ilaplace(Yel));
pretty(vpa(yel, 4))
