%alinea a)
t = 0:0.1:5;
xt = 2.*sin(4*pi.*t);
plot(t, xt) 
title('função 2.*sin(4*pi.*t)')
xlabel('tt')
ylabel('yy')
legend(' 2.*sin(4*pi.*t)')

hold on
%alinea b)
t = 0:0.1:5;
% ou t = 0:0.01:5
% 0.01 e o passo/intervalo
yt = cos(10*pi*t);
plot(t, yt) 
title('função cos(10*pi*t)')
xlabel('tt')
ylabel('yy')
legend('cos(10*pi*t)')

%alinea c)
t = 0:0.1:5;
zt = xt.*yt;
plot(t, zt) 
title('função xt.*yt')
xlabel('tt')
ylabel('yy')
legend('xt.*yt')

%alinea d)
t = 0:0.1:10;
wt = 3.*sin(pi*t) + 2.*sin(6*pi*t);
plot(t, wt) 
title('função 3.*sin(pi*t) + 2.*sin(6*pi*t)')
xlabel('tt')
ylabel('yy')
legend('3.*sin(pi*t) + 2.*sin(6*pi*t)')

%alinea e)
t1 = 0:0.1:5;
t2 = 0:0.1:5;
[T1,T2] = meshgrid(t1,t2);
qt = 2.*sin(2*pi*(2*T1 + T2));
mesh(t1, t2, qt) 
title('função 2.*sin(2*pi*(2*t1 + t2))')
xlabel('tt')
ylabel('yy')
legend('2.*sin(2*pi*(2*t1 + t2))')

%Conclusao:  Maior tempo de amostragem: Representacao menos accurate do sinal mas ocupa menos memoria e e mais rapido