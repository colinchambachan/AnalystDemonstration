% fits a quadratic polynomial to a set of data points (xi, yi) using linear regression and then plots the polynomial along with the data points
xi=[-3:2]'
yi=[-9 3 6 -1 4 13]'
A=[xi.^3 xi.^2 xi ones(6,1)]
b=yi
x=A\b
f = @(t) x(1)*t.^2+x(2)*t+x(3);
t = -3:.01:3.5;
y = f(t);
plot(t,y,xi,yi,'o','MarkerSize',5,'MarkerFaceColor','black')