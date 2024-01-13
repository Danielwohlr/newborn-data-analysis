function [y1,y2,y3,y4,y5,y6] = zakl_stat(data)
load('deti.dat');
% call it like [numel,mean,std,median,min,max] = zakl_stat('data')
global weight
y1 = numel(weight(data));
y2 = mean(weight(data));
y3 = std(weight(data));
y4 = median(weight(data));
y5 = min(weight(data));
y6 = max(weight(data));
end