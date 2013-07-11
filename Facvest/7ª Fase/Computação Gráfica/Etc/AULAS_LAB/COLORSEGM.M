clear all;

Rv=imread('C:\Lages\Computação Gráfica\Documentação\Segmentacao\Potate.jpg','jpg');
Rc=imread('C:\Lages\Computação Gráfica\Documentação\Segmentacao\rua cheia.jpg','jpg');

Rcg=rgb2gray(Rc);
Rvg=rgb2gray(Rv);

figure;imshow(Rv);
figure;imshow(Rvg);

figure;imshow(Rc);
figure;imshow(Rcg);

IM=Rv;

IMr=IM(:,:,1);
IMg=IM(:,:,2);
IMb=IM(:,:,3);


[lin col prof]=size(IM);

himr=imhist(IMr);
himg=imhist(IMg);
himb=imhist(IMb);


TIM=zeros(lin,col,prof);

THR=[230 123 34];

break

for p=1:prof
   
	for i=1:lin
   	for k=1:col
         
         
         
      	if IM(i,k,p)<=THR(p)
         	TIM(i,k,p)=0;
      	else
         	TIM(i,k,p)=255;
         end
         
         
         
      
   	end
   end
end

figure;
imshow(TIM);

nc=1:256;

figure
plot(nc,himr,'r',nc,himg,'g',nc,himb,'b');
grid;zoom;