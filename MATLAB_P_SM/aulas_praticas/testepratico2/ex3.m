load("Guitar01.mat");

fa_new = 2*fa;
sound(x,fa_new)

N = length(x);
Ta_new = 1/fa_new;
t = (0:N-1)'*Ta_new;

figure(3);
plot(t,x)
title("sinal com fa_new = 2*fa");
legend("Guitar");
xlabel("tt");
ylabel("yy");
grid on;

[X,f] = espetro(x,fa_new);

figure(4);
plot(f,abs(X))
axis([-5*(10^3) 5*(10^3) 0 4*(10^(-3))])
title("sinal com fa_new = 2*fa");
legend("espetro");
xlabel("Frequency (Hz)");
ylabel("Magnitude");
grid on;