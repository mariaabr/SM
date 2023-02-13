function [xt,t] = GeraSinal(N,Ta)

    t = [0:(N-1)]'*Ta;
    phi = random('normal',0,pi,N,1);
    phi_i1 = zeros(N,1);
    
    for n = 2:N
        phi_i1(n) = phi_i1(n-1) + (phi(n) + phi(n-1))*(Ta/2);
    end
    
    phi = random('normal',0,pi,N,1);
    phi_i2 = zeros(N,1);
    
    for n = 2:N
        phi_i2(n) = phi_i2(n-1) + (phi(n) + phi(n-1))*(Ta/2);
    end

    rt = 0.5*sin(20*pi*t + 10*phi_i1) + 0.5*sin(24*pi*t + 10*phi_i2);
    xt = sin(2*pi*t) + rt;
end