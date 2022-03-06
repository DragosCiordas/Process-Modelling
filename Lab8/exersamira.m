t=0:0.01:6
H=tf([0 15],conv(conv([1 0],[1 1]),[1 5]))
H0=feedback(H,1)

%% TUSTIN

Ht1=filt([7.5 22.5 22.5 7.5],[21 -19 -5 3],1)
Ht1=feedback(Ht1,1)
Ht01=filt([0.75 2.25 2.25 0.75],[525 -1315 1075 -285],0.1)
Ht01=feedback(Ht01,1)
Ht001=filt([0.075 0.225 0.225 0.075],[41205 -88715 61195 -13685],0.01)
Ht001=feedback(Ht001,1)

Htm1=c2d(H,1,'tustin')
Htm1=feedback(Htm1,1)
Htm01=c2d(H,0.1,'tustin')
Htm01=feedback(Htm01,1)
Htm001=c2d(H,0.01,'tustin')
Htm001=feedback(Htm001,1)
%%      ZOH
Hzm1=c2d(H,1,'zoh'),
Hzm1=feedback(Hzm1,1)
Hzm01=c2d(H,0.1,'zoh')
Hzm01=feedback(Hzm01,1)
Hzm001=c2d(H,0.01,'zoh')
Hzm001=feedback(Hzm001,1)

% Hz1=filt([],[],1)
 Hz01=filt([],[],0.1)
% Hz001=filt([],[],0.01)

% subplot(321),step(Hz1)
% subplot(322),step(Hzm1)
% 
% subplot(323),impulse(Hz01) % impuls
% subplot(324),impulse(Hzm01)
% 
% subplot(325),lsim(Hz001,t,t) %rampa
% subplot(326),lsim(Hzm001,t,t)

% %% TSTIN Vs ZOH
% 
% subplot(321),step(Htm1)
% subplot(322),step(Hzm1)
% 
% subplot(323),impulse(Htm01) % impuls
% subplot(324),impulse(Hzm01)
% 
% subplot(325),lsim(Htm001,t,t) %rampa
% subplot(326),lsim(Hzm001,t,t)