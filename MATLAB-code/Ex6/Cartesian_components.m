function [Fx,Fy,Fz] = Cartesian_components(Fmag,Ax,Ay,Az)
% Function to calculate the Cartesian components of a vector given its
% magnitude and angles of cosines
%
% Craig Warren, 10/10/2010

% Variable dictionary
% Fmag  input    magnitude of vector
% Ax    input    angle of cosine to x-axis (degrees)
% Ay    input    angle of cosine to y-axis (degrees)
% Az    input    angle of cosine to z-axis (degrees)
% Fx    output   x-component of vector
% Fy    output   y-component of vector
% Fz    output   z-component of vector

% alphX local    angle of cosine to x-axis (radians)
% alphY local    angle of cosine to x-axis (radians)
% alphZ local    angle of cosine to x-axis (radians)

% Convert input angles to radians
alphX = Ax/360 * 2*pi;
alphY = Ay/360 * 2*pi;
alphZ = Az/360 * 2*pi;

% Calculate Cartesian components
Fx = Fmag * cos(alphX);
Fy = Fmag * cos(alphY);
Fz = Fmag * cos(alphZ);
