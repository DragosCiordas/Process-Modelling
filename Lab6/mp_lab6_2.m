clear all; close all;

R1=10e3 ; 
R2=15e3 ; 

C1=22e-9 ; 
C2=10e-9 ; 

w=6000;

T=(2*pi)/w;

[t,x]=ode23(@functie2_lab6, [0 10*T], [0 0])

u=sin(w*t);
y=u-x(:,1)-x(:,2);
plot(t,u)
hold on
plot(t,y,'r')