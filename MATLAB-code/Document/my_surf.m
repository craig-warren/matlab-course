% my_surf.m
% Script to plot a surface
%
% Craig Warren, 08/07/2010

% Variable dictionary
% x,y   Vectors of ranges used to plot function z
% a,c   Coefficients used in function z
% xx,yy Matrices generated by meshgrid to define points on grid
% z     Definition of function to plot

clear all;  % Clear all variables from workspace
clc;    % Clear command window

x = linspace(-1,1,50);    % Create vector x
y = x;    % Create vector y
a = 3;
c = 0.5;
[xx,yy] = meshgrid(x,y); % Generate xx & yy arrays for plotting
z = c*sin(2*pi*a*sqrt(xx.^2+yy.^2)); % Calculate z (function to plot)
surf(xx,yy,z), xlabel('x'), ylabel('y'), zlabel('z'), ...
title('f(x,y)=csin(2\pia\surd(x^2+y^2))')	% Plots filled-in surface