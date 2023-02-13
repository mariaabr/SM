%alinea b)
t = linspace(0,2,200);
yt = sin(10*pi.*t + pi/2);

%f = ?   T = 1/f   A = valor máximo
f = 5
A = 1
T = 1/5

plot(t, yt) 
title('sin(10*pi.*t + pi/2)')
xlabel('tt')
ylabel('yy')
grid on