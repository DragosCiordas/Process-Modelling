function dx=functie_lab8(t,x)

Rds=0.02;
Rl=0.04;
Rc=0.025;
L=47e-6;
C=22e-6;
Rld=25;

u=16;
ud=0.4;


f=40000;
fu=0.2;
T=1/f;
rest=mod(t,T);

if(rest<fu*T)
    
dx=[1/L*(u-(Rl-Rds)*x(1)); (-x(2))/(C*(Rld+Rc))];

else
    
dx=[1/L*(u-ud-Rl*x(1)-x(2)-Rc*((Rld*x(1)-x(2))/(Rld+Rc))); (Rld*x(1)-x(2))/(C*(Rld+Rc))];

end
