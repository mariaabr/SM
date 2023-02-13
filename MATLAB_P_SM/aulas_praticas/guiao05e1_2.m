Ta = 0.01;
t = 0:0.2:5;
xt = sin(2*pi*t);

nbit = [2,3,4];
count = 0;

for i = nbit
    delta = 2/(2^i) %porque o 1º -> 2?
    count = count + 1;
    
    partition = [-1+2*delta/2 : delta : 1-delta/2];
    codebook = [-1+delta/2 : delta : 1-delta/2];
    [index, quants] = quantiz(xt,partition,codebook);

    figure(count);
    subplot(1,3,1);
    plot(t,xt,t,quants);
    xlabel("tt");
    ylabel("yy");
    legend("Original Signal","Quantized Signal");
    grid on;
    
    subplot(1,3,2);
    [X,fx] = espetro(xt,Ta);
    plot(fx,abs(X))
    xlabel("Frequency (Hz)");
    ylabel("Magnitude");
    legend("Signal Original");
    
    subplot(1,3,3);
    [x,fq] = espetro(quants,Ta);
    plot(fq,abs(X))
    xlabel("Frequency (Hz)");
    ylabel("Magnitude");
    legend("Quantized Legends");

    figure(count + 3);
    ReconstroiSinal(quants,Ta);
end


