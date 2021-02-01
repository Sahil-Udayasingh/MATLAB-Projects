clc; close all;
x1 = input('Enter First sequence x1(n)[] : ');
t1 = input('Enter Origin location Of Sequence x1 : ');
x2 = input('Enter Second sequence x2(n)[] : ');
t2 = input('Enter Origin location Of Sequence x2 : ');
l1 = length(x1); %length of sequence x1
l2 = length(x2); %length of sequence x2
ln = l1+l2-1; %length of convoluted sequence
y = conv(x1,x2); % performing convolution using conv() function
a = t1+l1-1; t = t1:a;
subplot(3,1,1); stem(t,x1);
xlabel('Time'); ylabel('Amplitude');
title('x1');
a = t2+l2-1;
t = t2:a;
subplot(3,1,2);
stem(t,x2);
xlabel('Time'); ylabel('Amplitude');
title('x2');
tn = t1+t2;
a = tn+ln-1;
t = tn:a;
subplot(3,1,3);
grid on
disp('Convoluted Sequence ');
disp(y); % For printing the convulated output in MATLAB command window
stem(t,y); %  For plotting the convulated output in MATLAB graph window
xlabel('Time');
ylabel('Amplitude');
title('Convoluted Sequence');
hold on;
