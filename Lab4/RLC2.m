function dx=RLC2(t,x)
R=1e3 ; 
L=1e-3 ; 
C=1e-9 ; 
u=15;
dx=[1/L*x(2); 1/C/R*(-R*x(1)-x(2)+u)];

end


