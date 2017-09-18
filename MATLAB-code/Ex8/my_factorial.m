% my_factorial.m
% Calculates factorial of a non-negative integer
%
% Craig Warren, 13/07/2010

% Variable dictionary
% n       number to take factorial of
% x       vector holding range from 0 to n-1
% result  results of factorial calculation

clear all;  % Clear all variables from workspace
clc;    % Clear command window

% Get number to take factorial of from user
n = input('Please input a non-negative integer: ');

% Test if n is non-negative
if n<0
    disp('ERROR! Your entered a negative number, please start again.')
else
    result = 1;
    for x=0:n-1
        result=result*(n-x);
    end
    disp(['Factorial ',num2str(n),' equals ',num2str(result)]);
end

