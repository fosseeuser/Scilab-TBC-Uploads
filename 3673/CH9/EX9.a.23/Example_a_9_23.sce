//Example_a_9_23 page no:421
clc;
Zbcmag=105.85/5;
Zbcang=-31.81-0;
Zcamag=105.85/5;
Zcaang=-31.81-30;
Zbamag=105.85/10;
Zbaang=-31.81+60;
Vcbmag=208;
Vcbang=0;
Vbamag=208;
Vbaang=-120;
Vacmag=208;
Vacang=-240;
Icmag=Vcbmag/Zbcmag;
Icang=Vcbang-Zbcang;
Ibmag=Vbamag/Zbamag;
Ibang=Vbaang-Zbaang;
Iamag=Vacmag/Zcamag;
Iaang=Vacang-Zcaang;
Icreal=Icmag*cosd(Icang);
Icimag=Icmag*sind(Icang);
Ibreal=Ibmag*cosd(Ibang);
Ibimag=Ibmag*sind(Ibang);
Iareal=Iamag*cosd(Iaang);
Iaimag=Iamag*sind(Iaang);
Ia=Iareal+(%i*Iaimag);
Ib=Ibreal+(%i*Ibimag);
Ic=Icreal+(%i*Icimag);
//calculating the current values
I1=Ic-Ia;
I2=Ib-Ic;
I3=Ia-Ib;
I1mag=sqrt(real(I1)^2+imag(I1)^2);
I1ang=atand(imag(I1)/real(I1));
I2mag=sqrt(real(I2)^2+imag(I2)^2);
I2ang=atand(imag(I2)/real(I2));
I2ang=I2ang-180;
I3mag=sqrt(real(I3)^2+imag(I3)^2);
I3ang=atand(imag(I3)/real(I3));
disp(I1mag,"the magnitude of current I1 is (in A)");
disp(I1ang,"the angle of current I1 is (in A)");
disp(I2mag,"the magnitude of current I2 is (in A)");
disp(I2ang,"the angle of current I2 is (in A)");
disp(I3mag,"the magnitude of current I3 is (in A)");
disp(I3ang,"the angle of current I3 is (in A)");
Zcmag=10;
Zcang=-60;
Zbmag=5;
Zbang=30;
Zamag=5;
Zaang=0;
//calculating the voltage values
Vzcmag=I1mag*Zcmag;
Vzcang=I1ang+Zcang;
Vzbmag=I2mag*Zbmag;
Vzbang=I2ang+Zbang;
Vzamag=I3mag*Zamag;
Vzaang=I3ang+Zaang;
disp("the voltage across the load impedence are ");
disp(Vzcmag,"the magnitude of voltage across impedance Zc is (in ohm)");
disp(Vzcang,"the angle of voltage across impedance Zc is (in degree)");
disp(Vzbmag,"the magnitude of voltage across impedance Zb is (in ohm)");
disp(Vzbang,"the angle of voltage across impedance Zb is (in degree)");
disp(Vzamag,"the magnitude of voltage across impedance Za is (in ohm)");
disp(Vzaang,"the angle of voltage across impedance Za is (in degree)");
//the result produced in this problem varies slightly with the text book calculation because in text book the value is rounded off at every point but here values of directly simplified results are used