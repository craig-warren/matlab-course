% drugA.m
% Script to calculate and plot concentration of drugs 
% in the human body
%
% Craig Warren, 13/09/2010

% Variable dictionary
% Dg     Dosage administered (mg)
% Vd     Volume of distribution (L)
% ka     Absorption rate constant (h^-1)
% ke     Elimination rate constant (h^-1)
% t      Vector of time (h)
% Cp     Concentration of dug in the body

clear all;  % Clear the workspace
clc;  % Clear the command window

Dg = 150;
Vd = 50;
ka = 1.6;
ke = 0.4;

t = linspace(0,10,50);
Cp = (Dg/Vd) * ka/(ka-ke) * (exp(-ke*t) - exp(-ka*t));
plot(t,Cp), grid on, xlabel('Time (hours)'), ...
    ylabel('Drug concentration'),...
    title('Drug concentration in the human body')