% 1.J)
syms s x
zeta = 0.4;
wn = 1;
Gs = 1/(s*((s^2)+(2*wn*zeta*s) +(wn^2)));
Gx = ilaplace(Gs)
figure(7)
ezplot(Gx, [0:0.1:25])
ylim([0 1.5])
xlim([0 25])
grid on
title('Step response, for damping ratio = 0.4, natural freq = 1') 