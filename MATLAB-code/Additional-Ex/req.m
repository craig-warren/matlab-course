function REQ = req(R)
% Function to calculate resistance of resistors in parallel
%
%
% Craig Warren, 24/10/2010

% Variable dictionary
% R     input    Vector of resistances (Ohms)
% REQ   output   Resistance of resistors in parallel (Ohms)

REQ = 1/(sum(1./R));

