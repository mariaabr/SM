%alinea a)

Ta = 0.01;
t = 0:Ta:5;

xt = 2*sin(4*pi*t);

subplot(1,5,1)
plot(t,xt,'r')
legend("xt");
xlabel("tt");
ylabel("yy");
grid on;

%alinea b)

Ta = 0.01;
t = 0:Ta:5;

yt = cos(10*pi*t);

subplot(1,5,2)
plot(t,yt,'--b', 'LineWidth',3)
legend("yt");
xlabel("tt");
ylabel("yy");
grid on;

%alinea c)

Ta = 0.01;
t = 0:Ta:5;

zt = xt.*yt;

subplot(1,5,3)
plot(t,zt,'o- g')
legend("zt");
xlabel("tt");
ylabel("yy");
grid on;

%alinea d)

Ta = 0.01;
t = 0:Ta:10;

wt = 3*sin(pi*t) + 2*sin(6*pi*t);

subplot(1,5,4)
plot(t,wt,'y', 'LineWidth', 3)
legend("wt");
xlabel("tt");
ylabel("yy");
grid on;

%alinea e)

Ta = 0.01;
x = 0:Ta:5;
y = 0:Ta:5;
[XX,YY] = meshgrid(x,y);

subplot(1,5,5);
qtt = cos(4.*pi.*(XX+YY)).*exp(-abs(XX+YY));
surf(x,y,qtt) % sombreado interpolado
shading interp
legend("qtt");
xlabel("tt");
ylabel("yy");
grid on;

%exercicio 4
%% FAZER - AJUDAAA