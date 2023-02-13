%teste 2021
%exercicio 1
T = 1;
f = 1/T;
Ta = 0.01;
t1 = 0:Ta:2*pi;

xt = 2*cos(20*pi*t1 + pi/3);
yt = 3*sin(100*pi*t1 - pi/4);
zt = 2*cos(20*pi*t1 + pi/3) + 3*sin(100*pi*t1 - pi/4);

ytt = sin(2*pi*t1 + pi/3) + cos(5*pi*t1 - pi/4);
ztt = sin(10*pi*t1) + cos(10*pi*t1 + pi/2);

pxt = potencia(xt, Ta, T)
pyt = potencia(yt, Ta, T)
pzt = potencia(zt, Ta, T)
pytt = potencia(ytt, Ta, T)
pztt = potencia(ztt, Ta, T)

%exercicio 2

t2 = 0:Ta:2;
at2 = sawtooth(2*pi*t2+pi/3,1/2);

figure(1)
subplot(1,2,1)
plot(t2,at2)

subplot(1,2,2)
[sinal2,f] = espetro(at2, Ta);
plot(f,abs(sinal2))

t3 = 0:Ta:2;
yt3 = sin(6*pi*t3 + pi/5) + cos(18*pi*t3 - pi/3);


figure(2)
[sinal3,f] = espetro(yt3,Ta);
plot(f,abs(sinal3))