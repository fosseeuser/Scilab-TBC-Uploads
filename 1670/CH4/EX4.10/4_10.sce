//Example 4.10
//Givens Method
//Page no. 105
clc;close;clear;

A=[8,-6,2;-6,7,-4;2,-4,3];
n=3;
for k=1:1
    max1=0
i1=2;j1=3;
fi=(atan((2*A(i1,j1))/(A(i1,i1)-A(j1,j1)+10^-20)))/2
disp(fi,'fi = ')
O1=eye(n,n)
O1(i1,j1)=-sin(fi)
O1(j1,i1)=sin(fi)
O1(i1,i1)=cos(fi)
O1(j1,j1)=cos(fi)
disp(O1,'O1 = ')
A=inv(O1)*A*O1
disp(A,'B = ')
end
printf('\n\n')
l=poly(0,'lb')
A=A-l*eye(n,n)
disp(det(A),'Characteristic Equation = ')
A=roots(det(A))
printf('\n\n The eigenvalues are : \n\n')
for i=1:n
    printf('\tl%i = %g\t',i,A(i))
end