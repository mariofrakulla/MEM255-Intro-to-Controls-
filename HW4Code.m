% Author: Mario Frakulla
% Date: 02/04/2019
%% Problem 1
syms x s
Xs = 4/(s*((s^2) + (3*s) + 2));
Xt = ilaplace(Xs);
figure(3)
t = 0:0.1:10;
Xt1 = -4*exp(-t);
Xt2 = 2*exp(-2*t);
Xt0 = 2*ones(length(t));
plot(t, Xt0, 'LineWidth', 1.25, 'Color', 'Cyan', 'LineStyle', '--')
hold on
plot(t, Xt1, 'LineWidth', 1.25, 'Color', 'Green', 'LineStyle', '--')
plot(t, Xt2, 'LineWidth', 1.25, 'Color', 'Red', 'LineStyle', '--')
fplot(Xt, [0,10], 'LineWidth', 1.25, 'Color', 'Blue')
grid on


%% Problem 2
Xs2 = 20/(s*((s^2) + (2*s) + 10));
XXt2 = ilaplace(Xs2);
figure(33);
t2 = 0:0.1:10;

fplot(XXt2, [0, 10], 'LineWidth', 1.25, 'Color', 'Red');
grid on
hold on 
XXT1 = ((2*sqrt(10))/3)*(cos(3*t2 + 161.6)).*exp(-t2);
plot(t, XXT1, 'LineWidth', 1.25, 'Color', 'Green')