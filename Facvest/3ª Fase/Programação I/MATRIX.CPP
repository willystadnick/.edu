//tabela ascii

#include<conio.h>
#include<stdio.h>
#include<dos.h>

void codigo()
{
 int i,j,k;
 i = 1; j = 2; k = 3;
 do
 {
  gotoxy(1,i); printf("%c", i);
  gotoxy(2,j); printf("%x", i);
  gotoxy(3,k); printf("%d", i);
  i++; j++; k++;
 }while(i < 20);
}

void main()
{
 sound(500);
 delay(1000);
 nosound();
 getch();
}