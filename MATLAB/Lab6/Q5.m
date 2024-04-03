%% Question 5
%{
  script approximates a second-order ordinary differential equation using Euler's method for two different initial conditions and then plots the results. 
  It compares the solutions for θ(T) and θ_a(T), where θ(T) is the solution of the differential equation, and θ_a(T) is the solution for a different initial condition
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

plot(T,t,'r',T,t_a,'.b');
title('Colin Chambachan, 400449795');
legend('θ(T) ','θ_a(T)','Location','SouthEast');
xlabel('T'); ylabel('θ(T), θ_a(T)');

