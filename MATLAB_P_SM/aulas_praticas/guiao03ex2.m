%exercicio 2
%ak e bk sao vetores da serie

%Ak = sqrt(ak^2 + bk^2)
%ang = -atan2(bk/ak)
%xt = sum(Ak*cos(2*pi*k*f0*t + ang))
%fun1 = xt*cos(2*pi*k*t)
%fun2 = xt*sin(2*pi*k*t)

%ak = 2*f0*integral(fun1,0,T)
%bk = 2*f0*integral(fun2,0,T)


Ta = 0.001;
f0 = 1;
T = 1;
Np = 2;
K = 50;

bk = zeros(1, K-1);
ind = 1:2:K-1;
bk(ind) = 4./(pi*ind); %nas impares fica com estes valores por causa do bk(ind)
bk = [0 bk];
ak = zeros(size(bk));

t1 = 0:Ta:2-2*Ta;
y = square(2*pi*1*t1);

[sinal, t] = serieFourier(Ta,f0,Np,ak,bk);

plot(t1,y,'r')
hold on
plot(t,sinal,'b')
legend('Square Wave', 'Série de Fourier');
xlabel('tempo (s)');
ylabel('sinal resultante da série de Fourier');
grid on;
hold off