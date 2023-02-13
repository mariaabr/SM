x = linspace(-2*pi, 0, 200);
fx = sin(x).*exp(x);
axis([-6 0 -0.5 0.8])
%xlim([-8 0])
%ylim([-0.5 0.8])
plot(x, fx, '. r')
axis([-8 0 -0.5 0.8])
title('função sin(x)*e^x')
xlabel('xx')
ylabel('yy')
legend('sin(x)*e^x')
