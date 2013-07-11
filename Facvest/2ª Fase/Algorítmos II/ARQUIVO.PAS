program vetor_arquivo;
uses crt;
var
 a : array [1..10] of integer;
 i, num : integer;
 arq : file of integer;
begin
 clrscr;
 assign(arq{nome l¢gico},'arqui.xxx'{nome f°sico});
 rewrite(arq);{cria e limpa o arquivo}
 for i := 1 to 10 do
  begin
   write('Digite o ', i, ' elemento : ');
   readln(a[i]);
   write(arq, a[i]);
  end;
 close(arq);
 reset(arq);{abre o arquivo para leitura ou escrita}
 clrscr;
 while not eof(arq) do{enquanto n∆o chegar no fim do arquivo}
  begin
   read(arq, num);
   write(num, ' ');
  end;
 close(arq);
 gotoxy(25,24);
 write('Tecle algo para encerrar...');
 readln;
end.