%Calculates the shortest distance between points 1 and 2 on
%   the Earth, given their latitudes and longitudes. Uses
%   the Haversine formula, which is approximate but numerically
%   stable.


%USES DEGREES

Phi1 = 50.91; %phi = latitude, lambda = longitude
Lambda1 = -1.4;

Phi2 = 37.51;
Lambda2 = 15.08;

DeltaPhi = Phi1 - Phi2; % Order doesn't matter due to the sin^2 terms in the Haversine formula
DeltaLambda = Lambda1 - Lambda2;

Haversine = sind(DeltaPhi / 2)^2 + (cosd(Phi1) * cosd(Phi2) * sind(DeltaLambda / 2)^2);

delta = asind(sqrt(Haversine))*2

Re = 6378; %good enough earth radius value, in km
distance = Re * degtorad(delta)
