printf("//to find transfer function using mason gain formula\nsyms G1 G2 G3 G4  \n//gains of forward paths\nP1=G1*G2*G3;//forward path1 gain\n P2=G4;//forward path2 gain\n//gain of individual loops\nL1=-G1*G2;\nL2=G2*G3;\n//NO TWO NON TOUCHING LOOPS ARE THERE\n//since all the loops touches the forward path1 and loop1 and 2 do not touch forward path 2\\nd1=1;\nd2=1-(L1+L2);\nG=(P1*d1+P2*d2)/d2;\ntransfer function C/R=G")