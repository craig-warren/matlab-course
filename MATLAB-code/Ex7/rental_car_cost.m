function cost = rental_car_cost(no_km)
% Function to calculate the cost of a rental car for a given number of
% kilometres
%
% Craig Warren, 13/07/2010

% Variable dictionary
% no_km     input   number of kilometres driven (km)
% cost      output   cost of rental car (£)

if no_km<=100
    % £0.50 for the first 100km
    cost = no_km*0.5;
elseif no_km<=300
    % £0.30 for the next 200km
    cost = 100*0.5 + (no_km - 100)*0.3;
else
    % £0.20 for kms in excess of 300km
    cost = 100*0.5 + 200*0.3 + (no_km - 300)*0.2;
end
