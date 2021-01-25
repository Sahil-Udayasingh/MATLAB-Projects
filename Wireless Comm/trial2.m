clc;
clear All;
n = 10^5;
Rth = 0.5;
i = 1;
No = 1;
for i = 0:1:30;
    out = 0;
    Pt = 10^(i/10);
    for k = 0:1:n
        hsd = exprnd(4,1);
        SNRsd = (Pt*hsd)/No;
            out = ((1 + SNRsd)/2) + out;
    end
   C(i+1)= out / n;
    SNRsdb(i+1)=i;
end
subplot(1,1,1);
plot(SNRsdb,C);
Ipdb = 0:3:30;
    semilogy(Ipdb,C(1:11), 'r*')
    hold on
title('Amplify and Forward');
xlabel('transmitted SNR (in db)');
ylabel('capacity');