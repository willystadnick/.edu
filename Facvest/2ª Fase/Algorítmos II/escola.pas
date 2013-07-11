program escola;
uses crt;
type
 bimestre = array[1..3] of real;
 cad_aluno = record
   nota : bimestre;
   nome,
   mensagem : string;
   media : real
  end;
var
 cont,
 i,
 j : byte;
 soma_med,
 aux : real;
 resp : char;
 aluno : array[1..2] of cad_aluno;
begin
 clrscr;
 cont := 1;
 soma_med := 0;
 repeat
   write('Digite o nome do Aluno: ');
   readln(aluno[cont].nome);
   for i := 1 to 3 do
    begin
     write('Digite a ', i, '¦ nota: ');
     readln(aluno[cont].nota[i]);
    end;
   for i := 1 to 2 do
    for j := (i+1) to 3 do
     begin
      if (aluno[cont].nota[j] > aluno[cont].nota[i])
       then
        begin
         aux := aluno[cont].nota[j];
         aluno[cont].nota[j] := aluno[cont].nota[i];
         aluno[cont].nota[i] := aux;
        end;
     end;
   aluno[cont].media := (aluno[cont].nota[1] + aluno[cont].nota[2]) / 2;
   if (aluno[cont].media >= 6)
    then
     aluno[cont].mensagem := 'Aprovado'
    else
     aluno[cont].mensagem := 'Reprovado';
   soma_med := soma_med + aluno[cont].media;
   write('Deseja incluir as notas de um novo aluno? (S/N) ');
   readln(resp);
   resp := upcase(resp);
   cont := cont + 1;
  until (resp<>'S')
end.
