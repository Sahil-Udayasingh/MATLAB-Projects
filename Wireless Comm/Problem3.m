clear;
close all;
N=5;
n=10^5;
Rth=0.5;
i=1;
No=1;
for Ipdb=0:3:30
    out1=0;
    out2=0;
    Pt=10^(Ipdb/10);
    for k=1:n
        for j=1:1:N
            a(j)=exprnd(4,1);
        end
        hsd=min(a);
        SNRsd=(Pt*hsd)/No;
        if ((1+SNRsd)<2^Rth)
            out1=out1+1;
        end
        out2=out2+log2(1+SNRsd);
    end
    a1(i)=out1/n;
    a2(i)=out2/n;
    i=i+1;
end

subplot(2,1,1);
Ipdb=0:3:30;
semilogy(Ipdb,a1(1:11),"r*");
hold on;
title("Outage vs SNR");

subplot(2,1,2);
Ipdb=0:3:30;
semilogy(Ipdb,a2(1:11),"r*");
hold on;
title("System capacity vs SNR");
