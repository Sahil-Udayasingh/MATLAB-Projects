numerator1 = [5,8,3,2];
denominator1 = [1,6,7,9,13];
sys1 = tf(numerator1,denominator1)
numerator2 = [9,0,5];
denominator2 = [1,3,4,6];
sys2 = tf(numerator2,denominator2)
sys3= 1+((sys1)*(sys2))
sys4 = (sys2)/sys3
P = pole(sys4)
Z = zero(sys4)
pzmap(sys4)
grid on
