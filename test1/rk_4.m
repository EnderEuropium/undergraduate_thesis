function [tout,yout]=rk_4(fun,tspan,xy0);
% fun调用格式: 'funfile'
% tspan=[t0,tn,h]
ts=tspan;
t0=ts(1);
tf=ts(2);
xyout=[];
tout=[];
xy0=xy0(:);
h=ts(3);
for t= [t0:h:tf] %对各个时间点循环计算
    k1=h*fun(t,xy0);
    k2=h*fun(t+h/2.xy0+k1/2);
    k3=h*fun(t+h/2,xy0+k2/2);
    k4=h*fun(t+h,xy0+k3);
    xy0=xy0+(k1+2*k2+2*k3+k4)/6;
    xyout=[xyout;xy0];
    tout=[tout;t];
end

