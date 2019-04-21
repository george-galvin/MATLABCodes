%Calculates the reliability R of a consecutive
%   m-out-of-n system, where m consecutive 
%   components in a system must fail out of n
%   total for a system failure. p is the indivdual
%   component reliability.


function [ R ] = cmnreliability(p, m, n)
  if (n >= 0) && (n < m)
      R = 1;
  elseif (n < 0)
      R = 0;
  else
      R = 0;
      for a = 1:n-m+1
        for b = a+1:a+m-1
            R = R + (cmnreliability(p, m, n-b)*(p^a)*(1-p)^(b-a));
        end
      end
      R = R + p^(n-m+1);
  end
end

