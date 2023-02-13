function [xt, t] = reconstroi(X, f)

    N = length(X);
    fa = max(f)*2;
    Ta = 1/fa;

    xt = ifft(ifftshift(X))*N;
    t = (0:N-1)'*Ta;
end