%alinea e)
t = -5:1/25:5;
x1 = -5:1/25:5;
x2 = -5:1/25:5;
N = length(t);
N2 = length(x1);
r = zeros(N2, N2);

[X1,X2] = meshgrid(x1,x2);

for n = 1:N;
    for i = 1:N2
    r(i,:) = 2.*sin(2*pi*sqrt(X1^2 + X2^2) - 2*pi*t(n));
    end
mesh(x1, x2, r)
end

title('função 2.*sin(2*pi*sqrt(X1^2 + X2^2) - 2*pi*t)')
xlabel('xx')
ylabel('yy')
legend('2.*sin(2*pi*sqrt(X1^2 + X2^2) - 2*pi*t)')
%COMO??