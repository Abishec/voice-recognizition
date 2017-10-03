clear all;
close all;
clc;



recorder = audiorecorder(16000,8,1);
disp('please record your voice');
drawnow();
pause(1);
recordblocking(recorder,5);
play(recorder);
sound=getaudiodata(recorder);
plot(sound)
figure;
f =abishecvoice2nd(sound);
uno=input('enter the user number:');
try
    load database
    F=[F;f];
    c=[c;uno];
    save database
catch
    F=f;
    c=uno;
    save database r c

end

load database
D=[];
for(i=1:size(F,1))
    d=sum(abs(F(i)-f));
    D=[D d];
end
sm=inf;
ind=-1;
for(i=1:length(D))
    if(D(i)<sm)
        sm=D(i);
        ind=i;
    end
end
    detected_class=c(ind);
    disp('the detected class is:');
    detected_class
    dfname=strcat('.\Train\',num2str(detected_class),'.rec');
    subplot(1,2,2);
    imshow(sm);
    title('Given image');
    subplot(1,2,2);
    imshow(imread(dfname));
   



msgbox('voice is registeredd')

 

