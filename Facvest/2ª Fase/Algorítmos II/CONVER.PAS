Program ConverHS_SH;
Uses
    CRT, DOS;
Var
   HI,MI,SI,HF,MF,SF: integer;
   seg1, seg2, segund: Integer;
   Hora, Min, Seg: Integer;
Procedure Cores(CorF, CorT: Byte);
Begin
     Textbackground(CorF);
     Textcolor(CorT);
End;
Procedure Escrevexy(C,L: Byte; Mens: String);
Begin
     Gotoxy(C,L);
     Write(Mens);
End;
Procedure Borda(CI,LI,CF,LF: Byte);
Var
   I: Byte;
Begin
     Escrevexy(CI,LI, 'É');
     Escrevexy(CI,LF, 'È');
     Escrevexy(CF,LI, '»');
     Escrevexy(CF,LF, '¼');
     For I:= CI+1 to CF-1 do
         Begin
              Escrevexy(I,LI, 'Í');
              Escrevexy(I,LF, 'Í');
         End;
     For I:= LI+1 to LF-1 do
         Begin
              Escrevexy(CI,I, 'º');
              Escrevexy(CF,I, 'º');
         End;
End;
Procedure Date;
Const
     Days: Array[0..6] of string[15] = ('Domingo','Segunda-Feira','Ter‡a-Feira',
                                       'Quarta-Feira','Quinta-Feira','Sexta-Feira',
                                       'S bado');
Var
   Y,M,D,Dow: Word;
Begin
     GetDate(Y,M,D,Dow);
     Gotoxy(48,5);
     Writeln('Hoje ‚ ', Days[Dow],',', d:0, '/', m:0, '/', y:0);
End;
Function Segundos(H,M,S: Integer): Integer;
Begin
     Segundos:= H*3600+M*60+S;
End;
Procedure Horas(Segun: Integer);
Var
   A,B: Integer;
Begin
     Hora:= Segun DIV 3600;
     A:= Hora*3600;
     Min:= (Segun-A) DIV 60;
     B:= Min*60;
     Seg:=(Segun-A-B);
End;
Begin {Programa Principal}
      Textbackground(Black);
      CLRSCR;
      Window(1,1,80,25);
      Cores(black,white);
      Borda(2,3,79,23);
      Borda(47,4,78,6);
      Date;
      Escrevexy(40-Length('HORAS TRABALHADAS DO FUNCIONµRIO') DIV 2,2,
                          'HORAS TRABALHADAS DO FUNCIONµRIO');
      Borda(4,8,25,12);
      Escrevexy(9,9,'HORA ENTRADA');
      Escrevexy(5,10,'Hora I');
      Escrevexy(13,10,'Min I');
      Escrevexy(20,10,'Seg I');
      Gotoxy(5,11); Readln(HI);
      Gotoxy(13,11); Readln(MI);
      Gotoxy(21,11); Readln(SI);

      Borda(4,14,25,18);
      Escrevexy(10,15,'HORA SAÖDA');
      Escrevexy(5,16,'Hora F');
      Escrevexy(13,16,'Min F');
      Escrevexy(20,16,'Seg F');
      Gotoxy(5,17); Readln(HF);
      Gotoxy(13,17); Readln(MF);
      Gotoxy(21,17); Readln(SF);

      Seg1:= segundos(HI,MI,SI);
      Seg2:= segundos(HF,MF,SF);
      Segund:= seg2 - seg1;
      Horas(segund);
      Textcolor(white);
      Borda(34,11,55,15);
      Escrevexy(37,12,'HORAS TRABALHADAS');
      Escrevexy(35,13,'Hora T');
      Escrevexy(43,13,'Min T');
      Escrevexy(50,13,'Seg T');
      Gotoxy(35,14); Write(Hora);
      Gotoxy(43,14); Write(Min);
      Gotoxy(51,14); Write(Seg);
      TextColor(white);
      Escrevexy(40-Length('Tecle <enter> para encerrar o Programa...') DIV 2,24,
                          'Tecle <enter> para encerrar o Programa...');
      Readln;
End. {Fim do Programa}