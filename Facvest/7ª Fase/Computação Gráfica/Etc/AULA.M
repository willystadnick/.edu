
clear all;

Im=[2 0 0 2 1 0 0 1;0 1 -1 0 0 1 -1 0;0 0 0 0 2 0 0 2;1 1 1 1 1 1 1 1];

[a,N]=size(Im);

%--------------------------
TETAz=5*pi/180;
TETAy=-10*pi/180;
TETAx=-15*pi/180;
Rz=[cos(TETAz) -sin(TETAz) 0 0;sin(TETAz) cos(TETAz) 0 0;0 0 1 0;0 0 0 1];
Ry=[cos(TETAy) 0 sin(TETAy) 0;0 1 0 0;-sin(TETAy) 0 cos(TETAy) 0;0 0 0 1];
Rx=[1 0 0 0;0 cos(TETAx) -sin(TETAx) 0;0 sin(TETAx) cos(TETAx) 0;0 0 0 1];
%--------------------------
sx=0.96;   sy=0.96;   sz=0.96;
S=[sx 0 0 0;0 sy 0 0;0 0 sz 0;0 0 0 1];
%--------------------------
dx1=0;		dy1=-10;		dz1=0;
T1=[1 0 0 dx1;0 1 0 dy1;0 0 1 dz1;0 0 0 1];

dx2=0;		dy2=0;		dz2=0;
T2=[1 0 0 dx2;0 1 0 dy2;0 0 1 dz2;0 0 0 1];
%--------------------------

Im=T2*Im;

figure

Ntr=72;
vv=5;

xIm=zeros(1,N);
yIm=zeros(1,N);
zIm=zeros(1,N);

for i=1:Ntr
   
   Im=Ry*Im;
   
   for c=1:N
	   xIm(c)=Im(1,c);
   	yIm(c)=Im(2,c);
   	zIm(c)=Im(2,c);
   end
   
   plot3(xIm,yIm,zIm);
   view(-30,15);
   axis([-vv vv -vv vv -vv vv]);
   grid
       
   pause(0.5);

end

