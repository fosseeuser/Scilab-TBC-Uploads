clear;
clc;

// Example: 3.10
// Page: 103

printf("Example: 3.10 - Page: 103\n\n");

// Solution

//*****Data*****//
beeta = 1.487*10^(-3);// [1/OC]
alpha = 62*10^(-6);// [1/bar]
V1 = 1.287;// [cubic cm /g]
//************//

// Solution (a)
// The value of derivative (dP/dT) at constant V:
// dV/V = beeta*dT - alpha*dP
// dV = 0
// dP/dT = beeta/alpha
// Value = dP/dT
Value = beeta/alpha;// [bar/OC]
printf("Value of derivative is %.2f bar/OC\n",Value);

// Solution (b)
P1 = 1;// [bar]
T1 = 20;// [OC]
T2 = 30;// [OC]
// Applying the same equation:
P2 = P1 +(beeta/alpha)*(T2 - T1);// [bar]
printf("The pressure generated by heating at constant Volume is %.2f Pa\n",P2);

// Solution (c)
T2 = 0;// [OC]
T1 = 20;// [OC]
P2 = 10;// [bar]
P1 = 1;// [bar]
// The change in Volume can be obtained as:
V2 = V1*exp((beeta*(T2 - T1)) - alpha*(P2 - P1));// [cubic cm/g]
deltaV = V2 - V1;// [cubic cm/g]
printf("The change in Volume is %.3f cubic cm/g\n",deltaV);