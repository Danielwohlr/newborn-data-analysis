%pocet narozenych kluku nez se narodi holka m� geometricke
global idx_girls
global idx_boys
global sex
test_2 = sex(:) -1;
% Count of born boys before a girl is born has geometric distribution

% C is count of born girls before a boy is born
% D is similarly for boys

C = [1 1 1 1 3 0 0 0 2];
D = [2 4 0 3 2 0 4 3];
p = 13/22; % This is MLE estimate for boys

% CHI2GOF TEST
[H,P,STATS] = chi2gof(C,'ctrs',[0 1 2 3],'EMin',0,'cdf',@(z)geocdf(z,p),'NParams', 1)
[H,P,STATS] = chi2gof(D,'ctrs',[0 1 2 3 4],'EMin',0,'cdf',@(z)geocdf(z,1-p),'NParams', 1)

%  cdfplot(C) % GIRLS
%  hold on
%  x=[0 1 2 3];
%  P=[0];
%  P = [P geocdf(x,p)]';
%  x = [-1 0 1 2 3]';
%  stairs(x,P)
%  hold off
%  

% cdfplot(D) %BOYS
%  hold on
%  y=[0 1 2 3 4];
%  H=[0];
%  H = [H geocdf(y,1-p)]';
%  y = [-1 0 1 2 3 4]';
%  stairs(y,H)
%  hold off

