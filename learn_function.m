function dx=learn_function(t,x)
R1=10e3 ; 
R2=15e3 ; 

C1=22e-9 ; 
C2=10e-9 ; 



w=600;
u=sin(w*t);
dx=[1/R2/C1*x(2); 1/R1/C2*(u-x(1)-R1/R2*x(2))];
end