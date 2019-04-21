%Calculates pressure drop across a liquid injector.

bar = 10^5;

rho=1020; %fluid density
Cd=0.6939684798; %coefficient of discharge
mdot = 2 * 10^-3; %mass flow rate
N = 5; %number of injectors
d = 0.2 * 10^-3; %injector diameter

r = d / 2;
A = N * pi * r^2;
deltap = (mdot / (Cd * A))^2 / (2 * rho)