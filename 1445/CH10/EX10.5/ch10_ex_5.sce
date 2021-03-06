//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 5

disp("CHAPTER 10");
disp("EXAMPLE 5");

//VARIABLE INITIALIZATION
P1=12;                           //number of poles of alternator
N_s1=500;                        //synchronous speed of alternator in rpm
P2=8;                            //number of poles of motor
s=0.03;                          //slip of the motor

//SOLUTION
f=(N_s1*P1)/120;
N_s2=(120*f)/P2;
N_r=N_s2*(1-s);
N_r=round(N_r);                  //to round off the value               
disp(sprintf("The speed of the motor is %d rpm",N_r));

//END
