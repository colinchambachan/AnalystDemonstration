% Question 1 through 3
% Solve linear system using eigenvalues and normalized eigenvectors
A = [19/8 -5/8 -7/8 -3/8; 3/8 11/8 -7/8 -3/8; 3/8 3/8 1/8 -3/8; 27/8 11/8 -23/8 -11/8]
[P D] = eig(A)
y0 = [24 17 8 53]'


x1 = P(:,2)/P(1,2)
x2 = P(:,4)/P(1,4)
x3 = P(:,3)/P(1,3)
x4 = P(:,1)/P(1,1)


P = [x1 x2 x3 x4]
c = inv(P)*y0