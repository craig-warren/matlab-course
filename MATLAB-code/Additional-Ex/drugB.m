% drugB.m
% Script to calculate and plot concentration of drugs
% in the human body
%
% Craig Warren, 24/09/2010

% Variable dictionary
% Dg      Dosage administered (mg)
% Vd      Volume of distribution (L)
% ka      Absorption rate constant (h^-1)
% ke      Elimination rate constant (h^-1)
% t       Vector of time (h)
% Cp      Concentration of drug in the body
% Cp_hist Accumulated concentration of drug

clear all;  % Clear the workspace
clc;  % Clear the command window

Dg = 150;
Vd = 50;
ka = 1.6;
ke = 0.4;

m = 1;
for t = 0:0.125:24
    Cp = (Dg/Vd) * ka/(ka-ke) * (exp(-ke*t) - exp(-ka*t));
    if t >= 4
        Cp = Cp + (Dg/Vd) * ka/(ka-ke) * (exp(-ke*(t-4)) ...
            - exp(-ka*(t-4)));
    end
    if t >= 8
        Cp = Cp + (Dg/Vd) * ka/(ka-ke) * (exp(-ke*(t-8)) ...
            - exp(-ka*(t-8)));
    end
    if t >= 12
        Cp = Cp + (Dg/Vd) * ka/(ka-ke) * (exp(-ke*(t-12)) ...
            - exp(-ka*(t-12)));
    end
    if t >= 16
        Cp = Cp + (Dg/Vd) * ka/(ka-ke) * (exp(-ke*(t-16)) ...
            - exp(-ka*(t-16)));
    end
    Cp_hist(m) = Cp;
    m = m + 1;
end

t_plot = 0:0.125:24;
plot(t_plot,Cp_hist), grid on, xlabel('Time (hours)'), ...
    ylabel('Drug concentration'),...
    title('Drug concentration in the human body')