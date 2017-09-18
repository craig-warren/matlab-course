function result = function_xy(x,y)
% Function to calculate a function involving x and y
%
% Craig Warren, 13/07/2010

% Variable dictionary
% x,y       input   two numbers
% result    output  result

if x>=0 & y>=0
    result = x + y;
elseif x>=0 & y<0
    result = x + y^2;
elseif x<0 & y>=0
    result = x^2 + y;
else
    result = x^2 + y^2;
end
