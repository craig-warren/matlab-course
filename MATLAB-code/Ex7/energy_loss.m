function hL = energy_loss(D,L,Q,rho,mu)
% Function to calculate energy loss due to fluid flow in a pipe
%
% Craig Warren, 13/07/2010

% Variable dictionary
% hL    output      energy loss per mass of flowing fluid (J/kg)
% D     input       pipe diameter (m)
% L     input       pipe length (m)
% Q     input       volumetric flow rate (m^3/s)
% rho   input       fluid density (kg/m^3)
% mu    input       fluid viscosity (kg/ms)

% These variables are local to the function (not global workspace
% variables, or function inputs and outputs) so I have separated them 
% using a blank line.
% V     local       average fluid velocity (m/s)
% A     local       pipe cross-sectional area (m^2)
% Re    local       Reynolds number
% f     local       friction factor

% Calculate A, V and Re from inputs
A = pi*D^2/4;
V = Q/A;
Re = D*V*rho/mu;

% Calculate friction factor f, but dependent on value of Re
if Re<=2000
    f = 64/Re;
else
    f = (-2.01 * log(-5.0452/Re * log(5.8506/Re^0.8981)))^(-2);
end

% Calculate energy loss (function output)
hL = f * L/D * V^2/2;
