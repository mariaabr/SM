function [xt,t] = CalcSignal (ck, f0)
    
    T0 = 1/f0;
    Ta = 0.001;
    N = round(T0*Ta);
    t = (0:N-1)*Ta;
    k = length(ck);

    xt = zeros(1,N);

    for i = 1:k
        xt = xt + ck(i)*exp(j*2*pi*(i-1)*f0*t);
    end
end