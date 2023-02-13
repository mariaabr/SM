function tempo_frequencial(T_F, Ta, T0, Np, y)
    
    f0 = 1/T0;
    fa = 1/Ta;
    N = round(Np/(f0*Ta));

    t = 0:Ta:(N-1)*Ta;

    N1 = length(y);
    df = fa/N1;
    f = (0:N1-1)*df - fa/2;
    X = fftshift(fft(y))/N1;

    if T_F == 1

        plot(t,y)
        legend("yt");
        xlabel("Tempo (s)");
        ylabel("yy");
        grid on;

    elseif T_F == 2

        plot(f,abs(X))
        legend("yt");
        xlabel("Frequência (Hz)");
        ylabel("yy");
        grid on;

    elseif T_F == 3
    
        figure(1)
        plot(t,y)
        legend("yt");
        xlabel("Tempo (s)");
        ylabel("yy");
        grid on;

        figure(2)
        plot(f,abs(X))
        legend("yt");
        xlabel("Frequência (Hz)");
        ylabel("yy");
        grid on;

    else
        disp("T_F deverá ter valores de 1,2 ou 3")
    end
end