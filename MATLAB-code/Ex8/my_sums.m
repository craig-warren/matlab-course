% my_sums.m
% for loop for sum and cumulative sum
%
% Craig Warren, 13/07/2010

% Variable dictionary
% x       input to calculations
% result  results of calculations

clear all;  % Clear all variables from workspace
clc;    % Clear command window

x = [1 8 3 9 0 1];

% Summation
my_sum = 0;
for n = 1:length(x)
    my_sum = my_sum + x(n);
end

% Cumulative sum
my_cumsum = x(1);
for n = 2:length(x)
    my_cumsum(n) = my_cumsum(n-1) + x(n);
end

disp(['My sum was ', num2str(my_sum)])
disp(['MATLAB sum was ', num2str(sum(x))])
disp(['My cumsum was ', num2str(my_cumsum)])
disp(['MATLAB cumsum was ', num2str(cumsum(x))])

