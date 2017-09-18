% my_loops.m
% Simple for loops and while loops
%
% Craig Warren, 13/07/2010

% Variable dictionary
% x       input to calculations
% result  results of calculations

clear all;  % Clear all variables from workspace
clc;    % Clear command window

% Q1a
result1a = 1;
for x1 = 2:2:10
    result1a = result1a * x1;
end
result1a

% Q1b
result1b = 1;
x2 = 2;
while x2<=10
    result1b = result1b * x2;
    x2 = x2 + 2;
end
result1b

% Q2a
x3 = 10;
for m=1:5
    result2a(m) = x3;
    x3 = x3 + 10;
end
result2a

% Q2b
x4 = 10;
m = 1;
while x4 <= 50
    result2b(m) = x4;
    x4 = x4 + 10;
    m = m + 1;
end
result2b

% Q2c
result2ci = [10 20 30 40 50]
result2cii = 10:10:50
result2ciii = linspace(10,50,5)
