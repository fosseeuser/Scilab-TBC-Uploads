s=poly(0,'s')
h=syslin('c',1/(s^2)/(1+s));
clf();    nyquist(h)
// add a datatip
ax=gca();
h_h=ax.children($).children(2);//handle on Nyquist curve of h
tip=datatipCreate(h_h,[1.331,0.684]);
datatipSetOrientation(tip,"upper left");
