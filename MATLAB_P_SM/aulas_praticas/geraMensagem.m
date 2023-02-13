function [numbits, numbps] = geraMensagem(f,compmesg,nbits)

mesg = randsample(1:length(f),compmesg,true,f/sum(f));

N = length(f);
numbits = 0;
for n = 1 : N
    numbits = numbits + sum(mesg == n) * nbits(n);
end
numbps = numbits/compmesg;

end