%Filename: HW7_plot3.m
%Run this program after HW7_SIP-1.m, and HW7_SIP_tmrpns_2.mdl
x1_deg=x1*180/pi;
x2_deg=x2*180/pi;

figure(10)
subplot(1,3,1)
plot(t,cntrl)  % plot cntrl
grid on
grid minor
xlabel('t'), ylabel('cntrl')

subplot(1,3,2)
plot(x1_deg,x2_deg)      % plot phase plane trajectory
grid on
grid minor
xlabel('x1'), ylabel('x2')

subplot(1,3,3)
plot(t,x1_deg,t,x2_deg)  % plot x1, x2 time responses
legend('x1 deg)','x2 (deg/s)')
grid on
grid minor
xlabel('t'), ylabel('x1 and x2')
