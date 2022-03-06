

%% ex1_a

f =asin(2*x+3)
d=diff(f)
simplify(d)
%% ex1_b

f =atan(x^2+1)
d=diff(f)
simplify(d)
%% ex2_a

syms x;
f=x*sin(x^2)
int(f,'x')

%% ex2_b

syms x;
f=x^2*sqrt(x+4)
int(f,'x')

%% ex2_c

syms x;
f=exp(-x^2)
int(f, 'x', -inf, +inf)