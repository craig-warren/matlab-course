% cubic_gases.m
% Script to calculate heat capacity for 4 gases
%
%
% Craig Warren, 24/10/2010

% Variable dictionary
% coeffs      Matrix of coeffs for cubic gas equation (a,b,c,d)
%             Row 1: SO2, Row 2: SO3, Row 3: O2, Row 4: N2
% T           Vector of temperatures
% Cp_         Heat capacity for specific gas
% result      Matrix containing temp and heat capacity results

clear all;  % Clear the workspace
clc;  % Clear the command window

coeffs = [38.91 3.904E-2 -3.205E-5 8.606E-9;
          48.50 9.188E-2 -8.540E-5 32.40E-9;
          29.10 1.158E-2 -0.6076E-5 1.311E-9
          29.00 0.220E-2 -0.5723E-5 -2.871E-9];

T = 200:20:400;

Cp_SO2 = coeffs(1,1) + coeffs(1,2)*T + coeffs(1,3)*T.^2 ...
        + coeffs(1,4)*T.^3;
Cp_SO3 = coeffs(2,1) + coeffs(2,2)*T + coeffs(2,3)*T.^2 ...
        + coeffs(2,4)*T.^3;
Cp_O2 = coeffs(3,1) + coeffs(3,2)*T + coeffs(3,3)*T.^2 ...
        + coeffs(3,4)*T.^3;
Cp_N2 = coeffs(4,1) + coeffs(4,2)*T + coeffs(4,3)*T.^2 ...
        + coeffs(4,4)*T.^3;

result = [T' Cp_SO2' Cp_SO3' Cp_O2' Cp_N2'] 