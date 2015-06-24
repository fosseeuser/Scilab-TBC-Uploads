// example 5.30
// evaluate the given double integral using the simpsons rule;

// I= double integral f(x)=1/(x+y) in the range x=[1,2],y=[1,2];
// 1)
h=.5;
k=.5;
deff('[w]=f(x,y)','w=1/(x+y)')

I=(1/16)*[{f(1,1)+f(2,1)+f(1,2)+f(2,2)}+2*{f(1.5,1)+f(1,1.5)+f(2,1.5)+f(1.5,2)}+4*f(1.5,1.5)]

// 2)
h=.25;
k=.25;
deff('[w]=f(x,y)','w=1/(x+y)')

I=(1/64)*[{f(1,1)+f(2,1)+f(1,2)+f(2,2)}+2*{f(5/4,1)+f(3/2,1)+f(7/4,1)+f(1,5/4)+f(1,3/2)+f(1,7/4)+f(2,5/4)+f(2,3/4)+f(2,7/4)+f(5/4,2)+f(3/2,2)+f(7/4,2)}+4*{f(5/4,5/4)+f(5/4,3/2)+f(5/4,7/4)+f(3/2,5/4)+f(3/2,3/2)+f(3/2,7/4)+f(7/4,5/4)+f(7/4,3/2)+f(7/4,7/4)}]
