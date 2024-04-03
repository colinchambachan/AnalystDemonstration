%% Question 2
% generates a mesh grid of points, computes vectors 'a' and 'b' based on the grid points using mathematical expressions, normalizes these vectors, and plots them using quiver
[x y] = meshgrid(-5:0.2:5,-5:0.2:5);

a = ones(size(x));
b = sin(x.^2./5 + 16*exp(-y.^2./10) );

ascaled = a./sqrt(a.^2+b.^2);
bscaled = b./sqrt(a.^2+b.^2);

quiver(x,y,ascaled,bscaled)
axis equal;
title('Q2 Matlab');
xlabel('x');
ylabel('y');