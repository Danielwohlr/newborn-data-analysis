clear all
load('deti.dat')
%1st column:Time of birth recorded on the 24-hour clock
%2nd column:Sex of the child (1 = girl, 2 = boy)
%3rd column:Birth weight in grams
%4th column:Number of minutes after midnight of each birth

global time_h 
time_h = deti(:,1);
global sex 
sex = deti(:,2);
global weight
weight = deti(:,3);
global time_m 
time_m = deti(:,4);
clear deti


% creating indices for each group of interest
global idx_girls
idx_girls = find(sex==1);
global idx_boys
idx_boys = find(sex==2);
idx_12 = find(time_m < 720);
idx_24 = find(time_m > 720);
girls_12 = intersect(idx_girls,idx_12);
girls_24 = intersect(idx_girls,idx_24);
boys_12 = intersect(idx_boys,idx_12);
boys_24 = intersect(idx_boys,idx_24);

Num_girls = numel(idx_girls); %total number of girls
Num_boys = numel(idx_boys);

% Times between births in minutes
time_gap(1) = time_m(1);
for j = 1:(numel(time_m)-1)
    time_gap(j+1) = time_m(j+1)- time_m(j);
end
%edges = [0:10:160];
%histogram(time_gap,edges);

% Count of births per hour every hour (stored in array A)
A=[]; i=1;
for j =1:24
    A(1,j) = j-0.5;
    A(2,j) = numel(find(time_m > (j-1)*60 & time_m < j*60));
end

% This will create a histogram
%createfigure(A(1,:),A(2,:));       

% edges = [1700:166:2200 2200:200:2400 2400:250:2900 2900:100:4000];
% hold on
% histogram(weight,edges,'Normalization','pdf')
% histogram(weight(idx_girls),edges,'Normalization','pdf')
% histogram(weight(idx_boys),edges,'Normalization','pdf')
% will do boxplot according to the time of birth, if i change the indices then i will get acc to gender

%group = [repmat({'V�ichni'}, 44, 1); repmat({'0-12h'}, 26, 1); repmat({'12-24h'}, 18, 1)];
%boxplot([weight;weight(idx_12);weight(idx_24)], group)

clear group i j 

