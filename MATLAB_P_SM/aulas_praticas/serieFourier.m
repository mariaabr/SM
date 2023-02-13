function [sinal,t] = serieFourier(Ta,f0,Np,ak,bk)
%produz um sinal resultante da serie de fourier

    N = Np/(f0*Ta); %ou Np*(T/Ta)
    t = (0:N-1)*Ta; %ou t = 0:Ta:N*Ta - Ta
    T = 1/f0;
    k = length(ak);
    
    sinal = zeros(1,N); %limita se a uma linha uma vez que opera com um vetor ou 0
    
    for i = 1:k
         sinal = sinal + ak(i)*cos(2*pi*(i-1)*f0*t) + bk(i)*sin(2*pi*(i-1)*f0*t);
    end
end