//Conversao de Bases e tabela ascii


#include <conio.h>
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <process.h>
#include <string.h>
#include <math.h>


//Alunos: Juliano Prestes
//        Raimyson Felix
//        Roger Fernandes Coan
//        Willy Stadnick

//---Declaracoes Forward
void tela();
void tela_menu();
void tabela();
void info();
void conversao();
void menu();
void dechexa();
void decoctal();
void decbinario();
void entrada();

//---Declaracao de variaveis globais
int decimal;
char op;
int  Converte(char);

//---Void Menu
void menu()
{
	clrscr();
	tela_menu();
	gotoxy(13,10);
	printf(" 1 - INFORMACOES SOBRE O CODIGO ASCII");
	gotoxy(13,12);
	printf(" 2 - MOSTRAR A TABELA DE EQUIVALENTES DEC-ASCII-HEXA");
	gotoxy(13,14);
	printf(" 3 - CONVERSAO ENTRE BASES");
	gotoxy(13,16);
	printf(" 4 - SAIR DO SISTEMA \n");
	gotoxy(14,18);
	printf("SUA OPCAO -> ");
	op = getch();
	switch (op)
	{
		case '1' : info();break;
		case '2' : tabela();break;
		case '3' : conversao();break;
		case '4' : exit(0);break;
		default  : menu();
	}
}
//---Fim Void Menu

//---Void Info
void info()
{
	clrscr();
	tela_menu();
	gotoxy(28,5);
	printf("O que ‚ o C¢digo ASCII ?");
	gotoxy(3,7);
	printf("ASCII ‚ por definicao um c¢digo de padrÆo americano para o intercambio");
	gotoxy(3,8);
	printf("de informacoes. Os computadores podem compreender somente numeros,assim");
	gotoxy(3,9);
	printf("um c¢digo ASCII e a representacao num‚rica de um caracter como por exemplo");
	gotoxy(3,10);
	printf("'a' ou '@' ou uma a‡Æo de alguma natureza.");
	gotoxy(3,12);
	printf("O conjunto b sico do ASCII usa 7 bits para cada caracter, dando-lhe um");
	gotoxy(3,13);
	printf("total de 128 caracateres adicionais. Os caracteres extras adicionais");
	gotoxy(3,14);
	printf("representam caracteres das linguas estrangeiras e tambem possuem");
	gotoxy(3,15);
	printf("s¡mbolos especiais para desenhar figuras.");
	gotoxy(3,16);
	printf("Um texto com caracteres ASCII ‚ dito como um texto sem formata‡Æo.");
	gotoxy(3,17);
	printf("O Bloco de Notas que est  presente no Windows ‚ um exemplo de software");
	gotoxy(3,18);
	printf("que salva textos no formato ASCII, ou seja, sem formata‡Æo.");
	gotoxy(12,23);
	printf("Pressione qualquer tecla para retornar ao menu principal");
	getch();
	menu();

}
//---Fim Void Info

//---Void Tela Menu
void tela_menu()
{
	int i,x,y;
	x=1;
	y=1;


	gotoxy(x,y);
	printf("É");
	gotoxy(1,24);
	printf("È");
	gotoxy(78,24);
	printf("¼");
	gotoxy(78,1);
	printf("»");
	gotoxy(32,2);
	printf("  CONVERSAO  ");

	for(i=2;i<78;i++)
	{
		gotoxy(i,1);
		printf("Í");
		gotoxy(i,24);
		printf("Í");
		gotoxy(i,3);
		printf("Í");
	}
	//Barra laterais e miolo
	for (i=2;i<24;i++)
	{
		gotoxy(1,i);
		printf("º");
		gotoxy(78,i);
		printf("º");
	}
	//barra titulo
	gotoxy(1,3);
	printf("Ì");
	gotoxy(78,3);
	printf("¹");
	gotoxy(2,3);

}
//---Fim Void Tela Menu

