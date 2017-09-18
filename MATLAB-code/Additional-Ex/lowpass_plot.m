% lowpass_plot.m
% Script to plot the magnitude ratio of a lowpass filter
%
%
% Craig Warren, 24/10/2010

% Variable dictionary
% R    Resistance of resistor (Ohms)
% C    Capacitance of capacitor (F)
% w    Frequency of input signal (rad/s)
% RV   Magnitude ratio of voltages

clear all;
clc;

R = input('Input the value of the resistor (Ohms): ');
C = input('Input the value of the capacitor (Farads): ');
w = 1E-2:1E6;
RV = lowpass(R,C,w);

semilogx(w,RV), grid on, xlabel('Frequency (rad/s)'), ...
    ylabel('Magitude ratio'), ...
    title('Magnitude ratio of a lowpass filter')

