function [xpitch]=abishecvoice2nd(sound)
F=fft(sound(:,1));
plot(real(F));
m=max(real(F));
xpitch=find(real(F)==m,1)