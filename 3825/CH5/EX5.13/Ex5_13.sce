clc
Pa=500*10^3
T1=300 //temperature in kelvin
T2=300
P1=100*10^3
Ta=(Pa*T1)/P1
mprintf("Ta=%fK\n",Ta)
Cv=20.93
Cp=29.302
ua=Ta*Cv
u1=T1*Cv
mprintf("ua-u1=%fkJ/mol\n",(ua-u1)/1000)//ans vary due to roundoff error
q1a=ua-u1
qa2=Cp*(T2-Ta)
q=qa2
mprintf("qa2=%fkJ/mol\n",qa2/1000)//ans vary due to roundoff error
deltau=Cv*(T2-Ta)
mprintf("u2-ua=%fkJ/mol\n",deltau/1000)//ans vary due to roundoff error
W=q-deltau
mprintf("W=%fkJ/mol\n",W/1000)//aans vary due to roundoff error
R=8.314
P1=100
P2=500
T=T1
W=R*T*log(P1/P2)
mprintf("W=%fkJ/mol\n",W/1000)//ans vary due to roundoff error
gama=1.4
Tb=T1*((P2/P1)^(gama-1))
mprintf("Tb=%fK\n",Tb)//ans vary due to roundoff error
ub=Cv*Tb
u1=Cv*T1
deltau=ub-u1
mprintf("ub-u1=%fkJ/mol\n",deltau/1000)//ans vary due to roundoff error
W=-deltau
mprintf("Total Work done=%fkJ/mol\n",W/1000)//ans vary due to roundoff error