//---Void Tela
void tela()
{
	int i,x,y;
	x=1;
	y=1;

	//cantos da tela
	gotoxy(x,y);
	printf("É");
	gotoxy(1,24);
	printf("È");
	gotoxy(78,24);
	printf("¼");
	gotoxy(78,1);
	printf("»");

	//titulo do programa
	gotoxy(33,2);
	printf("TABELA ASCII");

	//Barras superior e inferior
	for(i=2;i<78;i++)
	{
		gotoxy(i,1);
		printf("Í");
		gotoxy(i,24);
		printf("Í");
	}
	//Barra laterais e miolo
	for (i=2;i<24;i++)
	{
		gotoxy(1,i);
		printf("º");
		gotoxy(78,i);
		printf("º");
		gotoxy(40,i+1);
		printf("º");
	}
	//barra titulo
	gotoxy(1,3);
	printf("Ì");
	gotoxy(78,3);
	printf("¹");
	gotoxy(40,24);
	printf("Ê");
	gotoxy(2,3);

	for(i=2;i<78;i++)
	{
		gotoxy(i,3);
		printf("Í");
	}

	for(i=2;i<14;i++)
	{
		gotoxy(i,5);
		printf("Í");
	}

	for(i=14;i<28;i++)
	{
		gotoxy(i,5);
		printf("Í");
	}

	for(i=29;i<53;i++)
	{
		gotoxy(i,5);
		printf("Í");
	}

	for(i=54;i<79;i++)
	{
		gotoxy(i,5);
		printf("Í");
	}

	for (i=4;i<24;i++)
	{
		gotoxy(13,i);
		printf("º");
		gotoxy(28,i);
		printf("º");
		gotoxy(53,i);
		pr ntf("º");
		gotoxy(66,i);
		printf("º");
	}

	gotoxy(40,3);
	printf("Ë");
	gotoxy(13,3);
	printf("Ë");
	gotoxy(28,3);
	printf("Ë");
	gotoxy(53,3);
	printf("Ë");
	gotoxy(66,3);
	printf("Ë");
	gotoxy(13,24);
	printf("Ê");
	gotoxy(28,24);
	printf("Ê");
	gotoxy(53,24);
	printf("Ê");
	gotoxy(66,24);
	printf("Ê");
	gotoxy(1,5);
	printf("Ì");
	gotoxy(13,5);
	printf("Î");
	gotoxy(28,5);
	printf("Î");
	gotoxy(40,5);
	printf("Î");
	gotoxy(53,5);
	printf("Î");
	gotoxy(66,5);
	printf("Î");
	gotoxy(78,5);
	printf("¹");
	gotoxy(4,4);
	printf("Decimal");
	gotoxy(16,4);
	printf("Ref. ASCII");
	gotoxy(29,4);
	printf("Hexadecimal");
	gotoxy(43,4);
	printf("Decimal");
	gotoxy(55,4);
	printf("Ref. ASCII");
	gotoxy(67,4);
	printf("Hexadecimal");
}
//---Fim Void Tela

