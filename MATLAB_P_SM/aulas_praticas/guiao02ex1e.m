%alinea e)
t = linspace(0,2,200);
wt = sin(6*pi.*t) + sin(8*pi.*t + 0.1);

%f = ?   T = 1/f   A = valor máximo
f = 1
A = 1,928
T = 1

plot(t, wt) 
title('sin(6*pi.*t) + sin(8*pi.*t + 0.1)')
xlabel('tt')
ylabel('yy')
grid on