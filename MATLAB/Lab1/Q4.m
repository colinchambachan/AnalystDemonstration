clear i; clear j;
% Calculate inverse and conjugate transpose of A3 and compare to A1 and A2
A1 = (1/sqrt(3))*[1+j -j; 1 1+j]
A2 = (1/sqrt(2))*[1 -j; -1 j]
A3 = (1/2)*[1-j 1+j; 1-j -1+j]

% Test if equal for A1 to A3, done manually
inv(A3) 
A3'