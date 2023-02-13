%alinea c)
t = linspace(0,0.4,200);
pt = sin(20*pi.*t + 70.*pi/180) + sin(20*pi.*t + 200.*pi/180);

%f = ?   T = 1/f   A = valor máximo
f = 10 %a frequencia de um sinal que resulta da soma de dois sinais com
%a mesma frequencia e igual a esta frequencia 
A = 0.8452
T = 1/10

plot(t, pt) 
title('sin(20*pi.*t + 70.*pi/180) + sin(20*pi.*t + 200.*pi/180)')
xlabel('tt')
ylabel('yy')
grid on