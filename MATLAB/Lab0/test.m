%% Question 3
% visualize vector fields and plots a function using quiver function
[x y] = meshgrid(-2:0.2:2,-1:0.2:3);

a = ones(size(x));
b = exp(-2.5*x)-2.6*y;

ascaled = a./sqrt(a.^2+b.^2);
bscaled = b./sqrt(a.^2+b.^2);

quiver(x,y,ascaled,bscaled,'blue')

x = -2:0.2:2;
y = 10*exp(-2.5*x)-8*exp(-2.6*x);
hold on;
plot(x,y,'red', 'linewidth', 2 );

axis ([-2 2 -1 3])


title('Colin Chambachan, 400449795');
xlabel('x');
ylabel('y');