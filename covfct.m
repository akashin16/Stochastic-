function [scov mcov]=covfct(y,p,mu)
N1=p;
sum=0;
N=length(y);
cxx=zeros(1,N1);
scov=[];
mcov=[];
 
for i=1:N1
    for j=1:N-(i-1)
        sum=(y(j+i-1)-mu).*(y(j)-mu);
        cxx(i)=sum+cxx(i); 
        
    end
    scov(i)=1/N*cxx(i);
    mcov(i)=(1/(N-(i-1))).*cxx(i);
end
 
 
end
