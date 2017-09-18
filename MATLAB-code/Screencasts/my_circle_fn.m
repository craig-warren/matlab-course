function [x,y] = my_circle_fn(r)
% Function to plot and return points on a circle given the radius
%
% Craig Warren, 02/09/2010

% Variable dictionary
% r      input    Radius of the circle
% x,y    outputs  Points on the circle
% theta  local    Vector of angles

theta = linspace(0,2*pi,50);
x = r*cos(theta);
y = r*sin(theta);
plot(x,y), axis equal, xlabel('x'), ylabel('y'), title('Points on a circle')