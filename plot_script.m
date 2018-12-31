close all

font_size = 15;
line_size = 15;
line_width = 2;

plot(t,v_d/1000*3600,'r--','Linewidth',line_width);
hold on
title('Speed vs. Time','fontsize',font_size,'Interpreter','latex');
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('Speed (km/hr)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on
legend('desired','actual')
% print -depsc -r720 plots/speed_vs_time
exportfig(gcf,'plots/des_speed_vs_time.eps','width',11,'Height',8.5,'fontmode','fixed','fontsize',18,'Color','cmyk','LineWidth',line_width);


figure
subplot(2,1,1)
plot(t,v_d,'r--','Linewidth',line_width);
hold on
plot(t,v,'Linewidth',line_width);
title('Speed vs. Time','fontsize',font_size,'Interpreter','latex');
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('Speed (m/s)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(2,1,2)
plot(t,v_d/1000*3600,'r--','Linewidth',line_width);
hold on
plot(t,v/1000*3600,'Linewidth',line_width);
title('Speed vs. Time','fontsize',font_size,'Interpreter','latex');
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('Speed (km/hr)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on
legend('desired','actual')
% print -depsc -r720 plots/speed_vs_time
exportfig(gcf,'plots/speed_vs_time.eps','width',11,'Height',8.5,'fontmode','fixed','fontsize',18,'Color','cmyk','LineWidth',line_width);

figure
subplot(2,1,1)
plot(t,v_tilde,'Linewidth',line_width);
title('Speed Error vs. Time','fontsize',font_size,'Interpreter','latex');
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('Error (m/s)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on
subplot(2,1,2)
plot(t,v_tilde/1000*3600,'Linewidth',line_width);
title('Speed Error vs. Time','fontsize',font_size,'Interpreter','latex');
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('Error (km/hr)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on
% print -depsc -r720 plots/error_vs_time
exportfig(gcf,'plots/error_vs_time.eps','width',11,'Height',8.5,'fontmode','fixed','fontsize',18,'Color','cmyk','LineWidth',line_width);

figure
plot(t,force,'Linewidth',line_width);
title('Force vs. Time','fontsize',font_size,'Interpreter','latex');
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('Force (N)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on
% print -depsc -r720 plots/force_vs_time
exportfig(gcf,'plots/force_vs_time.eps','width',11,'Height',8.5,'fontmode','fixed','fontsize',18,'Color','cmyk','LineWidth',line_width);