//---Void Tabela
void tabela()
{
	int i,x,y;
	clrscr();
	tela();
	x=7;
	y=6;
	for (i=0;i< 18; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+9;
		gotoxy(x+4,y);
		printf("%x",i);
		y=y++;
		x=7;
	}
	y=6;
	x=45;
	for (i=18;i<36; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+13;
		gotoxy(x,y);
		printf("%x",i);
		y=y++;
		x=45;
	}
	gotoxy(69,2);
	printf("Pag 01/08");
	gotoxy(20,25);
	printf("Pressione qualquer tecla para continuar");
	getch();
	x=7;
	y=6;
	clrscr();
	tela();
	for (i=35;i< 53; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+9;
		gotoxy(x+4,y);
		printf("%x",i);
		y=y++;
		x=7;
	}
	y=6;
	x=45;
	for (i=53;i<71; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+13;
		gotoxy(x,y);
		printf("%x",i);
		y=y++;
		x=45;
	}
	gotoxy(69,2);
	printf("Pag 02/08");
	gotoxy(20,25);
	printf("Pressione qualquer tecla para continuar");
	getch();
	x=7;
	y=6;
	clrscr();
	tela();
	for (i=71;i< 89; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+9;
		gotoxy(x+4,y);
		printf("%x",i);
		y=y++;
		x=7;
	}
	y=6;
	x=45;
	for (i=89;i<107; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+13;
		gotoxy(x,y);
		printf("%x",i);
		y=y++;
		x=45;
	}
	gotoxy(69,2);
	printf("Pag 03/08");
	gotoxy(20,25);
	printf("Pressione qualquer tecla para continuar");
	getch();
	x=7;
	y=6;
	clrscr();
	tela();
	for (i=106;i< 124; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+9;
		gotoxy(x+4,y);
		printf("%x",i);
		y=y++;
		x=7;
	}
	y=6;
	x=45;
	for (i=124;i<142 ; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+13;
		gotoxy(x,y);
		printf("%x",i);
		y=y++;
		x=45;
	}
	gotoxy(69,2);
	printf("Pag 04/08");
	gotoxy(20,25);
	printf("Pressione qualquer tecla para continuar");
	getch();
	x=7;
	y=6;
	clrscr();
	tela();
	for (i=142;i< 160; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+9;
		gotoxy(x+4,y);
		printf("%x",i);
		y=y++;
		x=7;
	}
	y=6;
	x=45;
	for (i=160;i<178; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+13;
		gotoxy(x,y);
		printf("%x",i);
		y=y++;
		x=45;
	}
	gotoxy(69,2);
	printf("Pag 05/08");
	gotoxy(20,25);
	printf("Pressione qualquer tecla para continuar");
	getch();
	x=7;
	y=6;
	clrscr();
	tela();
	for (i=177;i<195 ; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+9;
		gotoxy(x+4,y);
		printf("%x",i);
		y=y++;
		x=7;
	}
	y=6;
	x=45;
	for (i=195;i<213; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+13;
		gotoxy(x,y);
		printf("%x",i);
		y=y++;
		x=45;
	}
	gotoxy(69,2);
	printf("Pag 06/08");
	gotoxy(20,25);
	printf("Pressione qualquer tecla para continuar");
	getch();
	x=7;
	y=6;
	clrscr();
	tela();
	for (i=213;i< 231; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+9;
		gotoxy(x+4,y);
		printf("%x",i);
		y=y++;
		x=7;
	}
	y=6;
	x=45;
	for (i=231;i<249; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+13;
		gotoxy(x,y);
		printf("%x",i);
		y=y++;
		x=45;
	}
	gotoxy(69,2);
	printf("Pag 07/08");
	gotoxy(20,25);
	printf("Pressione qualquer tecla para continuar");
	getch();
	x=7;
	y=6;
	clrscr();
	tela();
	for (i=249;i< 256; i++)
	{
		gotoxy(x,y);
		printf("%d",i);
		x=x+14;
		gotoxy(x,y);
		printf("%c",i);
		x=x+9;
		gotoxy(x+4,y);
		printf("%x",i);
		y=y++;
		x=7;
	}
	gotoxy(69,2);
	printf("Pag 08/08");
	gotoxy(20,25);
	printf("Pressione qualquer tecla para continuar");
	getch();
	menu();
}
//---Fim Void Tabela

