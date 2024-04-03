%% Question 4
%{
  script approximates a second-order ordinary differential equation using Euler's method for two different initial conditions. 
  It calculates the maximum absolute difference between two sets of solutions and prints the result

%}  
% Constants
h = 0.01;
T = 5;

lambda = 1;
omega = 7;

N = round(T/h);


% independent variable
T = zeros(1,N+1);
% dependent variables theta_a (t_a) and thetprime_a (tp_a), theta (t) and
% theta_prime (tp)
t_a = zeros(1,N+1);
tp_a = zeros(1,N+1);
t = zeros(1,N+1);
tp = zeros(1,N+1);

t_a(1) = deg2rad(60);
t(1) = deg2rad(60);


for n = 1:N
  T(n+1) = T(n) + h;
  t_a(n+1) = t_a(n) + h*(tp_a(n));
  tp_a(n+1) = tp_a(n) + h*(-2*lambda*tp_a(n)-omega*omega*t_a(n));

  t(n+1) = t(n) + h*(tp(n));
  tp(n+1) = tp(n) + h*(-2*lambda*tp(n)-omega*omega*sin(t(n)));
  
end

max_diff = max(abs(t-t_a))

