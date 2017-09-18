% my_circle.m
% Script to plot points on a circle given the radius
%
% Craig Warren, 02/09/2010

% Variable dictionary
% r      Radius of the circle
% x,y    Points on the circle
% theta  Vector of angles

clear all;   % Clear the workspace
clc;    % Clear the command window

r = input('Enter the radius of the circle: ');
theta = linspace(0,2*pi,50);
x = r*cos(theta);
y = r*sin(theta);
plot(x,y), axis equal, xlabel('x'), ylabel('y'), title('Points on a circle')