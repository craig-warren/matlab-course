% current_RL.m
% Calculation of current in a resistor/inductor circuit
%
% Craig Warren, 08/07/2010

% Variable dictionary
% v0       voltage (V)
% f        frequency (Hz)
% omega    angular frequency (Rads/s)
% t        vector to hold time
% R        resistance (Ohms)
% L        inductance (H)
% Z        impedance (Ohms)

clear all;  % Clear all variables from workspace
clc;    % Clear command window

% Gather information from user
v0 = input('Please input voltage (V): ');
f = input('Please input frequency (Hz): ');
R = input('Please input resistance (Ohms): ');
L = input('Please input inductance (H): ');

% Create time vector
t = linspace(0,0.01,1000);

% Convert frequency to angular frequency
omega = 2*pi*f;

% Calculate impedance Z
Z = R + j*omega*L;

% Calculate angle phi
phi = atan((omega*L)/R);

% Calculate time-varying current
I = (v0/abs(Z)) * (cos(omega*t - phi) - exp(-(t*R)/L).*cos(phi));

% Plot current against time
plot(t,I), grid on, xlabel('Time (s)'), ylabel('Current (A)'), ...
    title('Current in an resistor/inductor circuit')
