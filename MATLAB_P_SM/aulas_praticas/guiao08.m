load("Mensagem.mat");

% exercicio 1
simbolos1 = alfabeto1(Mensagem)

% exercicio 2
[simbolos2, frequencia2] = alfabeto2(Mensagem)

% exercicio 3
% (...)
%% Q - 0000
%% W - 0001
%% S - 0010
%% D - 0011
%% X - 0100
%% C - 0101
%% Z - 0110
%% V - 0111
%% R - 1000

%%Como a mensagem tem 304 chars, com este codigo precisariamso de:

Nbits = 4*304

% exercicio 4
nbits = numeroBits(Mensagem)

% exercicio 5
% (...)

% exercicio 6
h = entropia(Mensagem)