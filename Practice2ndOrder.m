% Author: Mario Frakulla
% Date: 02/03/2019
% MEM255, Second Order Systems, 
% laplace transform and step function response function

%% Number 1
syms s x
% damping = 0.6, freq = 1
omega = 1;           % frequency
zeta = 0.6;          % damping
Xs = (omega^2)/(s*((s^2)+(2*s*zeta*omega) + omega^2));
Xt = ilaplace(Xs);

% damping = 1, freq = 1
omega1 = 1;
zeta1 = 1;
Xs1 = (omega1^2)/(s*((s^2)+(2*s*zeta1*omega) + omega^2));
Xt1 = ilaplace(Xs1); 

% damping = 1.4, freq = 1
omega2 = 1;
zeta2 = 1.4;
Xs2 = (omega2^2)/(s*((s^2)+(2*s*zeta2*omega2) + omega2^2));
Xt2 = ilaplace(Xs2);

% damping = 0.2, freq = 1
omega3 = 1;
zeta3 = 0.2;
Xs3 = (omega3^2)/(s*((s^2)+(2*s*zeta3*omega3) + omega3^2)); 
Xt3 = ilaplace(Xs3); 

figure(3)
subplot(2,1,1)
fplot(Xt, [0, 20], 'LineWidth', 1.25, 'Color', 'Red')
title('zeta = 0.6, omega = 1', 'FontWeight', 'Bold')
grid on
subplot(2,1,2)
fplot(Xt1, [0, 20], 'LineWidth', 1.25)
title('zeta = 0.1, omega = 1', 'FontWeight', 'Bold')
grid on

figure(33)
subplot(2,1,1)
fplot(Xt2, [0, 20], 'LineWidth', 1.25, 'Color', 'Red')
grid on
title('zeta = 1.4, omega = 1')


subplot(2,1,2)
fplot(Xt3, [0, 20], 'LineWidth', 1.25, 'Color', 'Blue')
grid on
title('zeta = 0.2, omega = 1')

%% Number 2
clear all 
% tf(Numerator, Denominator) --> transfer function
omgNot = 1;
zetaNot = 0.6;
H = tf(omgNot^2,[1, 2*zetaNot*omgNot, omgNot^2]);
stepplot(H)
