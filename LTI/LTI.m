t= -1:0.01:1;                                    %First System
h =exp(-t).*heaviside(t);
x=0.5*cos(2*pi*10*t);
subplot(3,2,1);
y=conv(h,x,'same');
plot(t,y,t,x);
subplot(3,2,3);
plot(t,angle(y));
subplot(3,2,5);
plot(t,abs(y));

h1=(2/sqrt(3))*exp(-t*0.5).*sin((sqrt(3)/2)*t); %Second System
x=0.5*cos(2*pi*10*t);
subplot(3,2,2);
y1=conv(h1,x,'same');
plot(t,y1,t,x);
subplot(3,2,4);
plot(t,angle(y1));
subplot(3,2,6);
plot(t,abs(y1));

