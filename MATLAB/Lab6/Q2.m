%% Question 2
%{
  script uses Euler's method to approximate a second-order ordinary differential equation with a given step size 'h' and total time 't'. 
  It calculates and plots the displacement 'x(t)' and velocity 'u(t)' over time 't'
%}

% Constants
h = 0.02;
t = 5;

lambda = 3;
omega = 8;

N = round(t/h);


% independent variable
t = zeros(1,N+1);
% dependent variables x(t) and u(t)
x = zeros(1,N+1);
u = zeros(1,N+1);

x(1) = 9;
u(1) = 7;

for n = 1:N
  t(n+1) = t(n) + h;
  x(n+1) = x(n)+ h*(u(n));
  u(n+1) = u(n) + h*(-2*lambda*u(n)- (omega^2)*(x(n)));
end


plot(t,x,'r',t,u,'b');
title('Colin Chambachan, 400449795');
legend('Displacement x(t) ','Velocity u(t)','Location','SouthEast');
xlabel('t'); ylabel('x(t), u(t)');