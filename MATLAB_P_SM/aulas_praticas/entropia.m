function h = entropia(texto)

[simbolos2, frequencia2] = alfabeto2(texto);
h = 0;
total = sum(frequencia2);

for i = 1:length(frequencia2)
    pk = frequencia2(i)/total;
    h = h + pk * log2(1/pk);
end
end