clc;
clear;
r=30000e3;
v1=11e3;
v2=110e3;
zb1=v1^2/r;
zb2=v2^2/r;
zp1=80/zb2;
zp2=.1*%i*30000/35000;
zp3=.2*%i*30000/10000;
zp3r=real(zp3);
zp2r=real(zp2);
zp3i=imag(zp3);
zp2i=imag(zp2);
zb2=round(zb2*10)/10;
zp1=round(zp1*1000)/1000;
zp2i=round(zp2i*10000)/10000;
zp3i=round(zp3i*10)/10;
mprintf("the base impedence of transmission line circuti=%fohm\nper unit reactance of transmission line=%fp.u.\n ",zb2,zp1);
mprintf("per unit reactance of transformer to new base=%f+(%fj)p.u.\nPer unit reactance of motor to new base=%f+(%fj)p.u.",zp2r,zp2i,zp3r,zp3i);
