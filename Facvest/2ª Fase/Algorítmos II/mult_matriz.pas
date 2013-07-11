program multiplica_matriz;
uses crt;
var
 a,
 b,
 c : array[1..10,1..10] of real;
 i,
 j,
 k,
 lin_a,
 col_a,
 lin_b,
 col_b : byte;
 continua : string[3];
begin
 clrscr;
 writeln('MULTIPLICADOR DE MATRIZES');
 continua := 's';
 write('Digite o n£mero de linhas da 1¶ matriz (M†ximo 10): ');
 readln(lin_a);
 write('Digite o n£mero de colunas da 1¶ matriz (M†ximo 10): ');
 readln(col_a);
 write('Digite o n£mero de linhas da 2¶ matriz (M†ximo 10): ');
 readln(lin_b);
 write('Digite o n£mero de colunas da 2¶ matriz (M†ximo 10): ');
 readln(col_b);
 if (lin_a > 10) or (col_a > 10) or (lin_b > 10) or (col_b > 10) or (col_a <> lin_b)
  then
   begin
    continua := 'n';
    writeln('N∆o Ç possivel prosseguir com a execuá∆o do programa');
    writeln('Verifique se vocà n∆o excedeu o limite de uma das matrizes [10x10]');
    writeln('Lembre-se que para multiplicar as matrizes, o n£mero de colunas');
    writeln('da 1¶ matriz deve ser igual ao n£mero de linhas da 2¶ matriz');
   end;
 while continua = 's' do
  begin
   for i := 1 to lin_a do
    for j := 1 to col_a do
     begin
      write('Digite o n£mero da posiá∆o ', i, j, ' da 1¶ matriz: ');
      readln(a[i,j]);
     end;
   for i := 1 to lin_b do
    for j := 1 to col_b do
     begin
      write('Digite o n£mero da posiá∆o ', i, j, ' da 2¶ matriz: ');
      readln(a[i,j]);
     end;
   for i := 1 to 10 do
    for j := 1 to 10 do
     c[i,j] := 0;
   for i := 1 to col_a do
    for j := 1 to lin_b do
     for k := 1 to col_a do
      c[i,j] := c[i,j] + (a[i,k] * b[k,j]);
   writeln;
   writeln('Elementos da Matriz Produto "C"');
   writeln('===============================');
   writeln;
   for i := 1 to lin_a do
    for j := 1 to col_b do
     begin
      writeln('C', i, j, ': ', c[i,j]:5:2);
      writeln('Pressione qualquer tecla para continuar...');
      readkey;
     end;
   continua := 'n';
  end;
  write('Pressione qualquer tecla para sair...');
  readkey;
end.

