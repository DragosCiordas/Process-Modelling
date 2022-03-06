close all
[t, x] = ode23('suspensie', [0 10], [0 0 0 0])
  X1 = x(:,1);
  plot(t,X1)
