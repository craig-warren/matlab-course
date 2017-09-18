% tank_pressure.m
% Calculation of the pressure at the bottom of a vented
% liquid storage tank
%
% Craig Warren, 08/07/2010

% Variable dictionary
% rho_SI       density (kg/m^3)
% g            acceleration due to gravity (ft/s^2)
% height       tank height (yd)
% p_outside    outside pressure (atm)
% g_SI         acceleration due to gravity (m/s^2)
% height_SI    tank height (m)
% p_outside_SI outside pressure (Pa)
% p_bottom_SI  absolute pressure at bottom of tank (Pa)

clear all;  % Clear all variables from workspace
clc;    % Clear command window

% Gather information from user
rho_SI = input('Please input fluid density (kg/m^3): ');
g = input('Please input acceleration due to gravity (ft/s^2): ');
height = input('Please input height of the storage tank (yd): ');
p_outside = input('Please input outside pressure (atm): ');

% Define conversion factors
ft_to_m = 0.3048;     % Feet to metres
yd_to_m = 0.9144;     % Yards to metres
atm_to_Pa = 1.013E5;  % Atmospheres to Pascals

% Convert everything to SI units
g_SI = g*ft_to_m;
height_SI = height*yd_to_m;
p_outside_SI = p_outside*atm_to_Pa;

% Calculate absolute pressure at bottom of tank (Pa)
p_bottom_SI = rho_SI * g_SI * height_SI + p_outside_SI;

% Display result to command window in nice format
disp(['Absolute pressure at the bottom of the tank is: ',num2str(p_bottom_SI),' (Pa)'])
