%% Question 4
%{
    This script generates a direction field using quiver, representing vectors based on a differential equation. 
    It then plots a solution curve on the same graph. 
    The plot is labeled and axis limits are set.
%}

% Direction field
[x y] = meshgrid(-2:0.2:2,-1:0.2:3);
a = ones(size(x));
b = exp(-3.2*x)-3.3*y;
ascaled = a./sqrt(a.^2+b.^2);
bscaled = b./sqrt(a.^2+b.^2);
quiver(x,y,ascaled,bscaled);



% Solution curve
x = -2:0.1:2;
y = (10*exp(-3.2*x)-9*exp(-3.3*x));
hold on;
plot(x,y,'Black', 'linewidth', 2)


axis([-2 2 -1 3]);
title('Colin Chambachan, 400449795');
xlabel('x');
ylabel('y');