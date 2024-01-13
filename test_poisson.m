global time_m 


A=[];
% Splitting counts into bins by hours
for j =1:24 
    A(j) = numel(find(time_m > (j-1)*60 & time_m < j*60));
end

% Here lambda is estimated using MLE
pd = makedist('Poisson',1.83333);

[h,p,stat] = chi2gof(A,'cdf',pd)

