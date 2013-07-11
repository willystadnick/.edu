program arquivo_vetor;
uses crt;
var
 b : array [1..10] of integer;
 i, num : integer;
 arq : file of integer;
begin
 clrscr;
 assign(arq{nome l¢gico},'arqui.xxx'{nome f¡sico});
 reset(arq);{abre o arquivo}
 i := 1;
 while not eof(arq) do
  begin
   read(arq, b[i]);
   inc(i);
  end;
 close(arq);
 {apresentar os elementos do vetor b}
 clrscr;
 for i := 1 to 10 do
  write(b[i], ' ');
 delay(5000);
end.