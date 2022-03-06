R=1e3 ; 
L=1e-3 ; 
C=1e-9 ; 
w=1/sqrt(L*C)*10;

T=(2*pi)/w;

[t,x]=ode23(@RLC, [0 8*T], [0 0])

u=sin(w*t);
y=x(:,2)
plot(t,u)
hold on
plot(t,y,'r')
%%
R1=0.4;
R2=0.9;
R3=2;
C1=0.04;
C2=0.09;
L=0.1 ; 


w=0.4;

[t,x]=ode23(@RLC3, [0 50], [0 0 0])

u=sin(w*t);
y=x(:,2)
plot(t,x(:,1)), hold on
plot(t,x(:,2)),plot(t,x(:,3)), hold off
