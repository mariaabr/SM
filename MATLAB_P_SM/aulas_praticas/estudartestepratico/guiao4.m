%exercicio 3
%alinea a)

Ta = 0.01;
f0 = 1;
%T0 = 1/f0;
Np = 100;
N = round(Np/(f0*Ta));
ta = (0:N-1)'*Ta;

at = sin(2*pi*ta);

[sinala,f] = espetro(at, Ta);

figure(1)
subplot(1,3,1)
plot(f,abs(sinala))
title("Guião 04 ex3a");
xlabel("Frequency (Hz)");
ylabel("Magnitude");
grid on;

subplot(1,3,2)
[xt,t] = reconstroi(sinala,f);
plot(t,xt)
title("Guião 04 ex4a");
legend("xt = ifft(X)");
xlabel("Time (s)");
ylabel("xt");
grid on;

subplot(1,3,3)
plot(ta,at)
legend("at = sin(2*pi*f0*ta)");
xlabel("Time(s)");
ylabel("at");
grid on;

%alinea b)

Ta = 0.01;
f0 = 1;
T0 = 1/f0;
tb = [0:Ta:(50-Ta)]';

bt = sin(10*pi*tb) + cos(12*pi*tb) + cos(14*pi*tb - pi/4);

[sinalb,f] = espetro(bt, Ta);

figure(2)
subplot(1,3,1)
plot(f,abs(sinalb))
title("Guião 04 ex3b");
xlabel("Frequency (Hz)");
ylabel("Magnitude");
grid on;

subplot(1,3,2)
[xt,t] = reconstroi(sinalb,f);
plot(t,xt)
title("Guião 04 ex4b");
legend("xt = ifft(X)");
xlabel("Time (s)");
ylabel("xt");
grid on;

subplot(1,3,3)
plot(tb,bt)
legend("bt = sin(10*pi*tb) + cos(12*pi*tb) + cos(14*pi*tb - pi/4)");
xlabel("Time(s)");
ylabel("bt");
grid on;

%alinea c)

Ta = 0.01;
f0 = 1;
T0 = 1/f0;
Np = 100;
N = round(Np/(f0*Ta));
tc = (0:N-1)'*Ta;

ct = 10 + 14*cos(20*pi*tc - pi/3) + 8*cos(40*pi*tc + pi/2);

[sinalc,f] = espetro(ct, Ta);

figure(3)
subplot(1,3,1)
plot(f,abs(sinalc))
title("Guião 04 ex3c");
xlabel("Frequency (Hz)");
ylabel("Magnitude");
grid on;

subplot(1,3,2)
[xt,t] = reconstroi(sinalc,f);
plot(t,xt)
title("Guião 04 ex4c");
legend("xt = ifft(X)");
xlabel("Time (s)");
ylabel("xt");
grid on;

subplot(1,3,3)
plot(tc,ct)
legend("ct = 10 + 14*cos(20*pi*tc - pi/3) + 8*cos(40*pi*tc + pi/2)");
xlabel("Time(s)");
ylabel("ct");
grid on;

%alinea d)

Ta = 0.01;
f0 = 1;
T0 = 1/f0;
td = [0:Ta:(5-Ta)]';

dt = square(2*pi*1*td);

[sinald,f] = espetro(dt, Ta);

figure(4)
subplot(1,3,1)
plot(f,abs(sinald))
title("Guião 04 ex3d");
xlabel("Frequency (Hz)");
ylabel("Magnitude");
grid on;

subplot(1,3,2)
[xt,t] = reconstroi(sinald,f);
plot(t,xt)
title("Guião 04 ex4d");
legend("xt = ifft(X)");
xlabel("Time (s)");
ylabel("xt");
grid on;

subplot(1,3,3)
plot(td,dt)
legend("dt = square(2*pi*1*td)");
xlabel("Time(s)");
ylabel("dt");
grid on;

%alinea e)

Ta = 0.01;
f0 = 1;
T0 = 1/f0;
te = [0:Ta:(5-Ta)]';

et = sawtooth(2*pi*f0*te+pi/2,1/2);

[sinale,f] = espetro(et, Ta);

figure(5)
subplot(1,3,1)
plot(f,abs(sinale))
title("Guião 04 ex3e");
xlabel("Frequency (Hz)");
ylabel("Magnitude");
grid on;

subplot(1,3,2)
[xt,t] = reconstroi(sinale,f);
plot(t,xt)
title("Guião 04 ex4e");
legend("xt = ifft(X)");
xlabel("Time (s)");
ylabel("xt");
grid on;

subplot(1,3,3)
plot(te,et)
legend("et = sawtooth(2*pi*f0*te+pi/2,1/2)");
xlabel("Time(s)");
ylabel("et");
grid on;