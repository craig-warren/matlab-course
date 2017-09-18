% temp.m
% Script to analyse temperature data
%
% Craig Warren, 13/09/2010

% Variable dictionary
% T      Vector of temperatures (C)
% Tabove24     Logical vector of temps above 24C
% Daysabove24  Number of days temp above 24C
% T18to27      Logical vector of temps between 18C and 24C
% Days18to27   Number of days temp between 18C and 24C

clear all;  % Clear the workspace
clc;  % Clear the command window

T = [14 23 23 12 10 9 13 23 23 19 21 17 23 28 29 ...
    33 34 32 33 27 15 21 13 18 17 19 18 23 17 21];
Tabove24 = T>=24;
Daysabove24 = sum(Tabove24)
T18to27 = (T>=18) & (T<=27); 
Days18to27 = sum(T18to27)