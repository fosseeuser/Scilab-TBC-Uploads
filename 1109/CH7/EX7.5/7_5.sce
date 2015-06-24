clear;
clc;
c=3*(10^8);f=3000*(10^6);a=.0722;
lo=c/f;
lc=2*a;
lg=lo/(sqrt(1-((lo/lc)^2)));
Vp=(lg/lo)*c*10^-8;
printf("-Phase velocity Vp = %f * 10^8 m/sec\n",round(Vp*10)/10);
Vg=(lo/lg)*c*10^-8;
printf("-Group velocity Vg = %f * 10^8 m/sec\n",round(Vg*10)/10);
b=(2*%pi)/lg;
printf("-Phase constant = %f radians/m",round(b));