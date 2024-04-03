% Part A

% Part A: Computes projection and orthogonal complement, then calculates norm.
% Part B: Forms a matrix using dot products, then calculates its determinant

u = [-3, -7, -6, -2]
v = [-6,7,-7,-10]

proj_u_v = (dot(u,v)/norm(v)^2)*v

k = u-proj_u_v

norm(k)


% Part B 
clear u; clear v;
u = [8.1 7.9 3.4], v = [1.8 9.4 -9.1], w = [-9.1 9.6 -6.6],
z = [-3.1 -1.1 -7.4]

matrix = [dot(u,w) dot(u,z); dot(v,w) dot(v,z)]
det(matrix)
