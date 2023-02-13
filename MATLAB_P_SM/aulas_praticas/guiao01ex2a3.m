%alinea a)
t = 0:0.01:5;
xt = 2.*sin(4*pi.*t);
plot(t, xt, '- r', "LineWidth", 3) %alterar linewidth na edicao das propriedades do grafico
xlabel('tt')
ylabel('yy')

hold on
%alinea b)
t = 0:0.01:5;
% ou t = 0:0.01:5
% 0.01 e o passo/intervalo
yt = cos(10*pi*t);
plot(t, yt, '-- b') 
xlabel('tt')
ylabel('yy')

%alinea c)
t = 0:0.01:5;
zt = xt.*yt;
plot(t, zt, 'o- g') 
xlabel('tt')
ylabel('yy')

%alinea d)
t = 0:0.01:5;
wt = 3.*sin(pi*t) + 2.*sin(6*pi*t);
plot(t, wt, '- y', "LineWidth", 3) 
xlabel('tt')
ylabel('yy')
legend('2.*sin(4*pi.*t)','cos(10*pi*t)','xt.*yt','3.*sin(pi*t) + 2.*sin(6*pi*t)')



