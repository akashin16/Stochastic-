clc;
clear all;
close all;
%Loading dat1_2
load dat1_2;
% a and b parameters defined
b=1;
a=[1 0.5 0.3 0.1 0.7 0.3];
%Using filter function to generate AR(p)process
Y=filter(b,a,X);
plot(Y);
ylabel('Zt');
xlabel('t');
title('Generated AR(p) process');
% saving data
save dat4_1;
