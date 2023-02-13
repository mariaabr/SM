function simbolos = alfabeto1(texto)  
n = 1;
simbolos(n) = texto(1);
len = length(texto);
for i=2:len
    if sum(simbolos==texto(i)) == 0 % se o caracter for repetido nao o acrescenta a lista
        n = n + 1;
        simbolos(n) = texto(i);
    end
end
end