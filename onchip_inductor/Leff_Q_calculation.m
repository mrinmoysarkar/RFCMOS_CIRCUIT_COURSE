clear all;
close all;

data = readtable('Z11_ima.csv');

f = data{:,1};
imz11 = data{:,2};
w = f*2*pi;
Leff = imz11./w;


data = readtable('Y11_ima.csv');
imy11 = data{:,2};
data = readtable('Y11_real.csv');
rey11 = data{:,2};
Q = -imy11./rey11;
subplot(211)
plot(f,Leff)
title('Leff')
subplot(212)
plot(f,Q)
title('Q')
