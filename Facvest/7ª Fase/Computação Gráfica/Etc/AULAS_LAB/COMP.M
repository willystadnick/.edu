clear all;

A=imread('C:\Lages\Computação Gráfica\Documentação\Aulas LAB\placa1.jpg','jpg');

Ag=rgb2gray(A);

figure;imshow(A)
figure;imshow(Ag)

[lin col prof]=size(A);

dAg=dct2(Ag);

THR=20;
NOZ=0;

%==========		Quantização no Domínio da Frequencia	==============

for i=1:lin
   for j=1:col
      
      if abs(dAg(i,j)) <= THR
         
         dAg(i,j)=0;
         NOZ=NOZ + 1;
         
      end
      
   end
end

NOZ			%	Número de Elementos Quantizados
iq=100*(NOZ/(lin*col))	%	Índice de Quantização

%===========	Cria arquivo compactado (RLE)  ==============


rAg=idct2(dAg);

rAg=uint8(rAg);

figure
imshow(rAg)
