%Calculates parameters for an ideal nozzle; i.e.
%  where exhaust pressure = atmospheric pressure.

k = 1.2; %Ratio of specific heats
F = 5000; %Force
Pc = 2039000; %Chamber pressure
Pa = 2549; %Atmospheric pressure
Tc = 2800; %Chamber temperature
W = 23; %Molecular mass
R = 8314.3; %Universal gas constant

Pe = Pa; %Exhaust pressure

AtAe = ((k+1)/2)^(1/(k-1)) * (Pe/Pc)^(1/k) * sqrt( (k+1)/(k-1) * (1 - (Pe/Pc)^((k-1)/k)) );
AeAt = 1/AtAe;

v_e = sqrt(R/W * (2*k)/(k-1) * Tc * (1 - (Pe/Pc)^((k-1)/k)) ); %Exhaust velocity
mdot = F / v_e; %Mass flow rate
At = (mdot * sqrt(k*R*Tc/W)) / (Pc * k * sqrt( (2/(k+1))^((k+1)/(k-1)) )) %Throat area

Ae = At * AeAt %Exhaust area

cstar = Pc*At/mdot %Characteristic velocity

Isp = v_e / 9.81