%% Setup

close all;

%% Plot style variables

FS = 15;  % FontSize
LW = 2;  % LineWidth

%% Definizione del problema

% Plant
P = tf(zpk([], [0 -1], 2));

% Measurement
H = 1 / 2;
kd = 1 / H;

%% Specifiche di regime: errore nullo rispetto a un riferimento a gradino

% Controller
C0 = tf(zpk([], [], 1));

% Other transfer functions
G0 = C0 * P;
F0 = G0 * H;

% Plot
figure(Name="C0", WindowState="minimized");
margin(F0);
grid on;

% Set legends
axs = findall(gcf, Type='Axes');
txt = "$F_0(j\omega)$";
for ax = [axs(2), axs(3)]
    lgd = legend(ax);
    lgd.String = txt; lgd.String = txt;
    lgd.Interpreter = "latex";
end

%% Specifiche di regime: errore nullo rispetto a un disturbo a gradino

% Controller
C1 = tf(zpk([], [0], 1));

% Other transfer functions
G1 = C1 * P;
F1 = G1 * H;

% Plot
figure(Name="C1", WindowState="minimized");
margin(F1);
grid on;

% Set legends
axs = findall(gcf, Type='Axes');
txt = "$F_1(j\omega)$";
for ax = [axs(2), axs(3)]
    lgd = legend(ax);
    lgd.String = txt; lgd.String = txt;
    lgd.Interpreter = "latex";
end

%% Stabilità

% Controller
C2 = tf(zpk([-0.1], [0], 10));

% Other transfer functions
G2 = C2 * P;
F2 = G2 * H;
W2 = feedback(G2, H);

% Plot
figure(Name="C2", WindowState="minimized");
margin(F2);
grid on;

% Set legends
axs = findall(gcf, Type='Axes');
txt = "$F_2(j\omega)$";
for ax = [axs(2), axs(3)]
    lgd = legend(ax);
    lgd.String = txt; lgd.String = txt;
    lgd.Interpreter = "latex";
end

%% Tune gain to adjust phase margin

% Controller: we set w_c to 0.3 by dividing C2 by |F2(j0.3)|
C3 = C2 / abs(freqresp(F2,0.3));

% Other transfer functions
G3 = C3 * P;
F3 = G3 * H;
W3 = feedback(G3, H);
W3H = W3 * H;

% Plot F3
figure(Name="C3", WindowState="minimized");
margin(F3);
grid on;

% Set legends
axs = findall(gcf, Type='Axes');
txt = "$F_3(j\omega)$";
for ax = [axs(2), axs(3)]
    lgd = legend(ax);
    lgd.String = txt; lgd.String = txt;
    lgd.Interpreter = "latex";
end

% Plot W3
figure(Name="W3", WindowState="minimized");
bode(W3H);
grid on;
handle = gcf();

% Plot vertical lines at desired frequencies
w = [0.03, 0.1, 1];
axs = findall(handle, Type='Axes');
for ax = [axs(2), axs(3)]
    colorOrder = get(ax, 'ColorOrder');
    lgd = legend(ax);
    lgd.String{1} = "$W_3^{'}$"; lgd.String{1} = "$W_3^{'}$";
    for ii = 1 : length(w)
        ww = w(ii);
        color = colorOrder(ii + 1, :);
        xline(ax, ww, '--', DisplayName=['$\omega = ' num2str(ww) '$'], Color=color, LineWidth=1.5);
    end
    lgd.Interpreter = "latex";
end

%% Plot style

% This command will set the font size to all the figures
set(findall(findall(groot, Type="Figure"), '-property','FontSize'), FontSize=FS);

% This command will set the line width to all the lines of all the figures
set(findall(findall(groot, Type="Figure"), Type='Line'), LineWidth=LW);
