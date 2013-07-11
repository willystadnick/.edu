program escola;
uses crt;
var
 soma_med,
 nota1,
 nota2,
 nota3,
 media,
 media_classe : real;
 nome,
 mensagem : string[20];
 resp : char;
 cont : byte;
begin
 clrscr;
 soma_med := 0;
 repeat
  clrscr;
  write('Digite o nome do Aluno: ');
  readln(nome);
  write('Digite a 1¦ nota: ');
  readln(nota1);
  write('Digite a 2¦ nota: ');
  readln(nota2);
  write('Digite a 3¦ nota: ');
  readln(nota3);
  if (nota1 = nota2) and (nota1 = nota3)
   then media := nota1;
  if (nota1 = nota2)
   then
    if (nota1 > nota3)
     then media := nota1
     else media := (nota3 + nota1) / 2;
  if (nota1 = nota3)
   then
    if (nota1 > nota2)
     then media := nota1
     else media := (nota2 + nota1) / 2;
  if (nota2 = nota3)
   then
    if (nota2 > nota1)
     then media := nota2
     else media := (nota1 + nota2) / 2;
  if (nota1 > nota2) and (nota1 > nota3)
   then
    if (nota2 > nota3)
     then media := (nota1 + nota2) / 2
     else media := (nota1 + nota3) / 2;
  if (nota2 > nota1) and (nota2 > nota3)
   then
    if (nota1 > nota3)
     then media := (nota2 + nota1) / 2
     else media := (nota2 + nota3) / 2;
  if (nota3 > nota1) and (nota3 > nota2)
   then
    if (nota1 > nota2)
     then media := (nota3 + nota1) / 2
     else media := (nota3 + nota2) / 2;
  if (media >= 6)
   then mensagem := 'Aprovado'
   else mensagem := 'Reprovado';
  soma_med := soma_med + media;
  cont := cont + 1;
  media_classe := soma_med / cont;
  gotoxy(1,6);
  write('Nome do Aluno');
  gotoxy(15,6);
  write('Nota 1');
  gotoxy(25,6);
  write('Nota 2');
  gotoxy(35,6);
  write('Nota 3');
  gotoxy(45,6);
  write('M‚dia');
  gotoxy(55,6);
  write('Mensagem');
  gotoxy(1,7);
  write(nome);
  gotoxy(15,7);
  write(nota1:5:2);
  gotoxy(25,7);
  write(nota2:5:2);
  gotoxy(35,7);
  write(nota3:5:2);
  gotoxy(45,7);
  write(media:5:2);
  gotoxy(55,7);
  write(mensagem);
  gotoxy(1,9);
  write('A m‚dia da classe por enquanto ‚: ', media_classe:5:2);
  gotoxy(1,11);
  write('Deseja calcular as notas de um novo aluno? (S/N) ');
  readln(resp);
  resp := upcase(resp);
 until (resp<>'S');
 clrscr;
 gotoxy(39,10);
 write('FUI');
 delay(2000);
end.
