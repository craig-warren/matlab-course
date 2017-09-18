function temp_table = Celsius_to_Fahrenheit(T_lower, T_upper)
% Celsius_to_Fahrenheit is a function that takes a lower and upper
% temperature value in Celsius and calculates a table of corresponding
% Fahreheit values
%
% Craig Warren, 12/07/2010

% Variable dictionary
% T_lower     input     lower temperature (C)
% T_upper     input     upper temperature (C)
% temp_table  output    matrix containing both Celsius and Fahrenheit values

% These variables are local to the function (not global workspace
% variables) so I have separated them using a blank line.
% Celsius     local     vector containing Celsius values
% Fahrenheit  local     vector containing Fahrenheit values 

Celsius = [T_lower:T_upper]';
Fahrenheit = 9/5 * Celsius + 32;
temp_table = [Celsius Fahrenheit];
