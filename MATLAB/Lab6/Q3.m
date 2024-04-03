%% Question 3
% Constants
%{
  script iteratively adjusts the value of 'lambda' and computes the corresponding solution using Euler's method until the displacement 'x' does not contain any negative values. 
  It then prints the value of 'lambda' that satisfies this condition and exits the loop
%}

lambda = 3;
while true
    h = 0.02;
    t = 5;
    
  
    omega = 8;
    
    N = round(t/h);
    
    
    % independent variable
    t = zeros(1,N+1);
    % dependent variables x(t) and u(t)
    x = zeros(1,N+1);
    u = zeros(1,N+1);
    
    x(1) = 9;
    u(1) = 7;
    
    for n = 1:N
      t(n+1) = t(n) + h;
      x(n+1) = x(n)+ h*(u(n));
      u(n+1) = u(n) + h*(-2*lambda*u(n)- (omega^2)*(x(n)));
    end
    
    containsNegative = false;
    for i = x
        if i < 0
          containsNegative = true;
        end
    end
    
    % Check if negative was found in x values
    if ~containsNegative
        lambda
        break
    end

    % increment lambda for next interation
    lambda = lambda + 0.02;
end


