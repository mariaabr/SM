%ex1
Ta = 0.001;
N = 10000;
[xt,t] = GeraSinal(N,Ta);

figure(1);
plot(t,xt);
title("Guião 06 pII ex1");
xlabel("tt");
ylabel("xt");
grid on;

%ex2
[X,f] = espetro(xt,Ta);

figure(2);
plot(f,abs(X));
axis([-25 25 0 0.5])
title("Guião 06 pII ex2");
xlabel("Frequency (Hz)");
ylabel("Magnitude");
grid on;

%ex3
H = zeros(length(f),1);
H((f>0.89) & (f<1.11)) = 1;
H((f>-1.11) & (f<-0.89)) = 1;
xf = H.*X;
[w,t] = reconstroi(xf,f);

figure(3);
plot(t,xt);
hold on;
plot(t,w);
axis([0 10 -2 2])
xlabel("tt");
ylabel("sinal");
legend("Original", "Filtrado");
grid on;
hold off;