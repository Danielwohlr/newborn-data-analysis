time_gap(1) = time_m(1);
for j = 1:(numel(time_m)-1)
    time_gap(j+1) = time_m(j+1)- time_m(j);
end

% histogram(time_gap,10,'Normalization','pdf');

pd = fitdist(time_gap','exponential');
[h,p,stats] = chi2gof(time_gap,'CDF',pd);
% hold on
x = [0:0.1: 170];
%plot(x,exppdf(x,pd.mu));

% Here we need Lilliefors' test instead of Kolmogorov-Smirnov test
% Because we are estimating parameters from the data

[h,p,kstat,cv] = lillietest(time_gap,'Distribution','exponential')
%cdfplot(time_gap)
%hold on
%plot(x,expcdf(x,pd.mu))