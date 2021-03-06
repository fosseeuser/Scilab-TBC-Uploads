//Caption:transfer_function
// example 12.5
//page 518
// we are solving this problem from signal flow graph approach
syms G1 G2 G3 G4 G5 H1 H2
// forward path denoted by P1,P2 and so on and loop by L1,L2 and so on 
//path factor by D1,D2 and so on and graph determinant by D
P1=G1*G4*G5;
P2=G1*G2*G3*G5;
L1=-G3*G5;
L2=-G3*G5*H2;
L3=-G1*G4*G5*H1;
L4=-G1*G2*G3*G5*H1;
D1=1;
D2=1;
D=1-(L1+L2+L3+L4);
Y=(P1*D1+P2*D2)/D;
Y=simple(Y);
disp(Y,"C(s)/R(s)=");