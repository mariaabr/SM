function ck = MainComponent (x, Ta, k)

    T0 = 1;
    f = 1/T0;
    N = round(T0/Ta);
    ck = zeros(1, N);
    k = [0:N-1]';

    for i = 2:N
        ck = ck + (2/N)*x(i)*cos(2*pi*k*f*i*Ta);
    end 
end