function [m, kg] = STtoSI(in, lb)
% Function to convert height and mass in imperial units to metric
%
%
% Craig Warren, 24/10/2010

% Variable dictionary
% in     input    Height (inches)
% lb     input    Mass (pounds)
% m      output   Height (m)
% kg     output   Mass (kg)

m = in * 0.0254;
kg = lb / 2.205;

