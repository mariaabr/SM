%alinea b)

Ta = 0.01;
f0 = 1; %MDC = 1
t0 = 1/f0;
%Np = 100; %numero de periodos
%N = round(Np/(f0*Ta));
t = [0:Ta:(50-Ta)]';

yt = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4);

[X,f] = espetro(yt,Ta);

subplot(1,3,1)
plot(f,abs(X))
title("Guião 04 ex3b");
xlabel("Frequency (Hz)");
ylabel("Magnitude");
grid on;

subplot(1,3,2)
[xt,t] = reconstroi(X,f);
plot(t,xt)
title("Guião 04 ex4b");
legend("xt = ifft(X)");
xlabel("Time (s)");
ylabel("xt");
grid on;

subplot(1,3,3)
plot(t,yt)
legend("yt = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4)");
xlabel("Time(s)");
ylabel("yt");
grid on;