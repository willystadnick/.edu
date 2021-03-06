PROGRAM LES;


USES CRT,DOS;


TYPE
    FORMA = RECORD
            PRODUTO:STRING[20];
            LIG    :INTEGER;
    END;

CONST
 MAX=100;

VAR
   LP         : ARRAY[1..MAX] OF FORMA;
   PRIM,DISPO : INTEGER;

{-----------------------------------------------------------------}

PROCEDURE MENU;FORWARD;
PROCEDURE SAIR;FORWARD;

PROCEDURE TELA;

VAR
I  :INTEGER;
BEGIN

FOR I:=1 TO 78 DO
BEGIN
     GOTOXY(I+1,1);
     WRITELN('�');
     GOTOXY(I+1,3);
     WRITELN('�');
     GOTOXY(I+1,22);
     WRITELN('�');
     GOTOXY(I+1,24);
     WRITELN('�');
END;

FOR I:=1 TO 22 DO
BEGIN
   GOTOXY(1,I+1);
   WRITELN('�');
   GOTOXY(79,I+1);
   WRITELN('�');
END;

GOTOXY(1,1);
WRITELN('�');
GOTOXY(79,1);
WRITELN('�');
GOTOXY(1,24);
WRITELN('�');
GOTOXY(79,24);
WRITELN('�');
GOTOXY(1,3);
WRITELN('�');
GOTOXY(79,3);
WRITELN('�');
GOTOXY(1,22);
WRITELN('�');
GOTOXY(79,22);
WRITELN('�');

END;

PROCEDURE CENTER(TEXTO:STRING;Y:INTEGER);

BEGIN
   GOTOXY(40-(LENGTH(TEXTO) DIV 2),Y);
   WRITELN(TEXTO);
END;


PROCEDURE CRIA_LISTA;

VAR

   I    :INTEGER;
   OP   :CHAR;

BEGIN
   CLRSCR;
   TELA;
   PRIM:=1;
   I:=1;
   CENTER('_.|._ CADASTRO DE ELEMENTOS NA LISTA _.|._ ',2);
   REPEAT
     BEGIN
         CLRSCR;
         TELA;
         CENTER('ENRTE COM O PRODUTO DA LISTA ->',10);
         GOTOXY(25,12);
         READLN(LP[I].PRODUTO);
         LP[I].LIG:=I+1;
         CENTER('DESEJA CADASTRAR MAIS UM ELEMENTO ? S OU N',15);
         READLN(OP);
         OP:=UPCASE(OP);
         IF OP='S' THEN
            I:=I+1
         ELSE
            LP[I].LIG:=0;
     END;
     UNTIL OP='N';
        LP[I].LIG:=0;
MENU;
END;

PROCEDURE QTDELEMENTOS;

VAR
I           :INTEGER;
TOTAL       :INTEGER;

BEGIN
  I:=PRIM;
  TOTAL:=0;
  IF PRIM<>0 THEN
    BEGIN
       WHILE LP[I].LIG <> 0 DO
         BEGIN
           TOTAL:=TOTAL+1;
           I:=LP[I].LIG;
         END;
       TOTAL:=TOTAL+1;
       GOTOXY(20,20);
       WRITELN(TOTAL);
       READKEY;
    END
    ELSE
     BEGIN
      CLRSCR;
      TELA;
      CENTER('QUANTIDADE DE ELEMENTOS',2);
      CENTER('LISTA VAZIA',10);
      TEXTCOLOR(WHITE+BLINK);
      CENTER('PRESSIONE QUALQUER TECLA PARA CONTINUAR',23);
      READKEY;
      TEXTCOLOR(WHITE);
     END;
MENU;
END;

PROCEDURE PRIMEIRO_ELEMENTO;

BEGIN
  IF PRIM<>0 THEN
     BEGIN
       CLRSCR;
       CENTER('PRIMEIRO ELEMENTO DA LISTA',2);
       CENTER('O 1� ELEMENTO DA LISTA �:',20);
       CENTER(LP[PRIM].PRODUTO,20);
       TEXTCOLOR(WHITE+BLINK);
       CENTER('PRESSIONE QUALQUER TECLA PARA CONTINUAR',23);
       READKEY;
     END;
MENU;
END;


PROCEDURE ULTIMO_ELEMENTO;

VAR
  I     :INTEGER;

BEGIN
  I:=PRIM;
  IF PRIM <> 0 THEN
    BEGIN
       WHILE I <> 0 DO
          BEGIN
             I:=LP[I].LIG;
             IF LP[I].LIG=0 THEN
                BEGIN
                    CLRSCR;
                    TELA;
                    CENTER('_.|._ O ULTIMO ELEMENTO DA LISTA _.|._',2);
                    CENTER('O �LTIMO ELEMENTO DA LISTA �:',10);
                    CENTER(LP[I].PRODUTO,12);
                    TEXTCOLOR(WHITE+BLINK);
                    CENTER('PRESSIONE QUALQUER TECLA PARA VOLTAR AO MENU',23);
                    TEXTCOLOR(WHITE);
                    READKEY;
             END;
          END;
    END
    ELSE
      BEGIN
        CLRSCR;
        TELA;
        TEXTCOLOR(WHITE+BLINK);
        CENTER('LISTA VAZIA',10);
        CENTER('PRESSIONE QUALQUER TECLA PARA CONTINUAR',23);
        TEXTCOLOR(WHITE);
        READKEY;
     END;
END;



PROCEDURE MENU;

VAR

OP      :BYTE;


BEGIN
  CLRSCR;
  TELA;
  CENTER('_.|._ LISTA ESTATICA SEQUENCIAL _.|._',2);
  CENTER('/-------------  M E N U ---------------\',5);
  CENTER('1 - CADASTRAR ELEMENTOS NA LISTA',8);
  CENTER('2 - QUANTIDADE DE ELEMENTOS NA LISTA',10);
  CENTER('3 - 1� ELEMENTO DA LISTA',12);
  CENTER('4 - ULTIMO ELEMENTO DA LISTA',14);
  CENTER('5 - INSERIR ELEMENTO NA LISTA',16);
  CENTER('6 - SAIR DO SISTEMA',18);
  TEXTCOLOR(WHITE+BLINK);
  CENTER('SELECIONE A OPCAO DESEJADA',23);
  TEXTCOLOR(WHITE);
  GOTOXY(40,20);
  READLN(OP);
  CASE OP OF
          1: CRIA_LISTA;
          2: QTDELEMENTOS;
          3: PRIMEIRO_ELEMENTO;
          4: ULTIMO_ELEMENTO;
          6: SAIR;
  END;
END;

PROCEDURE SAIR;

BEGIN
   CLRSCR;
   TEXTCOLOR(WHITE);
   TELA;
   CENTER('DESENVOLVIDO POR: JULIANO PRESTES',12);
   TEXTCOLOR(WHITE+BLINK);
   CENTER('PRESSIONE QUALQUER TECLA PRA SAIR DO SISTEMA',23);
   TEXTCOLOR(WHITE);
   READKEY;
END;



{-----------------------------------------------------------------}
BEGIN

MENU;

END.