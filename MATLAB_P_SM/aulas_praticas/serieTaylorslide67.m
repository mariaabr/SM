x = linspace(0, 2*pi);
y = sin(x);
s = zeros(1,length(x));

s2 = soma(x,2);
s10 = soma(x,10);

plot(x, y, 'r',x ,s2, 'k',x, s10, 'b')
legend('sen(x)', 'N=2', 'N=10')