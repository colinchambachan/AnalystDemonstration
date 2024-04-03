%% Question 3
%{
performs Euler's method with different step sizes (0.1, 0.2, and 0.4) to approximate a differential equation's solution. 
also plots the exact solution and the approximations for comparison.
%}

% 0.4 step size
h = 0.4;

X=2;
N = round(X/h);

x = zeros(1,N+1);
y = zeros(1,N+1);

x(1) = 0;
y(1) = 9;

for n = 1:N
  x(n+1) = x(n) + h;
  y(n+1) = y(n) + h*((y(n)*x(n)^2)/3);
end

x_h4 = x;
y_h4 = y;

% 0.2 step size
h = 0.2;

X=2;
N = round(X/h);

x = zeros(1,N+1);
y = zeros(1,N+1);

x(1) = 0;
y(1) = 9;

for n = 1:N
  x(n+1) = x(n) + h;
  y(n+1) = y(n) + h*((y(n)*x(n)^2)/3);
end

x_h2 = x;
y_h2 = y;

% 0.1 Step Size

h = 0.1;

X=2;
N = round(X/h);

x = zeros(1,N+1);
y = zeros(1,N+1);

x(1) = 0;
y(1) = 9;

for n = 1:N
  x(n+1) = x(n) + h;
  y(n+1) = y(n) + h*((y(n)*x(n)^2)/3);
end

yExact = 9*exp(1/9*x.^3);
x_h1 = x;
y_h1 = y;


% Plot graphs
plot(x, yExact,'r',x_h1,y_h1,'m',x_h2,y_h2,'b',x_h4,y_h4,'g'); % plotting
title('Colin Chambachan, 400449795'); % figure's title,
legend('Exact Solution','h=0.1','h=0.2', 'h=0.4'); % legend
xlabel('x'); ylabel('y'); % and axis labels