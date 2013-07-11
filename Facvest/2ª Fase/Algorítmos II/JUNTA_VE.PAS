program vetor_juncao;
uses crt;
type vetor = array[1..20] of integer;
var
 a, b, c : vetor;
 i, col : byte;
procedure ler(var x : vetor);
 begin
  for i := 1 to 10 do
   begin
    gotoxy(3,3+i); write('entre com o valor de x[', i, '] : ');
    readln(x[i]);
   end;
 end;
procedure juntar(var x, y, jun : vetor);
 begin
  for i := 1 to 20 do
   begin
    jun[i] := x[i];
    jun[10 + i] := y[i];
   end;
 end;
procedure mostrar(x : vetor);
 begin
  for i := 1 to 10 do
   begin
    gotoxy(3,i + 1); write(x[i], ' ');
   end;
 end;
begin
 clrscr;
 gotoxy(23,1); write('jun‡Æo do vetor a e b');
 ler(a);
 ler(b);
 juntar(a, b, c);
 mostrar(c);
 gotoxy(20,24); write('tecle <enter> para encerrar o programa');
 readln;
end.