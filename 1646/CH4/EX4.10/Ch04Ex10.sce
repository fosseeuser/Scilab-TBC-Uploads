// Scilab Code Ex4.10: Page-197  
clc;clear;
w1 = 0.02;....// Magnitude of the dispersive power of first lens
w2 = 0.04;....// Magnitude of the dispersive power of second lens
// Let 1/f1 = x and 1/f2 = y, then
// The condition for achromatic combination of two lenses, w1/f1 + w2/f2 = 0 => w1*x + w2*y = 0    --- (I)
F = 20;....// Given focal length of achromatic doublet, cm
// Also F = 1/f1 + 1/f2 => F = x + y    ---- (II)
A = [w1 w2; 1 1];      // Square matrix
B = [0;1/F];    // Column vector
X = inv(A)*B;    // Characteristic roots of the simultaneous equations, cm
f1 = 1/X(1);    // Focal length of convex lens, cm
f2 = 1/X(2);    // Focal length of concave lens, cm

printf("\nThe focal length of convex lens = %2d cm", ceil(f1));
printf("\nThe focal length of concave lens = %2d cm", ceil(f2));

// Result
// The focal length of convex lens = 10 cm
// The focal length of concave lens = -20 cm 
