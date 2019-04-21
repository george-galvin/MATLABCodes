%Calculates the failure probability G of a load-sharing system:
%n components, with identically normally distributed failure loads,
% are each initially under a load L. Failure of any component leads
% to a greater load shared by the rest.

function [ G ] = loadsharing( n, L, mu, sigma )
    if (n == 0)
        G = 1;
    else
        G = 0;
        F = normcdf(L, mu, sigma);
        for r = 1:n
            G = G + nchoosek(n, r)*(-1)^(r+1) ...
            *F^r*loadsharing(n-r,(n*L)/(n-r), mu, sigma);
        end
    end
end