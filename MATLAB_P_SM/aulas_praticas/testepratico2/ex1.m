load("Guitar01.mat");
sound(x,fa)

N = length(x);
Ta = 1/fa;
t = (0:N-1)'*Ta;

figure(1);
plot(t,x)
title("sinal com fa");
legend("Guitar");
xlabel("tt");
ylabel("yy");
grid on;