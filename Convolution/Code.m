t=-5:0.01:5;               %Defining Time Range

x=zeros(size(t));          %Two rectangular pulses
h=zeros(size(t));

subplot(4,2,1);
x(t>=0&t<=1)=1;
plot(t,x);
title('x(t)')

subplot(4,2,3);
h(t>=0&t<=0.5)=1;
plot(t,h);
title('h(t)')

subplot(4,2,5);
y=conv(h,x,'same');       %By using conv function
plot(t,y);
title('y(t)')

subplot(4,2,2);           %By using fourier transformation
q=fft(x);
plot(t,q);
title('X(f)')

subplot(4,2,4);
z=fft(h);
plot(t,z);
title('H(f)')

subplot(4,2,6);
w=z.*q;
plot(t,w);
title('Y(f)')
d=ifft(w);

subplot(4,2,8);
plot(t+5,d);
title('y(t)')
