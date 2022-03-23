%% Setup

close all;
clear all;
clc;

%% Variabili simboliche

syms G(s) g
syms Y Yel

syms u(t)
syms y yel

%% Definizione del problema

A = [
-2,     1,      0;
-1,     -2,     0,
0,      0,      -1;
];

B = [0 1 0]';

C = [0 1 0];

D = 0;

u(t) = heaviside(t);

%% Creazione del modello

G(s) = transfer_function(A,B,C,D);
pretty(G)

U(s) = laplace(u(t));

Y(s) = G(s) * U(s);

y(t) = ilaplace(Y(s));
pretty(vpa(y))

Yel(s) = free_evolution(A,C,[1 0 0]');

yel(t) = ilaplace(Yel);

%% Grafici
% Definire l'asse temporale
t = linspace(0, 4.5, 1000);

% Evoluzione forzata
figure('Name','Evoluzione forzata')
plot(t, y(t));
xlim([t(1) t(end)])
xlabel('$$t$$', 'interpreter','latex', 'FontSize',20)
ylabel('$$y(t)$$', 'Interpreter','latex', 'FontSize',20)
yline(double(y(t(end))), '--', 'LineWidth',0.5, 'Color',[0.6 0.6 0.6])
title(['$$y(t) = ' latex(vpa(y)) '$$'], 'Interpreter','latex', 'FontSize',20)

% Evoluzione libera
figure('Name','Evoluzione libera')
plot(t, yel(t))
xlim([t(1) t(end)])
xlabel('$$t$$', 'interpreter','latex', 'FontSize',20)
ylabel('$$y_{el}(t)$$', 'Interpreter','latex', 'FontSize',20)
yline(double(yel(t(end))), '--', 'LineWidth',0.5, 'Color',[0.6 0.6 0.6])
title(['$$y_{el}(t) = ' latex(yel) '$$'], 'Interpreter','latex', 'FontSize',20)

%% Alternativa

state_space_model = ss(A, B, C, D);
sys = tf(state_space_model);
figure;
step(sys);