function RV = lowpass(R, C, w)
% Function to calculate magnitude ratio of a lowpass filter
%
%
% Craig Warren, 24/10/2010

% Variable dictionary
% R     input   Resistance of resistor (Ohms)
% C     input   Capacitance of capacitor (F)
% w     input   Frequency of input signal (rad/s)
% RV    output  Magnitude ratio of voltages

RV = 1 ./ (sqrt(1 + (w*R*C).^2));

