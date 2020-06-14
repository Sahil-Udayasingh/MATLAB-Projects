%y(n) - 3 y(n-1)-4 y(n-2) = x(n) + 2 x(n-1)
%IMPUSLE RESPONSE:

n = 1:10
a = [1 -3 -4];                     % left hand side of difference equation
b = [1 2 0];                       % right hand side of difference equation
[h2,x] = dimpulse(b,a,length(n));  %find h from difference equation
h2
