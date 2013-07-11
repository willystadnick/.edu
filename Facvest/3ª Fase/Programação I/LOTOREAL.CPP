//Loteria Esportiva

#include<conio.h>
#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include<dos.h>


//Variaveis Globais

int gab[13];
int aposta[13];
int naposta;

//Procedimentos (Void)

void gabarito()
{
	 int x=0;
	 int i=0;
	 randomize();
	 do{
	   x=random(4);
	   if (x>0){
		  gab[i]=x;
		  i++;}}while(i<13);
	 gotoxy(25,3);
	 printf("Gabarito gerado com sucesso...");
	 gotoxy(35,5);
	 for (i=1; i<13; i++){
	     printf("*");
	     delay(200);}
	 gotoxy(25,7);
	 printf("Pressione qualquer tecla para continuar...");
	 getch();
}

void apostar()
{
	 clrscr();
	 int n=4;
	 gotoxy(10,3);
	 printf("Entre com o n§ do cartao de aposta: ");
	 scanf("%d",& naposta);
	 for (int i=0; i<13; i++){
		 do{
			gotoxy(10,n+1);
			printf("Digite o valor da %d§ aposta: ",i+1);
			scanf("%d",& aposta[i]);} while((aposta[i]<1)||(aposta[i]>3));}
}

void comparar()
{
	 int acertos=0;
	 for (int i=0; i<13; i++){
		 gotoxy(10,10+i); printf("gab[%d]:%d",i+1,gab[i]);
		 gotoxy(30,10+i); printf("aposta[%d]:%d",i+1,aposta[i]);
		 if(gab[i]==aposta[i])
		 if(acertos==13)
			 printf("Parabens! Vc acertou 13 pontos...\n");
		 else
			 printf("Vc obteve %d acertos",acertos);
		 getch;}
}

void main()
{
	 clrscr();
	 char op;
	 do{
		gabarito();
		apostar();
		comparar();
		printf("Deseja apostar novamente?(S/N): ");
		op=getch();
		op=toupper(op);}while(op!='N');
}




