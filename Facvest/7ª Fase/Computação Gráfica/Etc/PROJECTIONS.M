
clear all;
close all;

Im1=[-2 -2 -1 -1 0 1  4 1 0 -1 -1 -2 -2 -2 0;0 1 1 2 2 1 0 -1 -2 -2 -1 -1 0 0 0;0 0 0 0 0 0 0 0 0 0 0 0 0 1 0;1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
Im2=[-2 -2 -1 -1 0 1  4 1 0 -1 -1 -2 -2 -2 -1 1;0 1 1 2 2 1 0 -1 -2 -2 -1 -1 0 0 0 0;0 0 0 0 0 0 0 0 0 0 0 0 0 1.5 1 0;1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];

%------------------------------------------------------
TETAz=20*pi/180;
TETAy=-10*pi/180;
TETAx=15*pi/180;
Rz=[cos(TETAz) -sin(TETAz) 0 0;sin(TETAz) cos(TETAz) 0 0;0 0 1 0;0 0 0 1];
Ry=[cos(TETAy) 0 sin(TETAy) 0;0 1 0 0;-sin(TETAy) 0 cos(TETAy) 0;0 0 0 1];
Rx=[1 0 0 0;0 cos(TETAx) -sin(TETAx) 0;0 sin(TETAx) cos(TETAx) 0;0 0 0 1];

sx=0.96;   sy=0.96;   sz=0.96;
S=[sx 0 0 0;0 sy 0 0;0 0 sz 0;0 0 0 1];

dx1=0;		dy1=0;		dz1=17;
T1=[1 0 0 dx1;0 1 0 dy1;0 0 1 dz1;0 0 0 1];

dx2=0;		dy2=0;		dz2=3;
T2=[1 0 0 dx2;0 1 0 dy2;0 0 1 dz2;0 0 0 1];
%------------------------------------------------------

Ntr=72;
vv=5;
d=5;

G=T1*Ry*inv(T1);
Im=Im2;

Im=T2*Im;
Im=Rx*Im;

[A,N]=size(Im);

xIm=zeros(1,N);
yIm=zeros(1,N);
zIm=zeros(1,N);

%------------------------------------------------------

figure

for i=1:Ntr
   
   Im=G*Im;
   
   for c=1:N
	   xp(c)=Im(1,c)/((Im(3,c)/d)+1);
   	yp(c)=Im(2,c)/((Im(3,c)/d)+1);
   end
   
   plot(xp,yp);
   fill(xp,yp,'r');
   xlabel('X');ylabel('Y');   
	axis([-vv vv -vv vv]);
   grid
       
   pause(0.5);

end

