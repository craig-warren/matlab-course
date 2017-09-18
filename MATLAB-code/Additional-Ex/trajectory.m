function [h_max, d_max] = trajectory(v0, theta)
% Function to calculate the trajectory of a projectile
%
%
% Craig Warren, 24/10/2010

% Variable dictionary
% v0      input    Initial velocity (m/s)
% theta   input    Angle at which projectile is fired (deg)
% h_max   output   Maximium height of projectile
% d_max   output   Maximum distance of projectile
% g       local    Acceleration due to gravity (m/s^2)
% v0x     local    Initial velocity in x-direction (m/s)
% v0y     local    Initial velocity in y-direction (m/s)
% t_h_max local    Time to reach maximum height (s)
% t_tot   local    Total flying time (twice t_h_max) (s)
% t       local    Vector containing time (s)
% x       local    Vector containing horizontal position (m)
% y       local    Vector containing vertical position (m)

g = 9.81;
v0x = v0 * cosd(theta);
v0y = v0 * sind(theta);
t_h_max = v0y / g;
t_tot = 2*t_h_max;
h_max = v0y^2 / (2*g);
d_max = v0x * t_tot;

t = linspace(0,t_tot,50);
x = v0x*t;
y = v0y*t - 0.5*g*t.^2;
plot(x,y), grid on, xlabel('Distance (m)'), ...
    ylabel('Height (m)'), title('Trajectory of a projectile')