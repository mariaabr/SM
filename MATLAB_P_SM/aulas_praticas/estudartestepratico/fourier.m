function [sinal, t] = fourier (Ta, f0, Np, ak, bk)
    
    N = Np/(f0*Ta);
    t = (0:N-1)*Ta;
    k = length(ak);

    sinal = zeros(1,N);

    for i = 1:k
        sinal = sinal + ak(i)*cos(2*pi*f0*(i-1)*t) + bk(i)*sin(2*pi*f0*(i-1)*t);
    end
end