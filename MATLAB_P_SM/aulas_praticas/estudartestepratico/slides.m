%exercicio slide 40

x = linspace(-2*pi,0,200);
y = sin(x).*exp(x);

subplot(1,3,1);

axis([-8 0 -0.5 0.8]);
plot(x,y,'.r')
title("slide 40 graph");
legend("sin(x).*exp(x)");
xlabel("xx");
ylabel("yy");
grid on;

%exercicio slide 43

x = linspace(0, 2*pi, 200);

fx = sin(4.*x).*exp(i.*x);
gx = sin(8.*x).*exp(i.*x);

subplot(1,3,2);
hold on;
plot(x, fx,'g')
plot(x, gx,'r')
title('funções complexas');
xlabel('real');
ylabel('imaginária');
legend('sin(4.*x).*exp(ix)', 'sin(8.*x).*exp(ix)');
hold off;

%exercicio slide 54

x = linspace(-1, 1, 51);
y = linspace(-1, 1, 51);
[XX,YY] = meshgrid(x,y);

subplot(1,3,3);
f = cos(4.*pi.*(XX+YY)).*exp(-abs(XX+YY));
surf(x,y,f) % sombreado interpolado
shading interp

title('função cos(4.*pi.*(x+y)).*exp(-abs(x+y))')
xlabel('xx')
ylabel('yy')