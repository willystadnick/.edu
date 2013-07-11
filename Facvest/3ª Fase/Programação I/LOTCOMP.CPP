//Programa de loto

#include <conio.h>
#include <stdio.h>
#include <process.h>
#include <stdlib.h>
#include <dos.h>
#include <ctype.h>

//Declaracao Variaveis globais

int gabarit[13];
int apostas[13];
int cartao=0;
int i=0;
//void menu();
//------------------------------Void Gabarito-------------------------------
void gabarito()
{
	int x;
	clrscr();
	do{
		x=random (4);
		if (x>0)
		{
			gabarit[i]=x;
			i++;
		}
	}while(i<13);
	gotoxy(30,5);
	for (i=0; i<13; i++)
	{
		delay(100);
		printf("*");
	}
	gotoxy(30,7);
	printf("Gabarito concluido com sucesso!");
	getch();
  //	menu();
}
//------------------------------Fim Void Gabarito---------------------------

//------------------------------Void Aposta---------------------------------
void aposta()
{
	char op='S';
	do
	{
		clrscr();
		printf("Digite o numero do seu cartao: ");
		scanf("%d",& cartao);
		for(i=0; i<13; i++)
		{
			printf("Digite o %d § da aposta: ",(i+1));
			scanf("%d",& apostas[i]);
		}
		clrscr();
		printf("Digitos do cartao %d que foram apostados:",cartao);
		for(i=0; i<13; i++)
		{
			gotoxy(((i+1)*3),5);
			printf("%d",apostas[i]);
		}
		gotoxy(24,25);
		printf("Deseja fazer nova aposta?(S/N): ");
		op=toupper(getch());
	}while(op=='S');
//	menu();
}
//------------------------------Fim Void Aposta-----------------------------

//------------------------------Void Analiza--------------------------------
void analiza()
{
	int cont=0;
	clrscr();
	for(i=0; i<13; i++)
	{
		if (gabarit[i]==apostas[i])
			cont++;
	}
	if (cont==13)
		printf("O cartao %d foi premiado com 13 acertos.",cartao);
	else
		printf("O cartao %d teve %d acerto(s), nao avendo ganhador.",cartao,cont);
	getch();
}
//------------------------------Fim Void Analiza----------------------------

//------------------------------Void Menu-----------------------------------
void main()
{
	gabarito();
	aposta();
	analiza();
}