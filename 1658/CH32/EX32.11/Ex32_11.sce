clc;
Acm=0.001;
AOL=180000;
Zin=1*10**6;
Zout=80;
SR=0.5;
Acl=1;
CMRR=Acl/Acm;
disp(CMRR);
Vpk=3;
fmax=SR/(2*%pi*Vpk)
disp('kHZ',fmax*10**3,"fmax=");