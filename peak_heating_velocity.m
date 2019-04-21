%Determines spacecraft during peak heating in a ballistic re-entry. 
%   Alpha is a scale factor which assumes an exponential model of
%       atmospheric density.

Cd = 1.2; %drag coefficient
A = 17; %reference surface area
rho_s = 1.225; %sea-level air density
alpha = 1.378*10^(-4);
g = 9.8;
m = 5000; %spacecraft mass
h0 = 100000; %initial height
V0 = 7000; %initial velocity

gamma_d = -60; %angle of re-entry
gamma = gamma_d * pi / 180;

B = m * g / (Cd * A);
beta = -2 * B * alpha * sin(gamma) / g;
rho = beta / 6;
h = log(rho / rho_s) / (-alpha)

