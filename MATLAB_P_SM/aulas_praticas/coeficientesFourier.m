function [ak,bk] = coeficientesFourier(Ta, T0, x, K)

  %x => vetor(N*1)
  f0 = 1/T0;
  N = length(x);
  t = [0:(N-1)]'*Ta;
  k = [0: K-1]';

  ak = zeros(K,1);
  bk = zeros(K,1);
  ak(1) = mean(x);
  bk(1) = 0;

  for i = 2:N
    ak = ak + (2/N)*x(i)*cos(2*pi*k*f0*i*Ta);
    bk = bk + (2/N)*x(i)*sin(2*pi*k*f0*i*Ta);
  end
end