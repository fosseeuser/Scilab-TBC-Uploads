//clc()
//lnPas = 14.5463 - 2940.46/(T - 35.93)
//lnPbs = 14.2724 - 2945.47 / (T - 49.15)
//xa = (P - Pbs)/(Pas - Pbs)
//Ya = Pas * (P - Pbs)/(P * (Pas - Pbs))
Ya = 0.4;
P = 65;//kPa
//various temperature value are assumed and tried till LHS = RHS, we get
T = 334.15;//K
Pas = exp(14.5463 - 2940.46/(T - 35.93));
Pbs = exp(14.2724 - 2945.47 / (T - 49.15));
xa = (P - Pbs)/(Pas - Pbs);
disp("K",T,"(a)The Dew point temperature at 65 kPa = ")
disp(xa,"    Concentration of the first drop of liquid = ")
T1 = 327;//K
Pas1 = exp(14.5463 - 2940.46/(T1 - 35.93));
Pbs1 = exp(14.2724 - 2945.47 / (T1 - 49.15));
xa1 = Ya * Pbs1 / (Pas1 - Ya*(Pas1 - Pbs1));
P1 = xa1 * Pas1 / Ya;
disp("kPa",P1,"(b)The dew point pressure at 327 K = ") 
disp(xa1,"    Concentration at 327K = ")