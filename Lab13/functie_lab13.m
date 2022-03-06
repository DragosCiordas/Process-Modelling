function dx=functie_lab8(t,x)

J1=20;
J2=20;
D=50;
T=10;
k1=100;
k2=100;


dx=[x(2); 
    1/J1*(-D*x(2)+T+k1*x(3)+D*x(4)-k1*x(1)); 
    x(4);  
    1/J2*(D*x(2)+k1*x(1)-D*x(4)-k2*x(3)-k1*x(3)) ];


end
