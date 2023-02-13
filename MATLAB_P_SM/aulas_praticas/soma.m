function s1 = soma(x,N)
%somatorio de uma serie de Taylor
%x e um vetor
%n e um inteiro
    s1 = 0;
    for n = 1:N
        s1 = s1 + ((x.^n)/factorial(n)).*sin((n*pi)/2);
    end
end