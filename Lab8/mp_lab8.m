clear all; close all;

Rds=0.02;
Rl=0.04;
Rc=0.025;
L=47e-6;
C=22e-6;
Rld=25;

u=16;
ud=0.4; 

[t,x]=ode23(@functie_lab8, [0 4e-3], [0 0]);
y=x(:,2);
plot(t,u)
hold on
plot(t,y,'r')