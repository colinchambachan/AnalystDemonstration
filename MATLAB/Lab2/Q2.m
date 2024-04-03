% defines a function 'a' that assigns values based on conditions, then creates a matrix 'A' using this function and calculates its determinant
a = @(i,j) (i>j)*(2+j) + (i<=j)*1;

A = create_matrix(a,18,18);

det(A)


