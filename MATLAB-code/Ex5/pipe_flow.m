% pipe_flow.m
% Calculation of mass flow in an oil pipeline
%
% Craig Warren, 08/07/2010

% Variable dictionary
% rho       density of oil (lb/ft^3)
% rho_SI    density of oil (kg/m^3)
% v         flow velocity (ft/s)
% v_SI      flow velocity (m/s)
% d_in      inner diameter of pipe (in)
% d_in_SI   inner pipe diameter (m)
% A         cross-sectional area of pipe (m^2)
% M_dot     mass flow rate (kg/s)
% M_24      total mass through pipe in 24 hours (kg)
% vol_24    total volume through pipe in 24 hours (m^3)

clear all;  % Clear all variables from workspace
clc;    % Clear command window

% Gather information from user
rho = input('Please input the fluid density (lb/ft^3):  ');
v = input('Please input the flow velocity (ft/s):  ');
d_in = input('Please input the inner pipe diameter (inches):  ');

% Define conversion factors
in_to_m = 0.0254;   % inches to metres
ft_to_m = 0.3048;   % feet to metres
lb_to_kg = 0.4535;  % pounds to kilograms
hr_to_s = 3600;     % hours to seconds

% Convert density
rho_SI = rho * lb_to_kg / (ft_to_m)^3;

% Convert velocity
v_SI = v * ft_to_m;

% Convert pipe diameter
d_in_SI = d_in * in_to_m;

% Calculate the cross-sectional area
A = pi/4 * d_in_SI^2;

% Calculate the mass flow rate
M_dot = rho_SI * v_SI * A;

% Calculate the total mass flowing through the pipe in 24 hours
M_24 = M_dot * 24 * hr_to_s;

% Calculate the total volume flowing through the pipeline in 24 hours
V_24 = M_24 / rho_SI;

% Display the results
disp(['Mass flow rate of oil in the pipe line (kg/s): ',num2str(M_dot)]);
disp(['Total mass of oil through pipeline in 24 hours (kg): ',num2str(M_24)]);
disp(['Total volume of oil through pipeline in 24 hours (m^3): ',num2str(V_24)]);
