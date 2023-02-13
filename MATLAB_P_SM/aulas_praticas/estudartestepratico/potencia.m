function p = potencia(x, Ta, T)
    N = T/Ta;
    p = x(1:N)*x(1:N)'/N;
end