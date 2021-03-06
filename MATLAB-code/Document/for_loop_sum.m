% for_loop_sum.m
% Script to sum a geometric series using a for loop
%
% Craig Warren, 01/09/2011

% Variable dictionary
% n    Number of terms to sum
% my_sum    Sum of geometric series
% r    Constant (set to 0.5 for this example)
% m    Loop counter

clear all;  % Clear all variables from workspace
clc;    % Clear command window

n = input('Enter the number of terms to sum: ');
my_sum = 0;
r = 0.5;
for m = 0:n
    my_sum = my_sum + r^m;
end
format long    % Sets display format to 15 digits
my_sum