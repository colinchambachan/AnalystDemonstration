%% Question 3
%{
    script iteratively adjusts the number of steps 'N' used in Euler's method until the maximum error between the approximate and exact solutions is below the target error 'targetError'. 
    Finally, it prints the value of 'N' that satisfies the condition.
%}
done = false;
targetError = 0.11657;
N = 16;
while done == false
    X = 3;
    h = X/N; 
    
    t = zeros(1,N+1);
    y = zeros(1,N+1);
    
    t(1) = 0;
    y(1) = 32;
    %  Euler's method
    for n = 1:N
      t(n+1) = t(n) + h;
      y(n+1) = y(n) + h*(-19/10 * (y(n) - 18));
    end
    
    % Exact value of v and corresponding error
    yExact = 18 + 14./exp(19/10*t);
    error = abs(y-yExact);
    

    % Find maximum error
    maximumError = 0;
    for i = error
        if i > maximumError
            maximumError = i;
        end
    end

    % Check if maximum error is below target
    if maximumError < targetError
        N
        done = true;
    end


    N = N + 1;
end