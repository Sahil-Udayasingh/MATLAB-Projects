clear;
close all;
x=[0,1,2,3];
N=length(x);
w = 2*pi/N;
for k=1:N
    X(k)=0;
    for n=1:N
        X(k)=X(k)+x(n)*exp(-1j*w*(n-1)*(k-1)/N);
    end
end

f=0:N-1;
subplot(311)
stem(0:N-1,x)
title('Sequence x (in t domain)')
xlabel('t')
ylabel('Amp')
grid;

subplot(323)
stem(f,abs(x))
title('Magnitude of Fourier Coeffients using function')
ylabel('|X|')
grid;

subplot(324)
stem(f,abs(fft(x)))
title('Magnitude using fft function')
ylabel('|X|')
grid;
