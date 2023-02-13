%exercicio 3
%alinea a)

T = 1/2;
Ta = 0.01;
t = 0:Ta:2*pi;

xt = 2*sin(4*pi*t);
pa = potencia(xt, Ta, T)

%alinea b)

T = 1/5;
Ta = 0.01;
t = 0:Ta:2*pi;

yt = sin(10*pi*t + pi/2);
pb = potencia(yt, Ta, T)

%alinea c)

T = 1/10;
Ta = 0.01;
t = 0:Ta:2*pi;

pt = sin(20*pi*t + 70*pi/180) + sin(20*pi*t + 200*pi/180);
pc = potencia(pt, Ta, T)

%alinea d)

T = 1;
Ta = 0.01;
t = 0:Ta:2*pi;

zt = sin(6*pi*t) + sin(8*pi*t);
pd = potencia(zt, Ta, T)

%alinea e)

T = 1;
Ta = 0.01;
t = 0:Ta:2*pi;

wt = sin(6*pi*t) + sin(8*pi*t +  0.1);
pe = potencia(wt, Ta, T)

%alinea f)

T = 2;
Ta = 0.01;
t = 0:Ta:2*pi;

qt = sin(6*pi*t) + sin(7*pi*t) + sin(8*pi*t);
pf = potencia(qt, Ta, T)


%exercicio 4

Ta = 0.001;
N = 3;

A1 = 1;
A2 = 1;
A3 = 1;

f1 = 10;
f2 = 20;
f3 = 30;

f0 = 10;
T = 1/f0;

fase = 1:3;
t = 0:Ta:0.6;

for i = fase
    xt = A1*sin(20*pi*t + i) + A2*sin(40*pi*t + i) + A3*sin(60*pi*t + i);
    p = potencia(xt,Ta,T)
    subplot(1,3,i);
    plot(t,xt)
    title('sin(2.*pi*10*t + i) + sin(2.*pi*20*t + i) + sin(2.*pi*30*t + i)');
    legend('xt');  
    xlabel('tt');
    ylabel('yy');
end
