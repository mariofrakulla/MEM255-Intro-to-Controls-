%% Number 1
syms s x
c = 0.6;
w = 1;
y = w^2/(s*(s^2+(2*c*w*s)+w^2));
t1 = ilaplace(y);
figure(1)
subplot(2,4,1)
ezplot(matlabFunction(t1), [0,10])
title('w=1, c=0.6');

syms s x
c = 1;
w = 1;
y2 = w^2/(s*(s^2+(2*c*w*s)+w^2));
t2 = ilaplace(y2);
subplot(2,4,2)
ezplot(matlabFunction(t2), [0,10])
title('w=1, c=1');

syms s x
c = 1.4;
w = 1;
y3 = w^2/(s*(s^2+(2*c*w*s)+w^2));
t3 = ilaplace(y3);
subplot(2,4,3)
ezplot(matlabFunction(t3), [0,10])
title('w=1, c=1.4');

syms s x
c = .2;
w = 1;
y4 = w^2/(s*(s^2+(2*c*w*s)+w^2));
t4 = ilaplace(y4);
subplot(2,4,4)
ezplot(matlabFunction(t4), [0,10])
title('w=1, c=0.2');

%Part C

syms s x
c = 0.6;
w = 2;
y5 = w^2/(s*(s^2+(2*c*w*s)+w^2));
t5 = ilaplace(y5);
subplot(2,4,5)
ezplot(matlabFunction(t5), [0,10])
title('w=2, c=0.6');

syms s x
c = 1;
w = 2;
y6 = w^2/(s*(s^2+(2*c*w*s)+w^2));
t6 = ilaplace(y6);
subplot(2,4,6)
ezplot(matlabFunction(t6), [0,10])
title('w=2, c=1');

syms s x
c = 1.4;
w = 2;
y7 = w^2/(s*(s^2+(2*c*w*s)+w^2));
t7 = ilaplace(y7);
subplot(2,4,7)
ezplot(matlabFunction(t7), [0,10])
title('w=2, c=1.4');

syms s x
c = .2;
w = 2;
y8 = w^2/(s*(s^2+(2*c*w*s)+w^2));
t8 = ilaplace(y8);
subplot(2,4,8)
ezplot(matlabFunction(t8), [0,10])
title('w=2, c=0.2');

%% Number 2
%spoke to Prof Chang and learned of new way to specify variables and
%functions hence it is slightly changed from above
clear all
clc
zeta = .6;
w0 = 1;
figure(2)
sys = tf(w0^2,[1,2*zeta*w0,w0^2]);
subplot(1,3,1);
step(sys);
title('w=1, c=0.6');

subplot(1,3,2)
sys2 = tf([1 1],[1,2*zeta*w0,w0^2]);
step(sys2)
title('LHP zero at s=-1');

subplot(1,3,3)
sys3 = tf([-1 1],[1,2*zeta*w0,w0^2]);
step(sys3)
title('LHP zero at s=1');


