//tabela ascii

#include<conio.h>
#include<stdio.h>

void coluna_um()
{
 int i = 0;
 int linha = 2;
 gotoxy(1,1); printf("CHAR");
 gotoxy(7,1); printf("HEXA");
 gotoxy(14,1); printf("DEC");
 do
 {
  gotoxy(2,linha); printf("%c", i);
  gotoxy(7,linha); printf("%x", i);
  gotoxy(14,linha); printf("%d", i);
  i++;
  linha++;
 }while(i < 22);
}

void coluna_dois()
{
 int i = 22;
 int linha = 2;
 gotoxy(18,1); printf("CHAR");
 gotoxy(24,1); printf("HEXA");
 gotoxy(31,1); printf("DEC");
 do
 {
  gotoxy(18,linha); printf("%c", i);
  gotoxy(24,linha); printf("%x", i);
  gotoxy(31,linha); printf("%d", i);
  i++;
  linha++;
 }while(i < 44);
}

void coluna_tres()
{
 int i = 44;
 int linha = 2;
 gotoxy(35,1); printf("CHAR");
 gotoxy(41,1); printf("HEXA");
 gotoxy(49,1); printf("DEC");
 do
 {
  gotoxy(35,linha); printf("%c", i);
  gotoxy(41,linha); printf("%x", i);
  gotoxy(49,linha); printf("%d", i);
  i++;
  linha++;
 }while(i < 66);
}

void coluna_quatro()
{
 int i = 66;
 int linha = 2;
 gotoxy(53,1); printf("CHAR");
 gotoxy(59,1); printf("HEXA");
 gotoxy(66,1); printf("DEC");
 do
 {
  gotoxy(53,linha); printf("%c", i);
  gotoxy(59,linha); printf("%x", i);
  gotoxy(66,linha); printf("%d", i);
  i++;
  linha++;
 }while(i < 88);
}

void main()
{
 clrscr();
 coluna_um();
 coluna_dois();
 coluna_tres();
 coluna_quatro();
 getch();
}