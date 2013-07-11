program trabalho_14_05;
uses crt;
type
 vetor10 = array[1..10] of integer;
 vetor20 = array[1..20] of integer;
var
 a, b : vetor10;
 c : vetor20;
 aux : integer;
 i, j, col, multiplicador, contA, contB : byte;
procedure ler(var x : vetor10; col : byte);
 begin
  case col of
   1 : multiplicador := 1;
   2 : multiplicador := 12
   else multiplicador := 1;
  end;
  gotoxy(25,3); write('LEITURA DE VETOR');
  for i := 1 to 10 do
   begin
    gotoxy(3 * multiplicador,i + 5);
    write('Entre com o ', i, '§ n£mero : ');
    readln(x[i]);
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
procedure mostrar_resultado;
 begin
  for i := 1 to 20 do
   begin
    gotoxy(i * 3,20);
    write(c[i]);
   end;
 end;
begin
 clrscr;
 gotoxy(23,1); write('TRABALHO DE ALGORITMOS II');
 ler(a,1);
 ler(b,2);
 ordenar(a);
 ordenar(b);
 contA := 1;
 contB := 1;
 for i := 1 to 20 do
  if ( a[contA] < b[contB] )
   then
    begin
     c[i] := a[contA];
     contA := contA + 1;
     if contA > 10
      then
       begin
        a[10] := 99 * 99;
        contA := 10;
       end;
    end
   else
    begin
     c[i] := b[contB];
     contB := contB + 1;
     if contB > 10
      then
       begin
        b[10] := 99 * 99;
        contB := 10;
       end;
    end;
 mostrar_resultado;
 gotoxy(20,24); write('tecle <enter> para encerrar o programa');
 readln;
end.