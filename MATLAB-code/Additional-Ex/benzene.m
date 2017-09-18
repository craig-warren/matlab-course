% benzene.m
% Script to calculate the pressure of Benzene
%
%
% Craig Warren, 20/03/2012

% Variable dictionary
% T      Vector of temperatures in degrees C
% A,B,C  Material constants
% P      Pressure in mm Hg
% PT     Matrix with P and T

clear all;  % Clear the workspace
clc;  % Clear the command window

A = 6.87987;
B = 1196.76;
C = 219.161;
T = 8:2:42;
P = 10.^(A - (B./(C+T)));
PT = [T' P']
semilogy(T,P), grid on, xlabel('Temperature ({^\circ}C)'), ...
     ylabel('Pressure (mm Hg)'), ...
     title('Vapour pressure of benzene')