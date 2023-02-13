%alinea a)
%T = periodo do sinal; Ta = periodo de amostragem;
% x = vetor de amostas de um sinal
    T = 1/2;
    Ta = 0.001;
    t = 0:Ta:2;

    xt = 2.*sin(4*pi.*t);
    pa = potencia(xt, Ta, T)

%alinea b)
    T = 1/5;
    Ta = 0.001;
    t = 0:Ta:2;

    yt = sin(10*pi.*t + pi/2);
    pb = potencia(yt, Ta, T)

%alinea c)
    T = 1/10;
    Ta = 0.001;
    t = 0:Ta:0.4;

    pt = sin(20*pi.*t + 70.*pi/180) + sin(20*pi.*t + 200.*pi/180);
    pc = potencia(pt, Ta, T)

%alinea d)
    T = 1;
    Ta = 0.001;
    t = 0:Ta:4;

    zt = sin(6*pi.*t) + sin(8*pi.*t);
    pd = potencia(zt, Ta, T)

%alinea e)
    T = 1;
    Ta = 0.001;
    t = 0:Ta:2;

    wt = sin(6*pi.*t) + sin(8*pi.*t + 0.1);
    pe = potencia(wt, Ta, T)

%alinea f)
    T = 2;
    Ta = 0.001;
    t = 0:Ta:8;

    qt = sin(6*pi.*t) + sin(7*pi.*t) + sin(8*pi.*t);
    pe = potencia(qt, Ta, T)