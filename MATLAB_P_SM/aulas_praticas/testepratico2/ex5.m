load("Guitar01.mat");

Ta = 1/fa;

x_new = zeros(1,1e3);
for i = 1:1e3
    x_new(i) = x(i);
end

N = length(x_new);
t = (0:N-1)'*Ta;

nbit = 3;
delta = (0.002)/(2^nbit);
partition = (-1+delta:delta:1-delta);
codebook = (-1+delta/2:delta:1-delta/2);
[index, quants] = quantiz(x_new, partition, codebook);

figure(6);
plot(t,x_new,t,quants)
title('Quantização do sinal, nbit=3');
xlabel('tt');
ylabel('Amplitude');
legend('Sinal Original','Sinal quantizado');