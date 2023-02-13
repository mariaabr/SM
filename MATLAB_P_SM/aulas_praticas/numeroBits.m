function nbits = numeroBits(texto)

[simbolos2, frequencia2] = alfabeto2(texto);

% exercicio 3
[frequencia3,i] = sort(frequencia2,"descend");
simbolos3 = simbolos2(i);
nbits = 0;

for n=1:length(simbolos3)
    nbits = nbits + sum(texto == simbolos3(n))*n; % como??
end
end