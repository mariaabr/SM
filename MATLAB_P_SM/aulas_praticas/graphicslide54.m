x = linspace(-1, 1, 51);
y = linspace(-1, 1, 51);
[XX,YY] = meshgrid(x,y);

f = cos(4.*pi.*(XX+YY)).*exp(-abs(XX+YY));
surf(x,y,f) % sombreado interpolado
shading interp

title('função cos(4.*pi.*(x+y)).*exp(-abs(x+y))')
xlabel('xx')
ylabel('yy')
% legend('cos(4.*pi.*(x+y)).*exp(-abs(x+y))')

