clear all;

A=imread('C:\Lages\Computação Gráfica\Documentação\Segmentacao\negativo.jpg','jpg');

Ag=rgb2gray(A);

%figure;imshow(A)
figure;imshow(Ag)

IM=Ag;

[lin col prof]=size(IM);

hag=imhist(Ag);

him=imhist(IM);

TIM=zeros(lin,col);

THR1=50
THR2=256

for i=1:lin
   for k=1:col
      
      if (IM(i,k)>=THR1)&(IM(i,k)<=THR2)
         TIM(i,k)=255;
      else
         TIM(i,k)=0;
      end
      
   end
end

mask=zeros(lin,col);

for i=1:lin
   for k=1:col
      
      if TIM(i,k)==255
         mask(i,k)=1;
      else
         mask(i,k)=0;
      end
      
   end
end


figure;imshow(TIM);

figure;plot(him);
grid;zoom;