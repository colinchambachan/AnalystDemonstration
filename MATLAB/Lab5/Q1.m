%% Question 1
% Script uses Euler's method with a step size of 0.2 to approximate the solution of a differential equation. It then displays the time steps (t) and corresponding values of y
h = 0.2;
X = 3;

N = round(X/h);

t = zeros(1,N+1);
y = zeros(1,N+1);

t(1) = 0;
y(1) = 32;

for n = 1:N
  t(n+1) = t(n) + h;
  y(n+1) = y(n) + h*(-19/10 * (y(n) - 18));
end



[t; y]