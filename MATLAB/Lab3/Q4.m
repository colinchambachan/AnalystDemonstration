%% Question 4
%{
  uses Euler's method with a step size of 0.01 to approximate the solution of a differential equation, then plots
%}
h = 0.01;

X=12;
N = round(X/h);

x = zeros(1,N+1);
y = zeros(1,N+1);

x(1) = 0;
y(1) = 7.29;

for n = 1:N
  x(n+1) = x(n) + h;
  y(n+1) = y(n) + h*(-1*(y(n)/sqrt(7.3^2 - y(n)^2)));
end

% Plot graphs
plot(x, y,'r'); % plotting
title('Colin Chambachan, 400449795'); % figure's title,
legend('h=0.1'); % legend
xlabel('x'); ylabel('y'); % and axis labels