A=[3 1;4 2]
disp('the given matrix is:')
disp(A)
disp(det(A),'det(A)=')
disp('5 X A = ')
disp(5*A)
disp(det(5*A),'det(5*A)=')
disp('thus, det(5A) is not equal to 5Xdet(A)')
disp('infact, the relation between det(rA) and det(A) for a nxn matrix is:')
disp('det(rA)=(r^n)*det(A)')