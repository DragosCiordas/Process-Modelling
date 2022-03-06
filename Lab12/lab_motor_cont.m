[t, x] = ode23('motor_cont', [0 2], [0 0])
  X1 = x(:,1);
  X2 = x(:,2);
  
  figure
  subplot(211)
  plot(t,X1)
   title('Curent');
  hold on
  subplot(212)
  plot(t,X2)
    title('Viteza');