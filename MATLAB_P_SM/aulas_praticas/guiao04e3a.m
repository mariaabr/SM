%retornar o espetro do sinal
%usar a funcao fft(.)
%ff = -fa/2:fa/2;

%alinea a)

Ta = 0.01;
f0 = 1;
t0 = 1/f0;
Np = 100; %numero de periodos
N = round(Np/(f0*Ta));
t = (0:N-1)'*Ta;

yt = sin(2*pi*f0*t);

[X,f] = espetro(yt,Ta);

subplot(1,3,1)
plot(f,abs(X))
title("Guião 04 ex3a");
xlabel("Frequency (Hz)");
ylabel("Magnitude");
grid on;

subplot(1,3,2)
[xt,t] = reconstroi(X,f);
plot(t,xt)
title("Guião 04 ex4a");
legend("xt = ifft(X)");
xlabel("Time (s)");
ylabel("xt");
grid on;

subplot(1,3,3)
plot(t,yt)
legend("yt = sin(2*pi*f0*t)");
xlabel("Time(s)");
ylabel("yt");
grid on;