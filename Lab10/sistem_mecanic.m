function dx = sistem_mecanic(t,x)
M1 = 15;
M2 = 30;
k1 = 0.8;
k2 = 0.8;
D = 1;
f = 1;

dx = [x(2); 
      1/M1*(-D*x(2)-k1*x(1)+f+k1*x(3)-D*x(4));
      x(4);
      1/M2*(-k1*x(3)-D*x(4)-k1*x(3)-k1*x(1)+D*x(2))]
end