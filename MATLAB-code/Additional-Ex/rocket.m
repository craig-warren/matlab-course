% rocket.m
% Script to calculate and plot the speed and altitude of a rocket 
%
% Craig Warren, 24/10/2010

% Variable dictionary
% g         Acceleration due to gravity (m/s^2)
% m         Mass of the rocket (kg)
% eng_F     Force delivered by rocket engine (N)
% eng_t     Time that rocket engine is on for (s)
% chute_v   Velocity that parachute opens at (m/s)
% dt        Time step (s)
% n         Time index
% t,v,h     Time, velocity and height vectors
% a         Acceleration of rocket (m/s^2)

clear all;  % Clear the workspace
clc;  % Clear the command window

% Define constants
g = 9.81;
m = 0.05;
eng_F = 16;
eng_t = 0.15;
chute_v = -20;
dt = 0.001;

% Set initial t,v,h values
t0 = 0; v0 = 0; h0 = 0;
n = 1;
t(n) = t0; v(n) = v0; h(n) = h0;


% Segment 1 - Engine on
a1 = (eng_F - m*g) / m;
while t(n) < eng_t
    n = n + 1;
    t(n) = t(n-1) + dt;
    v(n) = v0 + a1*t(n);
    h(n) = h0 + v0*t(n) + 0.5*a1*t(n)^2;
end
t1 = t(n); v1 = v(n); h1 = h(n);

% Segment 2 - Engine off until chute opens
while v(n) >= chute_v
    n = n + 1;
    t(n) = t(n-1) + dt;
    v(n) = v1 - g*(t(n) - t1);
    h(n) = h1 + v1*(t(n) - t1) - 0.5*g*(t(n) - t1)^2;
end
t2 = t(n); v2 = v(n); h2 = h(n);

% Segment 3 - Chute opens until rockets hits ground
while h(n) > 0 
    n = n + 1;
    t(n) = t(n-1) + dt;
    v(n) = chute_v;
    h(n) = h2 + chute_v*(t(n) - t2);
end

% Plot time, height and time, velocity
subplot(1,2,1)
plot(t,h,t2,h2,'o'), grid on, xlabel('Time (s)'), ...
    ylabel('Height (m)'), title('Height of rocket')
text(7,95,'Parachute opens')
subplot(1,2,2)
plot(t,v,t2,v2,'o'), grid on, xlabel('Time (s)'), ...
    ylabel('Velocity (m/s)'), title('Velocity of rocket')
text(7,-22,'Parachute opens')


