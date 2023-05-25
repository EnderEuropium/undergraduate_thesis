h=0.05;
x=0:h:1;
n=length(x);
y0=100*exp(-50.*x);
y1=zeros(n,1);
y2=zeros(n,1);
y0(0)=100;
y1(0)=100;
y2(0)=100;
for i=1:n
    y1(i)=(1-50*h)*y1(i-1);
    y2(i)=1/(1+50*h)*y2(i-1);
end
