function dx = suspensie(t,x)
M1 = 300;
M2 = 30;
k1 = 28e3;
k2 = 21e3;
D1 = 2000;
D2=10;
u=3;
du=0;

dx = [x(2); 
      1/M1*(k1*x(1)-D1*x(2)+k2*x(3)+D1*x(4));
      x(4);
      1/M2*(-k2*x(3)-D2*x(4)-k1*x(3)-D1*x(4)+k1*x(1)+D1*x(2)+k2*u+D2*du)];
end