{ Mandelbrot set }
{ Turbo Pascal Source }
{ Adapted by Joao Paulo Schwarz Schuler }

uses dos,crt;

procedure DMG(b:BYTE);
{ define modo de video }
{ define video mode }
VAR R:REGISTERS;
BEGIN
 R.AL:=B;
 R.AH:=0;
 INTR($10,R);
END;

procedure DPIXEL(X,Y:WORD;C:BYTE);
{define pixel}
VAR R:REGISTERS;
BEGIN
 R.AH:=12;
 R.DX:=Y;
 R.CX:=X;
 R.AL:=C;
 r.bx:=0;
 INTR($10,R);
END;

function MSetLevel(cx,cy,maxiter:real):integer;
(*
  Function returning level set of a point
                                         *)
var iter:integer;
    x,y,x2,y2:real;
    temp:real;

begin
X:=0;y:=0;x2:=0;y2:=0;
iter:=0;
while (iter < maxiter) and (x2+y2 < 10000) do begin
      temp:=x2-y2+cx;
      y:=2*x*y+cy;
      x:=temp;
      x2:=x*x;
      y2:=y*y;
      iter:=iter+1
      end;
MSetLevel:=iter;
end;

procedure MSetLSM(NX,NY:integer;XMIN,XMAX,YMIN,YMAX,MAXITER:REAL);
(*
  Mandelbrot set via Level Set Method LSM  of page 188
                                                       *)
var ix,iy:integer;
    cx,cy:real;
begin
for iy:=0 to ny-1 do begin
    cy:=ymin+iy*(ymax-ymin)/(ny-1);
    for ix:=0 to nx-1 do begin
        cx:=xmin+ix*(xmax-xmin)/(nx-1);
        dpixel(ix,iy,MSetLevel(cx,cy,maxiter)+48 );
        end;
    end;
end;


VAR Xi,Xa,Yi,Ya:real;
    modo,b,MAX:byte;
    c:char;
    x,y,i:integer;
    r:registers;
begin
WriteLn('Sugestion: -0.14  0');
Write('Xmin,Xmax(Real Number):');
ReadLn(Xi,Xa);
Writeln('Sugestion: -1  -.9');
write('Ymin,Ymax(Real Number):');
Readln(Yi,Ya);
Writeln('Sugestion: 200');
Write('MAXITER(Natural Number):');
Read(MAX);

writeln;writeln('      All display modes has 256 colors  ');
        writeln('               on VGA board.');
writeln('Try 1 first');
writeln('1 -  320 x 200 with  64000 pixels');
writeln('2 -  640 x 400 with 256000 pixels');
writeln('3 -  640 x 480 with 307200 pixels');
writeln('4 -  800 x 600 with 480000 pixels');
writeln('5 - 1024 x 768 with 768432 pixels');
c:=readkey;

  if c='1' then begin modo:=$13; x:=320;y:=200; end;
  if c='2' then begin modo:=$5c; x:=640;y:=400; end;
  if c='3' then begin modo:=$5d; x:=640;y:=480; end;
  if c='4' then begin modo:=$5e; x:=800;y:=600; end;
  if c='5' then begin modo:=$62; x:=1024; y:=768; end;

(*SVGA/oak      dmg($59);       *)
dmg(modo);
MSetLSM(x,y,Xi,Xa,Yi,Ya,max);
repeat until keypressed;
dmg(2);
end.