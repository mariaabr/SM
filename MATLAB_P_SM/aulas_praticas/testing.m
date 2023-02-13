
Ta= 0.001;
t = 0:Ta:5;
yt = 8*cos(4*pi*t - pi/3) + 16*cos(6*pi*t + (2*pi)/3) + 32*cos(10*pi*t);
%plot(t, yt)


[sinal,f] = espetro(yt, Ta);

axis([-10 10 0 18])
plot(f,abs(sinal))