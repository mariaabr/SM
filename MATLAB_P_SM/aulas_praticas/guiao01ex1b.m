%alinea b)

Ta = 0.01;
f0 = 5;
fa = 1/Ta;
Np = 25;
N = round(Np/(f0*Ta));
df = fa/N;

f = (0:N-1)*df - fa/2;
t = 0:0.01:5;

% ou t = 0:0.01:5
% 0.01 e o passo/intervalo
yt = cos(10*pi*t);

figure(1)
plot(t, yt) 
title('funçãocos(10*pi*t)')
xlabel('tt')
ylabel('yy')
legend('cos(10*pi*t)')

figure(2)
plot(f, yt) 
title('funçãocos(10*pi*t)')
xlabel('ff')
ylabel('yy')
legend('cos(10*pi*t)')

