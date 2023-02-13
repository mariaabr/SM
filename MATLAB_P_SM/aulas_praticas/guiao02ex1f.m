%alinea f)
t = linspace(0,8,200);
qt = sin(6*pi.*t) + sin(7*pi.*t) + sin(8*pi.*t);

%f1 = 3; f2 = 3,5; f3 = 4
%lambda = 10; f1 = 30; f2 = 35; f3 = 40
%f0 = (1/lambda) * MDC(30,35,40) = 5/10 = 0.5

%f = ?   T = 1/f   A = valor máximo
f = 0.5
A = 2.951
T = 2

plot(t, qt) 
title('sin(6*pi.*t) + sin(7*pi.*t) + sin(8*pi.*t)')
xlabel('tt')
ylabel('yy')
grid on