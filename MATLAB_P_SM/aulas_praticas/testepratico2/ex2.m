load("Guitar01.mat");
% sound(x,fa)

% Ta = 1/fa;
[X,f] = espetro(x,fa);

figure(2);
plot(f,abs(X))
axis([-5*(10^3) 5*(10^3) 0 4*(10^(-3))])
legend("espetro");
xlabel("Frequency (Hz)");
ylabel("Magnitude");
grid on;