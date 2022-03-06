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