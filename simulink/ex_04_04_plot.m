close all;

FS = 20;
LW = 2;

figure;

plot(out.y)
grid on
legend('y', Location='best', FontSize=FS);

set(findall(gcf, '-property','FontSize'), FontSize=FS)
set(findall(gcf, Type='Line'), LineWidth=LW)
