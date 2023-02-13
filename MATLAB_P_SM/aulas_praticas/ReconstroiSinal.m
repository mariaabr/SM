function ReconstroiSinal(x, Ta)
    
    N = length(x);
    fa = 1/Ta;
    y = zeros(100*N,1); % sinal reconstruido
    fay = 100*fa;
    Tay = 1/fay;

    tx = [0:N-1]' * Ta;
    t = [0:length(y)-1]'*Tay;

    for n = 1:N
        y = y + x(n)*sinc(fa*(t-(n-1)*Ta));
    end

    plot(t,y,tx,x);
    xlabel('tt');
    ylabel('sinal');
    grid on;
end