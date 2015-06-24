//clc()
mcoal = 100;//kg
mC = 63;//kg
mH = 12;//kg
mO = 16;//kg
mash  =9;//kg
mfixC = 39;//kg
mH2O = 10;//kg
mCvolatile = mC - mfixC;
mHH2O = mH2O *2.016/18.016;//(mass of hydrogen in moisture)
mHvolatile = mH - mHH2O;
mOH2O = mH2O - mHH2O;
mOvolatile = mO - mOH2O;
mtvolatile = mCvolatile + mHvolatile + mOvolatile;
PC = mCvolatile * 100 / mtvolatile;
PH = mHvolatile * 100 / mtvolatile;
PO = mOvolatile * 100 / mtvolatile;
disp("%",PC,"(a)percent carbon in volatile matter = ")
disp("%",PH,"   percent hydrogen in volatile matter = ")
disp("%",PO,"   percent oxygen in volatile matter = ")
PCflue = 10.8;//%
Pvflue = 9.0;//%
Pashflue = 80.2;//%
//taking ash balance, Wis the weight of the refuse,
W = mash *100 / Pashflue;
mvflue = Pvflue * W /100;
mCflue = W * PCflue / 100;
Ctflue = mCflue + mvflue * PC / 100;//total carbon in flue
Htflue = mvflue * PH / 100;
Otflue = mvflue * PO / 100;
PCflue = Ctflue *100/W;
PHflue = Htflue *100/W;
POflue = Otflue *100/W;
disp("%",PCflue,"(b)percent Carbon in refuse = ")
disp("%",PHflue,"   percent Hydrogen in refuse = ")
disp("%",POflue,"   percent Oxygen in refuse = ")
disp("%",Pashflue,"   percent Ash in refuse = ")
Coalburnt = mcoal - W;
NCburnt = (mC - Ctflue)/12;
NHburnt = (mH - Htflue)/2.016;
NOburnt = (mO - Otflue)/32;
PCO2 = 80;//Percentage of carbon burnt
NCO2 = PCO2 * NCburnt / 100;
NCO = ( 1 - PCO2/100 )*NCburnt;
Vair = 1000;//m^3
Nair = Vair / 22.4143;
NN2 = Nair * 79 / 100;
NO2 = Nair * 21 / 100;
Ocompounds = NCO2 + NCO/2 + NHburnt/2;//Oxygen present in CO2,CO and H2O
//Oxygen balance gives free oxygen as,
Ofree = NO2 + mO/32 - Otflue/32 - Ocompounds;
Ntotal = NN2 + Ofree + NCO2 + NCO;//dry basis
PCO21 = NCO2 *100/Ntotal;
PCO1 = NCO * 100/Ntotal;
PO21 = Ofree * 100/Ntotal;
PN21 = NN2 * 100/Ntotal;
disp("%",PCO21,"(c)percent CO2 in flue = ")
disp("%",PCO1,"   percent CO in flue = ")
disp("%",PO21,"   percent O2 in flue = ")
disp("%",PN21,"   percent N2 in flue = ")
NOrequired = mC/12 + mH/(2.016*2) - mO/32;
Oexcess = NO2 - NOrequired;
Pexcess = Oexcess * 100 / NOrequired;
disp("%",Pexcess,"(d)Percent excess air supplied = ")
NH2Oflue = NHburnt;
mH2O = NH2Oflue * 18.016;
m = mH2O * 100/Ntotal;
disp("g water vapour / 100kmol dry flue gas",m,"(e)mass of water vapour per 100 moles of dry flue gas = ")