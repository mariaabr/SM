function [ak, bk] = coeficientes (Ta, T0, x, k)

    f = 1/T0;
    N = round(T0/Ta);
    ak = zeros(k,1);
    bk = zeros(k,1);
    k = [0:k-1]';

    ak(1) = mean(x);
    bk(1) = 0;

    for i = 2:N
        ak = ak + (2/N)*x(i)*cos(2*pi*k*f*i*Ta);
        bk = bk + (2/N)*x(i)*sin(2*pi*k*f*i*Ta);
    end 
end