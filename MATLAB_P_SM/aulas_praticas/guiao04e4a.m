%reconstroi a sequencia de amostras do sinal
%usar a funcao ifft(.)

%alinea a)
f0 = 1;
t0 = 1/f0;

f = (0:N-1)*df - fa/2;
X = fftshift(fft(x))/N;

[xt,t] = reconstroi(X,f);
plot(t,xt)
