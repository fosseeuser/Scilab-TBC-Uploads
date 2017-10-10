r=200;
x_c=100;
v=40;
disp("Part a");
ir=v/r;
ic=v/x_c;
i=sqrt(ir^2+ic^2);
disp("the total circuit current (in A) is"); disp(i);
disp("Part b");
z=v/i;
disp("the impedance (in Ω) of the circuit is"); disp(z);
disp("Part c");
deg=atan(ic/ir)*180/%pi;
disp("the phase angle (in deg) between the circuit current and applied voltage is"); disp(deg);