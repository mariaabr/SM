% ex1
[img,map] = imread('Parede_8bit.bmp');

figure(1);
image(img);
colormap(map);
% tem um mensagem com simbolos muitas vezes repetidos
% neste caso tem muitas vezes a mesma cor
% usa-se a codificação Run-Length

% ex2
save8bitimage('parede.raw', img);

% ex3
im = load8bitimage('parede.raw');
im = uint8(im);
figure(2);
image(im);
colormap(map);