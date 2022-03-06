[t, x] = ode23('sistem_mecanic', [0 10e-4], [0 0 0 0])
  X1 = x(:,2);
  X2 = x(:,4);
  plot(t,X1)
  hold on
  plot(t,X2)