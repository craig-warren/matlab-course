function [Smax, Smin] = princstress(Sxx, Syy, Sxy)
% Function to calculate principal stresses from stress components
%
%
% Craig Warren, 24/10/2010

% Variable dictionary
% Sxx    input    Normal stress component
% Syy    input    Normal stress component
% Sxy    input    Shear stress component
% Smax   output   Maximum principal stress
% Smin   output   Minimum principal stress

Smax = ((Sxx + Syy)/2) + sqrt(((Sxx - Syy)/2)^2 + Sxy^2);
Smin = ((Sxx + Syy)/2) - sqrt(((Sxx - Syy)/2)^2 + Sxy^2);

