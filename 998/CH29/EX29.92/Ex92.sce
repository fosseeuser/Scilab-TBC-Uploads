//Ex:92
clc;
clear;
close;
b_c=72;//carrier BW in MHz
f_c=1190;//Center freq in MHz
f_i=140;// first intermediate freq in MHz
f_smx=14500;//max uplink freq spectrum in MHz
f_smn=14000;//min uplink freq spectrum in MHz
f_l1=f_c-f_i;// in MHz;
f_l1=f_c-f_i;// in MHz
f_l2mx=f_smx-f_c;// in MHz
f_l2mn=f_smn-f_c;// in MHz
f_s1=f_smx-2*(f_l1+f_i);
f_s2=f_smn-2*(f_l1+f_i);
b_pf1=140;// in MHz
b_pf2=500;// in MHz
printf("The first local oscillator frequency=%f MHz", f_l1);
printf("\n The max second oscillator frequency =%f GHz", f_l2mx/1000);
printf("\n The min second oscillator frequency =%f GHz", f_l2mn/1000);
printf("\n The max frequency spectrum =%f GHz", f_s1/1000);
printf("\n The min frequency spectrum =%f GHz", f_s2/1000);
printf("\n The BW of BPF-1=%f MHz", b_pf1);
printf("\n The BW of BPF-1=%f MHz", b_pf2);