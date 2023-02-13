function [xt, t] = reconstroi (sinal, f)
    
    N = length(sinal);
    fa = max(f)*2;
    Ta = 1/fa;

    t = (0:N-1)'*Ta;
    xt = ifft(ifftshift(sinal))*N;
end