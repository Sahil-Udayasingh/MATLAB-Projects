t = 0:0.01:10;
subplot(3,2,1)
y1 = (square(t*pi)+1)/2;
plot(t,y1)
title('Input: Square Wave')

w=pi;
A=1;
a=4*A/pi;

for x = 1:1:4
    y = 0;
    n=input('Enter the n value');
    subplot(3,2,x+1)
    for i=1:2:(2*n+1)
        y=y+((a/i).*sin(i*w*t));
        q = (y+1)/2;
    end
    plot(t,q)
    title(['Square Wave as Sum of Sine and Cosine, with n =  ',num2str(n)])
end

diff = y1 - q;
subplot(3,2,6)
plot(t,diff)
hold on;
plot(t,y1)
title('Difference Between Input And Output, n = 50')