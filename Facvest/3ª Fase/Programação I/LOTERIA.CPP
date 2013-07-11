//Programa de loto

#include <conio.h>
#include <stdio.h>
#include <process.h>
#include <stdlib.h>
#include <dos.h>

//Declaracao Variaveis globais

int gabarit[13];
int apostas[13];
int cartao=0;
int i=0;

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
}

void aposta()
{
	int l=5;
	textbackground(BLACK);
	clrscr();
	window(5,3,75,22);
	textbackground(RED);
	clrscr();
	for(i=0; i<22; i++){
	   gotoxy(2,i+1);
	   printf("Í");}
	gotoxy(5,3);
	printf("Digite o numero do seu cartao: ");
	scanf("%d",& cartao);


	for(i=0; i<13; i++)
	{
		gotoxy(5,l);
		l=l+1;
		printf("Digite o %d § da aposta: ",(i+1));
		scanf("%d",& apostas[i]);
	}
	window(5,3,75,22);
	textbackground(RED);
	clrscr();
	printf("Digitos do cartao %d que foram apostados:",cartao);
	for(i=0; i<13; i++)
	{
		gotoxy(((i+1)*3),5);
		printf("%d",apostas[i]);
	}
	getch();
}
void main()
{
	aposta();
}