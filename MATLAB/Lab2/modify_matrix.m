% modifies a matrix A with dimensions n x m using elements from input matrix 'B' as indices for array 'a'.
function [A] = modify_matrix(B,a,n,m)
    A = zeros(n,m);
    for i=1:n
        for j=1:m
            A(i,j)=a(B(i,j));
        end
    end
end
