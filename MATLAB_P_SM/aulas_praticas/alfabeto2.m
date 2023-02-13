function [simbolos, frequencia] = alfabeto2(texto)
N = length(texto);
n = 1;
simbolos(n) = texto(1);
frequencia(n) = sum(texto == simbolos(n)) / N*100;
for i=2:length(texto)
    if sum(simbolos==texto(i)) == 0
        n = n + 1;
        simbolos(n) = texto(i);
        frequencia(n) = sum(texto == simbolos(n)) / N*100;
    end
end
end