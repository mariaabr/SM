%alinea d)
t = 0:0.01:10;
wt = 3.*sin(pi*t) + 2.*sin(6*pi*t);
plot(t, wt) 
title('função 3.*sin(pi*t) + 2.*sin(6*pi*t)')
xlabel('tt')
ylabel('yy')
legend('3.*sin(pi*t) + 2.*sin(6*pi*t)')