function dx=RLC(t,x)
R=1e3 ; 
L=1e-3 ; 
C=1e-9 ; 

w=1/sqrt(L*C);
u=sin(w*t);

dx=[1/L*(u-R*x(1)-x(2)); 1/C*x(1)];

end


