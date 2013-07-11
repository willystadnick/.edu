//converter para binario.

#include<conio.h>
#include<stdio.h>
#include<stdlib.h>
#include<process.h>
#include<dos.h>


int decimal;
void entrada();

//---Void Binario---
void binario()
{
	div_t conv;
	int quociente=decimal;
	int i=0;
	clrscr();
	do{
		conv=div(quociente,2);
		quociente=conv.quot;
		gotoxy(20-i,10);
		printf("%d",conv.rem);
		i++;
	}while(conv.quot!=1);
	gotoxy(20-i,10);
	printf("%d",conv.quot);
	gotoxy(22,10);
	printf("Valor binario para %d",decimal);
	delay(1000);
	getch();
	entrada();
}
//---Fim Void Binario---

//---Void Hexa---
void hexa()
{
	clrscr();
	printf("\n %x ‚ o valor em hexa do numero %d decimal",decimal,decimal);
	getch();
	entrada();
}
//---Fim Void Hexa---

//---Void Octa---
void octa()
{
	clrscr();
	printf("\n %o ‚ o valor octal do numero %d decimal",decimal,decimal);
	getch();
	entrada();
}
//---Fim Void Octa---

//---Void Entrada---
void entrada()
{
	char op;

	clrscr();
	printf("Entre com o valor inteiro p/ conversao:\n\n");
	scanf("%d",& decimal);
	printf("\n\n Escolha para qual base deseja converter:");
	printf("\n 1 - Binario\n");
	printf("\n 2 - Hexadecimal\n");
	printf("\n 3 - Octal\n");
	printf("\n 4 - Sair\n");
	op=getch();
	switch(op)
	{
		case '1': binario(); break;
		case '2': hexa(); break;
		case '3': octa(); break;
		case '4': exit(0); break;
		default : entrada();
	}
}
//---Fim Void Entrada---

//---Programa Principla---
void main()
{
	clrscr();
	entrada();
}
//---Fim Programa Principla---