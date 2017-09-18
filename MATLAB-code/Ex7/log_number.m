% log_number.m
% If statement that displays an error message if it is attempted to take
% the logarithm of a negative number or zero.
%
% Craig Warren, 13/07/2010

% Variable dictionary
% x       variable to hold user input
% result  variable to hold result of log calculation

clear all;  % Clear all variables from workspace
clc;    % Clear command window

% Gather information from user
x = input('Please input a number to take natural logarithm of: ');

if x>0
    result = log(x);
    disp(['The natural logarithm of ',num2str(x),' is ',num2str(result)]);
else
    disp('ERROR!! The logarithm can only be calculated for positive numbers.')
end
