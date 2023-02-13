%xt = sum(Ak*cos(2*pi*k*f0*t + ang))
%x e um vetor com as amostras sucessivas de um sinal


f0 = 1;
T0 = 1/f0;
Np = 4;
K = 100;
Ta = 0.001;
N = round(Np/(f0*Ta));

t = [0 : (N-1)]'*Ta;
y = sawtooth(2*pi*f0*t+pi/2,1/2);

[sinal,t] = serieFourier(Ta,f0,Np,ak,bk);
[ak,bk] = coeficientesFourier(Ta,T0,sinal,K);

subplot(1,2,1)
plot(t,sinal,'b')
legend('Série de Fourier by ak e bk');

subplot(1,2,2)
plot(t,y,'g')
legend('Sawtooth');
xlabel('tempo (s)');
grid on;
