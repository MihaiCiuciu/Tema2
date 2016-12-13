T=40; 
D=5;
t=0:0.01:100;
w=2*pi/T;
x=0;
y=2*square(2*pi/T*t,D/T*100);
c=zeros(size(2*N+1));
for k=-25:1:25
    fun1=@(t) 2.*exp(-1j*k*w*t);  
    fun2=@(t) (-2).*exp(-1j*k*w*t);  
    c(k+25+1)=1/T*(integral(fun1,0,D)+integral(fun2,D,T)); 
    x=x+c(k+25+1)*exp(1j*k*w*t);
end
subplot(2, 1, 1)
stem((-25:25),abs(c)); 
subplot(2, 1,2)
plot(t, y, t, x);