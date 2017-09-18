% computer_test.m
% Script to test type of computer MATLAB is running on
%
% Craig Warren, 08/07/2010

% Variable dictionary
% myComputer    Variable to hold information about computer

clear all;  % Clear all variables from workspace
clc;    % Clear command window

myComputer = computer;    % Assign result of built-in computer
                          % function to myComputer variable
switch myComputer
    case 'PCWIN'
        disp('This computer is running Microsoft Windows, 32-bit');
    case 'PCWIN64'
        disp('This computer is running Microsoft Windows, 64-bit');
    case 'GLNX86'
        disp('This computer is running Linux, 32-bit');
    case 'GLNXA64'
        disp('This computer is running Linux, 64-bit');
    case 'MACI'
        disp('This computer is running Mac OS X, Intel, 32-bit');
    case 'MACI64'
        disp('This computer is running Mac OS X, Intel, 64-bit');
    case 'SOL64'
        disp('This computer is running Sun Solaris, 64-bit');
end
