% Homework 6
%% Problem 1.g
tg = 0:0.01:7;
x1g = 1.159*x_20*cos(2.288*tg);
x2g = -2.066*x_20*cos(2.288*tg);
figure(5)
plot(tg, x1g, 'LineWidth', 1.25, 'Color', 'Red')
grid on
hold on
plot(tg, x2g, 'LineWidth', 1.25, 'Color', 'Blue')
title('1.g; A1 = 0 , C1 = 0')
legend('x1(t)', 'x2(t)')
xlabel('time (s)')




