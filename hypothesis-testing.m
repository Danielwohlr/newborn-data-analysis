global weight
global idx_girls
global idx_boys
global idx_12
global idx_24

vaha_holky = weight(idx_girls);
vaha_kluci = weight(idx_boys);
pdk = fitdist(vaha_kluci,'Normal');
pdh = fitdist(vaha_holky,'Normal');
[h,p,stat] = chi2gof(vaha_kluci,'EMin',2,'cdf',pdk);
[h,p,kstat,cv] = lillietest(vaha_kluci,'Distribution','Normal');
[h,p,stat] = chi2gof(vaha_holky,'EMin',2,'cdf',pdh);
[h,p,kstat,cv] = lillietest(vaha_holky,'Distribution','Normal');
% Lillefors test for vaha_holky has Weibull distribution - it doesnt reject the hypothesis
% [h,p,kstat,cv] = lillietest(log(vaha_holky),'Distribution','extreme value');
% pdh2 = fitdist(vaha_holky,'Weibull');
% [h,p,stat] = chi2gof(vaha_holky,'EMin',2,'cdf',pdh2);

% If I dont do t-test later, I do it here
x1 = mean(vaha_kluci);
x2 = mean(vaha_holky);
s1 = var(vaha_kluci);
s2 = var(vaha_holky);
Test_stat = abs((x1-x2)/sqrt(s1/numel(vaha_kluci) +s2/numel(vaha_holky)));
hypoteza = logical(Test_stat >= norminv(0.975));
Test_stat;
% Not rejecting hypothesis that means are equal: P_value = 1-0,92364=0,07636

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% %Hustoty jednotlivych fit�
% x = min(weight):max(weight)+100;
% KLUCI = normpdf(x,pdk.mu,pdk.sigma);
% HOLKY = normpdf(x,pdh.mu,pdh.sigma);
% %HOLKY_WEIB = wblpdf(x,pdh2.A,pdh2.B);
% plot(x,KLUCI);
% hold on;
% plot(x,HOLKY);
% %plot(x,HOLKY_WEIB)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[h,p] = vartest2(vaha_kluci,vaha_holky); %Not rejecting
[h,p] = ttest2(vaha_kluci,vaha_holky,'Vartype','equal');
[h,p] = ttest2(vaha_kluci,vaha_holky,'Vartype','unequal');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% time dependency
vaha_12 = weight(idx_12);
vaha_24 = weight(idx_24);
pdk = fitdist(vaha_24,'Normal');
pdh = fitdist(vaha_12,'Normal');
[h,p,stat] = chi2gof(vaha_24,'EMin',2,'cdf',pdk);
[h,p,kstat,cv] = lillietest(vaha_24,'Distribution','Normal');
[h,p,stat] = chi2gof(vaha_12,'EMin',2,'cdf',pdh);
[h,p,kstat,cv] = lillietest(vaha_12,'Distribution','Normal');

% Normality is rejected, I will use asymptotic t-test for weights in the morning and afternoon
x1 = mean(vaha_12);
x2 = mean(vaha_24);
s1 = var(vaha_12);
s2 = var(vaha_24);
Test_stat = abs((x1-x2)/sqrt(s1/numel(vaha_12) +s2/numel(vaha_24)));
hypoteza = logical(Test_stat >= norminv(0.975)); %0 nezamitam, 1 zamitam
% cf. Tables in report: p_value is approx 1-0,74215=0,25785


Narozen24 = normpdf(x,pdk.mu,pdk.sigma);
Narozen12 = normpdf(x,pdh.mu,pdh.sigma);
plot(x,Narozen24);
hold on;
plot(x,Narozen12);

