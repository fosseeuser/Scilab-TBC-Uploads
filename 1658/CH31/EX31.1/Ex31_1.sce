clc;
//e.g 31.1
R=100*10**3;
C=0.4*10**-6;
n=0.57;
f=1/(2.3*R*C*log10(1/(1-n)));
disp('HZ',f*1,"f=");
