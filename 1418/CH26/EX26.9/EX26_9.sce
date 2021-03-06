//example 26.9
//VOLTAGE GENERATED BY A FOUR POLE GENERATOR

clc;
funcprot(0);

//Variable Initialisation
P=8;.....................//Number of poles 
Z=500;.....................//Number of conductors
N=1200;..................//Speed of the generator in rpm
Phi=0.05;............//Flux per pole in Weber
Al=P;....................//Number of parallel paths for lap winding
Aw=2;....................//Number of parallel paths for wave winding

Eg=Phi*P*N*Z/(60*Al);..............//Voltage generated in Volts
disp(Eg,"Voltage generated in Volts:");

Nw=(Eg*60*Aw)/(Phi*P*Z);...........//Speed of the generator if wavewound in rpm
disp(Nw,"Speed of the generator if wavewound in rpm:");

//Additional Explanation
I=1;...............//Current per conductor in Amperes
printf("(a).Lap wound,1200 rpm,500V per coil,8 groups in parallel");
Inet1=Al*I;.................//Net current in Amperes
Po1=Eg*Inet1/1000;...............//Output power in Kilo Watts
disp(Po1,"Output power in Kilo Watts:");

printf("(b).Wave wound,300 rpm,500V per coil,2 groups in parallel-1 group has 4 coils in series");
Inet2=Aw*I;.................//Net current in Amperes
Po2=Eg*Inet2;...............//Output power in Watts
disp(Po2,"Output power in Watts:");








