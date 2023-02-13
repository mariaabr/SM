%alinea d)
t = linspace(0,4,200);
zt = sin(6*pi.*t) + sin(8*pi.*t);

%f1 = 3; f2 = 4; f0 = MDC(f1, f2) = MDC(3, 4) = 1
%f = ?   T = 1/f   A = valor máximo
f = 1
A = 1,951
T = 1

plot(t, zt) 
title('sin(6*pi.*t) + sin(8*pi.*t)')
xlabel('tt')
ylabel('yy')
grid on