
q=[120 150 180 200 250 300 320 340 380 400 450 500 550 600 650 700 750 800];
h=[13 17 20 25 30 34 35 39 41 44 50 53 58 62 66 69 72 78];

A=[sum(h.^2) sum(h);
    sum(h)  length(h)];
                               %metoda celor mai mici patrate
B=[sum(h.*q); sum(q)];
x=(A^(-1))*B;

a=x(1); b=x(2);
y_aprox=a*h+b;

plot(h,q,'*');
hold on
plot(h,y_aprox);