clear all;
close all;
rand('state',0);
x1=rand(1000,2);
x=x1(:,1);
y=x1(:,2);
save dat2_1 x y;
z=x+y;
i=mean(z);
disp('mean')
disp(i)
v=var(z);
disp('variance')
disp(v)
s=0:0.1:2;
for a=1:21
if s(a)<=1
theo(a)=s(a);
else
theo(a)=2-s(a);
end
end
estz=density(z,21);
[H,L]=hist(z,21);
figure(1)
bar(L,estz);
title('Bar graph of the estimated sum of two uniformly distibuted random variables');
figure(2)
plot(s,theo);
hold;
plot(s,estz,'r');
title('Density function of the sum of two uniformly distibuted random variables');
legend('Estimated','Theoretical');