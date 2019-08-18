t = -2:0.01:2;
subplot(1,3,1)
u(t>=0) = 1;
plot(t,u)
title('Unit-Step Function - u(t)')

subplot(1,3,2)
u1(t+1>=0)=1;
plot(t,u1)
title('Y = u(t+1)')

subplot(1,3,3)
u2(t-1>=0)=1;
plot(t,u2)
title('Y = u(t-1)')
