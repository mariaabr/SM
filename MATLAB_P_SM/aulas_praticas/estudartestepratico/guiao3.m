%exercicio 2,3,4
%ak e bk sao vetores da serie

Ta = 0.001;
f0 = 1;
T0 = 1;
Np = 2;
k = 50;

bk = zeros(1,k-1);
ind = 1:2:k-1;
bk(ind) = 4./(ind*pi);
bk = [0 bk];
ak = zeros(size(bk));

t1 = 0:Ta:2-2*Ta;
y = square(2*pi*1*t1);

[ak,bk] = coeficientes(Ta,T0,y,k);
[sinalsq,t] = fourier(Ta, f0, Np, ak, bk);

t2 = [0 : (N-1)]'*Ta;
z = sawtooth(2*pi*f0*t2+pi/2,1/2);

[ak,bk] = coeficientes(Ta,T0,z,k);
[sinalst,t] = fourier(Ta, f0, Np, ak, bk);

subplot(1,2,1)
plot(t,sinalsq,'r');
hold on;
plot(t1,y,'b');
legend('Square Wave', 'Série de Fourier');
xlabel('tempo(s)');
ylabel('sinal');
grid on;
hold off;

subplot(1,2,2)
plot(t,sinalst,'r');
hold on;
plot(t2,z,'b');
legend('SawTooth', 'Série de Fourier');
xlabel('tempo(s)');
ylabel('sinal');
grid on;
hold off;
