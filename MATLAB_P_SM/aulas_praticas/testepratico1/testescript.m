%alinea d) - testar a funcao
%% y(t)

Ta = 0.001;
%T_F a escolher quando se chama a funcao
T_F = 1;

f0y = 1/2;
T0y = 1/f0y;
Np = 30;
N = round(Np/(f0y*Ta));
ty = 0:Ta:(N-1)*Ta;

y = 12*cos(3*pi*ty - pi/4) + 8*sin(5*pi*ty + pi/5);

figure(1)
tempo_frequencial(T_F,Ta,T0y,Np,y)



%% square wave

Ta = 0.001;
%T_F a escolher quando se chama a funcao
T_F = 3;

f0square = 2;
T0square = 1/f0square;
Np = 10;
%N = round(Np/(f0square*Ta));
tsquare = [0:Ta:(5-Ta)]';

ysquare = square(2*pi*tsquare);

figure(2)
tempo_frequencial(T_F,Ta,T0square,Np,ysquare)

