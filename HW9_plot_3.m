%Filename: HW9_plot3.m
%Run this program after HW9_P6_1.m, and HW9_P6_tmrpns_2.slx

figure(10)
subplot(1,3,1)
plot(t,cntrl)  % plot cntrl
grid on
grid minor
xlabel('t'), ylabel('cntrl')

subplot(1,3,2)
plot(x1,x2)      % plot phase plane trajectory
grid on
grid minor
xlabel('x1'), ylabel('x2')

subplot(1,3,3)
plot(t,x1,t,x2)  % plot x1, x2 time responses
legend('x1','x2')
grid on
grid minor
xlabel('t'), ylabel('x1 and x2')
