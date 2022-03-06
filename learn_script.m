R1=10e3 ; 
R2=15e3 ; 

C1=22e-9 ; 
C2=10e-9 ; 


w=600;
T=2*pi/w;

[t,x]=ode23('functie_lab6',[0 10*T],[0 0]);

u=sin(w*t);
plot(t,u),hold on
plot(t,x(:,1))


