% silo.m
% Script to calculate the height and surface area of a spherical 
% capped cylindrical silo
%
% Craig Warren, 10/09/2010

% Variable dictionary
% r      Radius of the cylindrical portion
% R      Radius of the spherical portion
% h      Height of the spherical portion
% theta  Angle calculated by radius of cylinder and sphere
% V      Total volume of the silo
% Vcyl   Volume of the cylindrical portion
% Vcap   Volume of the spherical portion
% S      Total surface area of the silo

clear all;  % Clear the workspace
clc;  % Clear the command window

r = input('Enter the radius of the cylinder (m): ');
R = input('Enter the radius of the spherical cap (m): ');
V = input('Enter the total volume of the silo (m^3): ');
theta = asin(r/R);
h = R*(1-cos(theta));
Vcap = (1/3)*pi*h^2*(3*R - h);
H = (V - Vcap)/(pi*r^2);
S = 2*pi*(r*H + R*h);
disp(['The height H of the silo is: ' num2str(H) ' m']);
disp(['The surface area of the silo is: ' num2str(S) ' m^2']);