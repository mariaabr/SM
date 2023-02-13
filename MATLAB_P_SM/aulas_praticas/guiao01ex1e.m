%alinea e)
t1 = 0:0.01:5;
t2 = 0:0.01:5;
[T1,T2] = meshgrid(t1,t2);
qt = 2.*sin(2*pi*(2*T1 + T2));
mesh(t1, t2, qt) 
title('função 2.*sin(2*pi*(2*t1 + t2))')
xlabel('tt')
ylabel('yy')
legend('2.*sin(2*pi*(2*t1 + t2))')