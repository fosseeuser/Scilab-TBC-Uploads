clear;
clc;
T_e=3;
K_m=1.2;
I_a=T_e/K_m;
r_a=2;
V=230;
E_a=(.263*sqrt(2)*V-I_a*r_a)/(1-55/180);
w_m=E_a/K_m;
N=w_m*60/(2*%pi);    printf("motor speed=%.2f rpm",N);