%% Problem 1.c
syms s t
close all
Ys1 = 18594.9/(s*(s^2 + 43.14*s + 929.7));
Us1 = (20*(6.39*s + 275.9))/(s*(s^2 + 43.14*s + 929.7));
Yt1 = ilaplace(Ys1);
Ut1 = ilaplace(Us1);
figure(1)
fplot(Yt1, [0 0.5], 'LineWidth', 1.25, 'Color', 'Blue')
grid on
hold on
fplot(Ut1, [0 0.5], 'LineWidth', 1.25, 'Color', 'Green')
xlabel('Time (sec)')
legend({'Output Response, y(t)', 'Control Input, u(t)'})
title('Step response for Problem 1')

%% Problem 2.c
Ys2 = (20*8584.9)/(s*(s+8628));
Us2 = (20*(59*s + 2545.3))/(s*(s+8627.6));
Yt2 = ilaplace(Ys2);
Ut2 = ilaplace(Us2);
figure(2)
fplot(Yt2, [0 0.001], 'LineWidth', 1.25, 'Color', 'Blue')
grid on
hold on
fplot(Ut2, [0 0.001], 'LineWidth', 1.25, 'Color', 'Green')
xlabel('Time (sec)')
legend({'Output Response, y(t)', 'Control Input, u(t)'})
title('Step response for Problem 2')

%% Problem 3.c
Ys3 = (20*(27.56*s + 2502.6))/(s^2 + 70.64*s + 2502.6);
Us3 = (20*(0.189*s^2 + 25.4*s + 742))/(s*(s^2 + 70.64*s +2502.6));
Yt3 = ilaplace(Ys3);
Ut3 = ilaplace(Us3);
figure(3)
fplot(Yt3, [0 0.5], 'LineWidth', 1.25, 'Color', 'Blue')
grid on
hold on
fplot(Ut3, [0 0.5], 'LineWidth', 1.25, 'Color', 'Green')
xlabel('Time (sec)')
legend({'Output Response, y(t)', 'Control Input, u(t)'})
title('Step response for Problem 3')

%% Problem 4.c
Us4 = (20*(17.2*s + 742))/(s*(s^2 + 15.64*s + 2502.6));
Ys4 = (20*(2502.6))/(s*(s^2 + 70.64*s + 2502.6));
Yt4 = ilaplace(Ys4);
Ut4 = ilaplace(Us4);
figure(4)
fplot(Yt4, [0 0.5], 'LineWidth', 1.25, 'Color', 'Blue')
grid on
hold on
fplot(Ut4, [0 0.5], 'LineWidth', 1.25, 'Color', 'Green')
xlabel('Time (sec)')
legend({'Output Response, y(t)', 'Control Input, u(t)'})
title('Step response for Problem 4')