Program Ordena_Vetor;
Uses CRT;
Var
   Vetor: Array[1..10] of integer;
   i,j: integer;
   tecla: char;
{Rotina Ordena‡Æo}
Procedure Ordena (Var A,B: Integer);
Var
   x: integer;
Begin
   if (A > B) then
      Begin
           X:=A;
           A:=B;
           B:=X;
      End;
End;
      Begin {Programa Principal}
         CLRSCR;
         Gotoxy(23,1);
         Write('Programa ordena‡Æo do vetor');
         {Entrada de dados}
         For i:=1 to 10 do
             Begin
                  Gotoxy(5,i+2);
                  Write('Digite um valor para Vetor[',i,']:');
                  Readln(Vetor[i]);
             End;
         Gotoxy(25,24);
         Write('Tecle algo para continuar...');
         Tecla:=Readkey;
         {Ordena‡Æo dos dados}
         For i:=1 to 9 do
             For j:=(i+1) to 10 do
                 Ordena(Vetor[i],Vetor[j]);
                 {Saida de dados}
                 For i:=1 to 10 do
                     Begin
                          Gotoxy(46,i+2);
                          Write('Agora vetor[',i,'] vale: ',Vetor[i]);
                     End;
                 Gotoxy(22,24);
                 Writeln('Tecle algo para encerrar o programa');
                 Tecla:=Readkey;
End.
