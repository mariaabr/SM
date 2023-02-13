%ex1
load('Guitar03.mat')
sound(x,fa)

%ex2
Ta = 1/fa;
[X,f] = espetro(x,Ta);

figure(1);
plot(f,abs(X))
axis([-0.4*(10^4) 0.4*(10^4) 0 6*(10^(-3))])
title("Guião 06 ex2");
xlabel("Frequency (Hz)");
ylabel("Magnitude");
grid on;

% ex3
H = zeros(length(f),1);
H((f>100) & (f<400)) = 1;
H((f>-400) & (f<-100)) = 1;
xf = H.*X;
[w,t] = reconstroi(xf,f);
w = real(w);
sound(w,fa);

figure(2);
plot(f,H);
xlim([-2e3 2e3]);
ylim([0 2]);
xlabel("Frequency (Hz)");
ylabel("H");
grid on;

figure(3);
plot(f,abs(xf));
xlim([-1e3 1e3]);
xlabel("Frequency (Hz)");
ylabel("xf");
grid on;

figure(4);
plot(t,w);
xlabel("tt");
ylabel("w");
grid on;