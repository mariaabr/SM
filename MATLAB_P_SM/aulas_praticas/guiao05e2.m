%% alinea a)
Tax = 0.2;
tx = [0:Tax:(5-Tax)];

xt = sin(2*pi*tx);
figure(1);
ReconstroiSinal(xt,Tax);

%% alinea b)
Tay = 0.04;
ty = [0:Tay:(5-Tay)];

yt = sin(10*pi*ty) + cos(12*pi*ty) + cos(14*pi*ty - pi/4);
figure(2);
ReconstroiSinal(yt,Tay);
