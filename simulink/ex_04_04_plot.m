% Close all previous figures
close all;

% Plot style parameters
FS = 20;
LW = 2;

% Create a new figure
figure;

% Plot y
plot(out.y)
grid on
legend('y', Location='best', FontSize=FS);

% This command will set the font size to all the graphs
set(findall(gcf, '-property','FontSize'), FontSize=FS)

% This command will set the line width to all the lines of all the graphs
set(findall(gcf, Type='Line'), LineWidth=LW)
