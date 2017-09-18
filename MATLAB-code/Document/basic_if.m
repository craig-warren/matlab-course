% basic_if.m
% Script to show simple if statement
%
% Craig Warren, 08/07/2010

% Variable dictionary
% x    Variable to hold entered number

clear all;  % Clear all variables from workspace
clc;    % Clear command window

x = input('Enter a number: ');    % Get a number from the user
if x>10  % Test if x is greater than
    disp('Your number is greater than 10')
end
