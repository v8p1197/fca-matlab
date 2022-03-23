%% Setup

close all;
clear all;
clc;

%% Variabili simboliche

syms Yel(s)
syms y(t)

%% FDT

t = linspace(0, 10, 1000);
G = tf([9 1], [2 3 2]);
[A,B,C,D] = tf2ss(G.Numerator{1}, G.Denominator{1});
Yel = free_evolution(A,C,zeros(size(C,1),1));
y(t) = ilaplace(Yel);
