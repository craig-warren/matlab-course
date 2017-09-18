function volume = watervol(height)
% Function to calculate the volume of water in a water tower
%
% Craig Warren, 08/09/2010

% Variable dictionary
% volume    output    volume of water in the tank
% height    input     height of water in the tank
% rh        local     radius of base of cone

if height <= 19
    volume = pi * 12.5^2 * height;
else
    rh = 12.5 + (10.5/14)*(height - 19);
    volume = pi * 12.5^2 * 19 + (pi/3) * (height - 19) * ...
        (12.5^2 + 12.5*rh + rh^2);
end