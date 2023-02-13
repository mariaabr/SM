load("Guitar01.mat");

f1 = 488.92;
[X,f] = espetro(x,fa);

H = zeros(length(f),1);
H((f>f1) & (f<f1)) = 1;
H((f>-f1) & (f<-f1)) = 1;
xf = H.*X;
[w,t] = reconstroi(xf,f);
w = real(w);
sound(w,fa);

figure(2);
plot(f,H);
xlim([-5e3 5e3]);
ylim([0 4e-3]);
xlabel("Frequency (Hz)");
ylabel("H");
grid on;