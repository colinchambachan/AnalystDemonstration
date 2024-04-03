%% Question 1
%{
  script utilizes Euler's method to approximate a system of differential equations with step size 'h' and total time 't'. 
  It calculates the values of 'x' and 'y' at each time step 't' and displays the results.

%}
% Constants
h = 0.1;
t = 5;

E_0 = 0.2;
k_1 = 0.4;
k__1 = 0.2;
k_2 = 0.1;

N = round(t/h);


% independent variable
t = zeros(1,N+1);
% dependent variables x(t) and y(t)
x = zeros(1,N+1);
y = zeros(1,N+1);

x(1) = 0.6;
y(1) = 0;

for n = 1:N
  t(n+1) = t(n) + h;
  x(n+1) = x(n)+ h*(-k_1*(E_0-y(n))*x(n) + (k__1*y(n)));
  y(n+1) = y(n) + h*(k_1*(E_0-y(n))*x(n) - (k__1 + k_2)*y(n));
end



[t' x']