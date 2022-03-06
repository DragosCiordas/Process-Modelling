L = .2e-3
C = 2.2e-3
RS = 9;
ku = 0.75;
U21 = 18;
kr = 0.1;
A = 8;
H1 = tf(1,2*A);
H2 = tf(1,[L*C,L/RS,1]);
Hf = series(H1,sqrt(2)*ku*U21);
Hf = series(Hf,H2);
Hf = zpk(Hf)
V0=0.2*4
bode(Hf)
phi = 65;
wt = 1.5
%% PI
w=1.51e3;% frecventa wt la faza=-100
kdb=27.7;
k=db2mag(kdb);
Ti=4/w;
Hr=tf(k*[Ti,1],[Ti 0]);
[num_HPI,den_HPI] = tfdata(Hr,'v')
Hd=series(Hf,Hr);
Ho=feedback(Hd,1);
figure
% step(Ho)
% bode(Hd)
%% PD
beta=0.1;
gamastar=rad2deg(atan(0.9/2*sqrt(0.1)));
w=1.07e03; %frecventa la -180
Td=1/w/sqrt(beta);
kdb=95.3;
k=db2mag(kdb)*sqrt(beta);
Hr=tf(k*[Td,1],[Td*beta,1]);
[num_HPD,den_HPD] = tfdata(Hr,'v')
Hd=series(Hf,Hr);
Ho=feedback(Hd,1);
figure
% bode(Hd)
% figure
% step(Ho)
%% P
unghi=-180+100;
k=1/(10^(-0.464/20));
H_P=tf(k,1);
[num_HP,den_HP] = tfdata(H_P,'v')
% step(feedback(Hf*H_P,kr))
% bode(Hf*H_P)

%% SIMULARE REDRESOR
Rs = 4;
Cf = 7e-3
Ki = 4000