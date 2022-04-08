close all;

FS = 15;
LW = 2;

figure;

subplot(3,1,1)
plot(out.y1)
grid on
legend('y1', 'Location','best', 'FontSize', FS);

subplot(3,1,2)
plot(out.y2)
grid on
legend('y2', 'Location','best', 'FontSize', FS);

subplot(3,1,3)
plot(out.y)
grid on
legend('y', 'Location','best', 'FontSize', FS);

set(findall(gcf,'-property','FontSize'),'FontSize',FS)
set(findall(gcf,'Type','Line'),'LineWidth',LW)
