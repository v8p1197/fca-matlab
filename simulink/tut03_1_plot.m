% Close all previous figures
close all;

% Plot style parameters
FS = 15;
LW = 2;

% Create a new figure: we will plot y1, y2, y on different graphs
figure;

% Plot y1
subplot(3,1,1)
plot(out.y1)
grid on
legend('y1', Location='northeast', FontSize=FS);

% Plot y2
subplot(3,1,2)
plot(out.y2)
grid on
legend('y2', Location='southeast', FontSize=FS);

% Plot y = y1 + y2
subplot(3,1,3)
plot(out.y)
grid on
legend('y', Location='northeast', FontSize=FS);

% This command will set the font size to all the graphs
set(findall(gcf, '-property','FontSize'), FontSize=FS);

% This command will set the line width to all the lines of all the graphs
set(findall(gcf, Type='Line'), LineWidth=LW);
