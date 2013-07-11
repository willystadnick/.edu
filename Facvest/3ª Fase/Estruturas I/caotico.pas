{ TURBO PASCAL SOURCE        }
{  JOAO PAULO SCHWARZ SCHULER  }
program caos;
uses dos,crt;

type TCaos = object      { class that generate CHAOTIC NUMBERS }
                         { classe que gera numeros caoticos }
               private
                 L:extended; { Lambda }
                 T:extended; { valor / value }

               public
                 procedure SetValues(PLAMBDA,PT:extended);
                 { set Lambda value and initial T value }
                 { seta valores iniciais para Lambda e T }
                 function Get:extended;
                 { get next value / devolve proximo valor }
                 function GetCentered:extended;
                 { devolve proximo valor com atrator no centro}

             end; { of object declaration }


procedure TCaos.SetValues(PLAMBDA,PT:extended);
{set Lambda value}
begin
L:=PLAMBDA;
T:=PT;
end;

function TCaos.Get:extended;
{ get next value / devolve proximo valor }
begin
{T:=L*T*(1-T);}
T:=abs(sin(L*T*(1-T)));
{T:=abs(sin(L*T*cos(T)));}

Get:=T;
end;

function TCaos.GetCentered:extended;
{ get next value / devolve proximo valor }
begin
GetCentered:=(Get+(1-Get))/2;
end;

procedure SETPALREG(COR:WORD;re,g,b:byte);
{set color registers}
VAR R:REGISTERS;
BEGIN
 R.AL:=$10;
 R.AH:=$10;
 R.BX:=COR;
 R.DH:=RE;
 R.CH:=G;
 R.CL:=B;
 INTR($10,R);
END;

procedure GETPALREG(COR:WORD;VAR re,g,b:byte);
VAR R:REGISTERS;
BEGIN
 R.AL:=$15;
 R.AH:=$10;
 R.BX:=COR;
 INTR($10,R);
 RE:=R.DH;
 G:=R.CH;
 B:=R.CL;
END;

procedure DMG(b:BYTE);
VAR R:REGISTERS;
BEGIN
 R.AL:=B;
 R.AH:=0;
 INTR($10,R);
END;

type TVIDEO = array[0..199,0..319] of byte;
type TVIDEOPtr = ^TVideo;

var RVIDEO: TVIDEO absolute $a000:0000;
procedure CLS;
var X,Y:integer;
begin
for X:=0 to 319 do
    for Y:=0 to 199 do
        RVIDEO[Y,X]:=0;
end;


var E,I:integer;
    C1,C2:TCaos;
    X,Y:word;
    C:char;
begin
DMG($13);
for I:=0 to 63 do SetPalReg(I,0,0,I);
for I:=0 to 63 do SetPalReg(64+I,0,I,63);
for I:=0 to 63 do SetPalReg(128+I,I,63,63);
for I:=0 to 63 do SetPalReg(192+I,63-I,63-I,63-I);

C1.SetValues(1000000,0.2);

repeat
        X:=Round(C1.GetCentered*319);
        Y:=Round(C1.GetCentered*199);
        inc(RVIDEO[Y,X]);
until keypressed;

DMG($2);
end.