%% Question 1
% performs Euler's method to approximate a differential equation's solution with step size 'h'
h = 0.2;

X=2;
N = round(X/h);

x = zeros(1,N+1);
y = zeros(1,N+1);

x(1) = 0;
y(1) = 9;

for n = 1:N
  x(n+1) = x(n) + h
  y(n+1) = y(n) + h*((y(n)*x(n)^2)/3)
end