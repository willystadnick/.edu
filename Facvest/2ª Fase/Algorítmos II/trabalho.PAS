program juncao_ordenada;
uses crt;
type
 vetor10 = array[1..10] of integer;
 vetor20 = array[1..20] of integer;
var
 a, b, : vetor10;
 c : vetor20;
 aux : integer;
 i, j : byte;
procedure ler(var x : vetor10);
 begin
  for i := 1 to 10 do
   begin
    gotoxy(3,3 + i); write('entre com o ', i, 'º número : '); readln(x[i]);
   end;
 end;
procedure ordenar(var x : vetor10);
 begin
  for i:=1 to 9 do
   for j:=(i+1) to 10 do
    if (x[i] > x[j]) then
      begin
       aux := x[i];
       x[i] := x[j];
       x[j] := aux;
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