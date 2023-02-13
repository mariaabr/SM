S1 = 1:2:10
S2 = -5:5
S3 = linspace(-5,5,11)
M = [1, 5, 1-j; 4, j, -1]
M(:, 4) = [5,7] % adiciona a coluna 
M(:, 1:2:end) % cria a matriz e indexa as colunas ímpares
% (1 até ao fim de dois em dois)
