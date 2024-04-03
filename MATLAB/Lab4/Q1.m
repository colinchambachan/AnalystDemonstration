%% Question 1
% iterates over a grid of points, calculates a value for each point using a mathematical expression, and finds the coordinates (xmin, ymin) where the calculated value is maximized

minvalue = -inf;


for x = -4:0.1:4
    for y = -4:0.1:4
        value = (sin(2*x*y))/(x^2 + y^2 + 2*x + 2*y + 3);
        if value > minvalue
            minvalue = value;
            xmin = x;
            ymin = y;
        end
    end
end

xmin
ymin