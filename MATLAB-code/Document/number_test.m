% number_test.m
% Script to test sign and magnitude of numbers
%
% Craig Warren, 08/07/2010

% Variable dictionary
% x    Variable to hold entered number

clear all;  % Clear all variables from workspace
clc;    % Clear command window

x = input('Enter a number: ');    % Get a number from the user
if x<0  % Test if x is negative
    disp('Your number is a negative number')
elseif x<100    % Otherwise test if x is less than 100
    disp('Your number is between 0 and 99')
else   % Otherwise x must be 100 or greater
    disp('Your number is 100 or greater')
end
