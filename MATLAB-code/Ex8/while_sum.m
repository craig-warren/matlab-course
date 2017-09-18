% while_sum.m
% Using a while loop to sum a series
%
% Craig Warren, 13/07/2010

% Variable dictionary
% S_exact       exact value of summation
% tolerance     how close summation needs to get to exact value
% n             number of terms of summation
% result        results of summation

clear all;  % Clear all variables from workspace
clc;    % Clear command window

S_exact = pi^2/6;
tolerance = 0.01/100;   % Convert percentage tolerance to absolute value

n = 1;
result = 0;
while abs((S_exact - result)/S_exact) > tolerance
    result = result + 1/(n^2);    % Calculate another term
    n = n + 1;
end

% Display number of terms
% NB Required number is n-1
disp(['Number of terms required was ',num2str(n-1)]);

