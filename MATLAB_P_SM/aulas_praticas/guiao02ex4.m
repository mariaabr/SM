%N = 3; A1 = A2 = A3 = 1; f1 = 10; f2 = 20; f3 = 30
%]-pi; pi]

f0 = 10
T = 0.1
Ta = 0.001;
t = 0:Ta:0.4;

for i = 1:3
    xt = sin(2.*pi*10*t + i) + sin(2.*pi*20*t + i) + sin(2.*pi*30*t + i);
    p = potencia(xt,Ta,T)
    subplot(1,3,i)
    plot(t, xt)
    title('sin(2.*pi*10*t + i) + sin(2.*pi*20*t + i) + sin(2.*pi*30*t + i)')
    xlabel('tt')
    ylabel('yy')
end