% decay.m
% Script to calculate the radioactive decay of Technetium-99 
%
%
% Craig Warren, 10/09/2010

% Variable dictionary
% k      Decay constant
% t      Vector of time instances (hours)
% AA     Relative amount of Technetium-99

clear all;  % Clear the workspace
clc;  % Clear the command window

k = -0.1155;
t = 0:2:24;
AA = exp(k.*t);
disp(['After 24 hrs A/A0 of Technetium-99 is: ' ...
    num2str(AA(end))]);
plot(t,AA), grid on, xlabel('Time (hours)'), ...
    ylabel('Relative amount'), ...
    title('Radioactive decay of Technetium-99')