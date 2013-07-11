clear all;

A=imread('c:\Lages\Imagem2.jpg','jpg');

figure;imshow(A)

[lin col prof]=size(A);

R=A(:,:,1);
G=A(:,:,2);
B=A(:,:,3);

R=double(R);
G=double(G);
B=double(B);

Y=zeros(lin,col);
U=zeros(lin,col);
V=zeros(lin,col);

Y = 0.299*R + 0.587*G + 0.114*B;
U = -0.169*R - 0.332*G + 0.5*B + 128;
V = 0.5*R - 0.419*G - 0.0813*B + 128;

Y=uint8(Y);
U=uint8(U);
V=uint8(V);

dY=zeros(lin,col);
dU=zeros(lin,col);
dV=zeros(lin,col);

dY=dct2(Y);
dU=dct2(U);
dV=dct2(V);

Ayuv(:,:,1)=Y;
Ayuv(:,:,2)=U;
Ayuv(:,:,3)=V;

figure;
imshow(Ayuv);

1

pause;

dAg=dct2(Ag);

THR=20;
NOZ=0;

%==========		Quantização no Domínio da Frequencia	==============

for k=1:prof
for i=1:lin
   for j=1:col
      
      if abs(dY(i,j)) <= THR
         
         dAg(i,j,k)=0;
         NOZ=NOZ + 1;
         
      end
      
      if abs(dU(i,j)) <= THR
         
         dAg(i,j,k)=0;
         NOZ=NOZ + 1;
         
      end

      
   end
end
end

NOZ			%	Número de Elementos Quantizados
iq=100*(NOZ/(lin*col))	%	Índice de Quantização

rAg=idct2(dAg);
rAg=uint8(rAg);

figure
imshow(rAg)
