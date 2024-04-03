% creates a matrix A with dimensions n x m using elements from input matrix 'a'
function [A] = create_matrix(a,n,m)
    A = zeros(n,m);
    for i=1:n
        for j=1:m
            A(i,j)=a(i,j);
        end
    end
end
