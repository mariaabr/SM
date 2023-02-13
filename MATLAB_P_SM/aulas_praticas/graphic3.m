x = linspace(0, 2*pi, 200);
fx = sin(4.*x).*exp(i.*x);
gx = sin(8.*x).*exp(i.*x);
plot(x, fx, x, gx)
title('funções complexas')
xlabel('real')
ylabel('imaginária')
legend('sin(4.*x).*exp(ix), sin(8.*x).*exp(ix)')