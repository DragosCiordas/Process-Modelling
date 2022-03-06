function dx = motor_cont(t,x)
u=12;
R=1;
L=2e-3;
ke=0.3;
kt=0.3;
D=1.4e-3;
J=3.5e-3;

if (t>=1.5)
    Tl = 0;
dx = [1/L*(u-R*x(1)-ke*x(2));
    1/J*(kt*x(1)-D*x(2)-Tl);
    ]

else if(t<1.5)
          Tl = 1.5;
dx = [1/L*(u-R*x(1)-ke*x(2));
    1/J*(kt*x(1)-D*x(2)-Tl);
    ]
end

end