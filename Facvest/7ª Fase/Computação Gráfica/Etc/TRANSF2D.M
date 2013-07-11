
clear all;

ImQ=[1 1 0 0 1;0 1 1 0 0;1 1 1 1 1];
ImQf=[3.9401 7.5593 3.6192 0 3.9401;3.6192 7.1974 3.5782 0 3.6192;1.0 1.0 1.0 1.0 1.0];
ImS=[2 -2 -1 -2 2;0 2 0 -2 0;1 1 1 1 1];

%---------------------------------------------------------------------
TETA=10*pi/180;
R=[cos(TETA) -sin(TETA) 0;sin(TETA) cos(TETA) 0;0 0 1];

sx=0.9;   sy=0.9;
S=[sx 0 0;0 sy 0;0 0 1];

dx=5;		dy=2;
T=[1 0  dx;0 1 dy;0 0 1];

dxm=-5;		dym=-2;
Tm=[1 0 dxm;0 1 dym;0 0 1];

a=0.1;
SHx=[1 a 0;0 1 0;0 0 1];

b=0.1;
SHy=[1 0 0;b 1 0;0 0 1];
%---------------------------------------------------------------------

Ntr=20;
vv=10;

Im=ImS;
G=T*S*Tm;
%G=S;

[A,N]=size(Im);

xIm=zeros(1,N);
yIm=zeros(1,N);

%Im=Rx*Im;
Im=T*Im;

figure

for i=1:Ntr
   
   Im=G*Im;
   
   for c=1:N
	   xIm(c)=Im(1,c);
	   yIm(c)=Im(2,c);
   end
   
   plot(xIm,yIm);
   fill(xIm,yIm,'b');
   axis([-vv vv -vv vv]);
   grid
       
   pause(0.5);

end

