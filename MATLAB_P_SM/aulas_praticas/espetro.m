function [X,f] = espetro(x, Ta)

    N = length(x);
    fa = 1/Ta;
    df = fa/N;

    f = (0:N-1)*df - fa/2;
    X = fftshift(fft(x))/N;
end