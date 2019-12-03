clear all;
close all;
load dat2_1;
z=x.*y;
l=mean(z);
disp('mean')
disp(l)
v=var(z);
disp('variance')
disp(v)
estz=density(z,21);
[H,L]=hist(z,21);
d=0:0.05:1;
theo=-log(d);
figure(1);
bar(L,estz);
title('Bar graph of the estimated product of two uniformly distibuted random variables');
figure(2);
plot(d,estz,'r');
hold on;
plot(d,theo);
title('Density function of the product of two uniformly disttibuted random variables');
legend('Estimate','Theoretical');