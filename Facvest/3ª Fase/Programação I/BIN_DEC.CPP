//Conversao de Binario para decimal...

#include <iostream.h>
#include <conio.h>
#include <stdio.h>
#include <math.h>
#include <string.h>

int Converte(char);

void main()
{
  char hex[20];
  int  aux=0,tam,exp=0,dec=0;

  clrscr();
  printf("\nEntre com um n£mero em binario: ");
  gets(hex);

  tam = strlen(hex);

  while(tam && aux!=-1)
  {

	  if( (aux = Converte(hex[--tam]))==-1 )
	      break;

	  dec += aux*pow(2,exp++);
  }

  if ( aux!=-1 )
     printf("Numero decimal: %d ",dec);
  else
     printf("O Numero Entrado Nao eh Binario!");
  getch();
}

int Converte(char a)
{
	int ret;

	if (a>47  && a<50)
		return a-'0';
	return -1;
}