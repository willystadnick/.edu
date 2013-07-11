program conver;
uses
 crt,
 dos;
var
 hi,mi, si, hf, mf, sf, seg1, seg2, segund, hora, min, seg : integer;
procedure cores(corF, corT : byte);
begin
 textbackground(corF);
 textcolor(corT);
end;
procedure escrevexy(c, l : byte; msg : string);
begin
 gotoxy(c,l);
 write(msg);
end;
procedure borda(ci, li, cf, lf : byte);
var
 i : byte;
begin
 clrscr;
 escrevexy(ci, li, 'É');
 escrevexy(ci, lf, 'È');
 escrevexy(cf, li, '»');
 escrevexy(cf, lf, '¼');
 for i := 1 to (cf - 1) do
  begin
   escrevexy(i, li, 'Í');
   escrevexy(i, lf, 'Í');
  end;
 for i := 1 to (lf - 1) do
  begin
   escrevexy(ci, i, 'º');
   escrevexy(cf, i, 'º');
  end;
end;
procedure data;
const
 days : array[0..6] of string[15]=('Domingo','Segunda','Ter‡a','Quarta','Quinta','Sexta','S bado');
var
 y, m, d, dow : word;
begin
 getdate(y, m, d, dow);
 gotoxy(48, 5);
 writeln('Hoje ‚ ', days[dow], ', ', d:0, '/', m:0, '/', y:0);
end;
function segundos(h, m, s : integer) : integer;
 begin
  segundos := h * 3600 + m * 60 + s;
 end;
procedure horas(segun : integer);
var
 a, b : integer;
begin
 hora := segun div 3600;
 a := hora + 3600;
 min := (segun - a) div 60;
 b := min * 60;
 seg := (segund - a - b);
end;
begin
 clrscr;
 window(1, 1, 80, 25);
 cores(7,1);
 borda(2, 2, 79, 24);
 data;
 escrevexy(40 - length('Horas Trabalhadas do Funcion rio') div 2, 1, 'Horas Trabalhadas do Funcion rio');

 escrevexy(5, 9, 'Hora Entrada');
 escrevexy(5, 10, 'Hora I');
 escrevexy(13, 10, 'Min I');
 escrevexy(21, 10, 'Seg I');
 gotoxy(5, 11); readln(hi);
 gotoxy(13, 11); readln(mi);
 gotoxy(21, 11); readln(si);

 escrevexy(5, 15, 'Hora Sa¡da');
 escrevexy(5, 16, 'Hora F');
 escrevexy(13, 16, 'Min F');
 escrevexy(21, 16, 'Seg F');
 gotoxy(5, 17); readln(hf);
 gotoxy(13, 17); readln(mf);
 gotoxy(21, 17); readln(sf);

 seg1 := segundos(hi, mi, si);
 seg2 := segundos(hf, mf, sf);

 segund := seg1 - seg2;

 horas(segund);

 textcolor(yellow);
  escrevexy(35, 12, 'Horas Trabalhadas');
  escrevexy(35, 13, 'Hora T');
  escrevexy(43, 13, 'Min T');
  escrevexy(51, 13, 'Seg T');
  gotoxy(35, 14); write(hora);
  gotoxy(43, 14); write(min);
  gotoxy(51, 14); write(seg);

 textcolor(1);
  escrevexy(40 - length('Tecle ®ENTER¯ para encerrar o programa') div 2, 25, 'Tecle ®ENTER¯ para encerrar o programa');
  readln;
end.