//---Void Conversao
void conversao()
{
	clrscr();
	tela_menu();
	gotoxy(18,4);
	printf("ESCOLHA A BASE DESEJADA PARA CONVERCAO");
	gotoxy(20,6);
	printf("1 - DECIMAL -> BINARIO  ");
	gotoxy(20,8);
	printf("2 - DECIMAL -> HEXADECIMAL");
	gotoxy(20,10);
	printf("3 - DECIMAL -> OCTAL");
	gotoxy(20,12);
	printf("4 - BINARIO -> DECIMAL");
	gotoxy(20,14);
	printf("5 - HEXADECIMAL -> DECIMAL");
	gotoxy(20,16);
	printf("6 - OCTAL -> DECIMAL");
	gotoxy(20,18);
	printf("7 - VOLTAR AO MENU PRINCIPAL");
	op=getch();
	switch(op)
	{
		case '1': decbinario();break;
		case '2': dechexa();break;
		case '3': decoctal();break;
		case '4': decbinario();break;
		case '5': dechexa();break;
		case '6': decoctal();break;
		case '7': menu();break;
		default : conversao();
	}
}
//---Fim Void Conversao

//---Void DecBinario
void decbinario()
{
	char bin[20];
	int  aux=0,tam=0,exp=0,dec=0;
	int i=0;
	if(op=='1')
	{
		clrscr();
		tela_menu();
		gotoxy(18,6);
		printf("ENTRE COM O VALOR DECIMAL PARA CONVERSAO ->");
		scanf("%d",&decimal);
		div_t conv;
		int quociente=decimal;
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
		printf("e o valor binario para o numero %d decimal",decimal,decimal);
		getch();
	}
	if(op=='4')
	{
		clrscr();
		tela_menu();
		gotoxy(14,6);
		printf("ENTRE COM O VALOR BINARIO PARA CONVERSAO ->");
		gets(bin);

		tam = strlen(bin);

		while(tam && aux!=-1)
		{

			if( (aux = Converte(bin[--tam]))==-1 )
				break;

			dec += aux*pow(2,exp++);
		}

		if ( aux!=-1 )
		{
			gotoxy(16,10);
			printf("%d",dec);
			gotoxy(22,10);
			printf("e o valor decimal para o numero ");
			puts(bin);

		}
		else
		{
			gotoxy(22,10);
			printf("O Numero Entrado Nao e Binario!");
		}

		getch();


	}
	menu();
}
//---Fim Void DecBinario

//---Void DecHexa
void dechexa(){
	clrscr();
	tela_menu();
	gotoxy(20,10);
	if(op=='2')
	{
		clrscr();
		tela_menu();
		gotoxy(18,6);
		printf("ENTRE COM O VALOR DECIMAL PARA CONVERSAO ->");
		scanf("%d",&decimal);
		gotoxy(20,10);
		printf("%x ‚ o valor em hexa do numero %d decimal",decimal,decimal);
	}
	if(op=='5')
	{
		clrscr();
		tela_menu();
		gotoxy(18,6);
		printf("ENTRE COM O VALOR HEXADECIMAL PARA CONVERSAO ->");
		scanf("%x",&decimal);
		gotoxy(18,8);
		printf("%d ‚ o valor decimal do numero %x hexadecimal",decimal,decimal);
	}
	getch();
	menu();
}
//---Fim Void DecHexa

//---Void Decoctal
void decoctal()
{
	clrscr();
	tela_menu();
	gotoxy(13,10);
	if(op=='3')
	{
		clrscr();
		tela_menu();
		gotoxy(18,6);
		printf("ENTRE COM O VALOR DECIMAL PARA CONVERSAO ->");
		scanf("%d",&decimal);
		gotoxy(20,10);
		printf("%o ‚ o valor octal do numero %d decimal",decimal,decimal);
	}
	if(op=='6')
	{
		clrscr();
		tela_menu();
		gotoxy(18,6);
		printf("ENTRE COM O VALOR OCTAL PARA CONVERSAO ->");
		scanf("%o",&decimal);
		gotoxy(20,10);
		printf("%d ‚ o valor decimal do numero %o octal",decimal,decimal);
	}
	getch();
	menu();
}
//---Fim Void Decoctal

//---Programa Principal
void main()
{
	textbackground(1);
	menu();
}
//---Fim Programa Principal

//---Declaracao para o Converte
int Converte(char a)
{
	if (a>47  && a<50)
		return a-'0';
	return -1;
}
//---Fim Declaracao para o Converte
