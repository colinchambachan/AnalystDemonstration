%% Question 4

%{
  script uses Euler's method to approximate a differential equation's solution. 
  It plots the approximate solution 'T(t)' along with 'g(t)', the exact solution for comparison
%}

X = 5;
N = 129;
h = X/N;

t = zeros(1,N+1);
y = zeros(1,N+1);

t(1) = 0;
y(1) = 32;



for n = 1:N
  t(n+1) = t(n) + h;
  g(n) =  18 + 10*sin(10/(t(n)^2 + 0.5));
  y(n+1) = y(n) + h*(-19/10 * (y(n) - g(n)));
end

g =  18 + 10*sin(10./(t.^2 + 0.5));

plot(t,y,'Red',t,g, 'Blue');
title('Colin Chambachan, 400449795');
legend('T(t)','g(t)', 'Location', 'southeast')
xlabel('t');
ylabel('T');