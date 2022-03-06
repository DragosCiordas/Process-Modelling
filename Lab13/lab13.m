clc
clear all; close all;
 
J1=20;
J2=20;
D=50;
T=10;
k1=100;
k2=100;

[t,x]=ode23(@functie_lab13, [0 50], [0 0 0 0]);
y=x(:,1);

plot(t,y,'r')