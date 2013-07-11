//Programa LOETERIA

#include<process.h>
#include<conio.h>
#include<stdio.h>
#include<stdlib.h>
#include <time.h>


void sorteio();
void aposta();
void resultado();
int sorteados[13];
int numeros[13];

void menua(){
	     char op;
	     clrscr();
	     printf("1 - GERAR APOSTA\n\n");
	     printf("2 - SAIR DO SISTEMA\n\n");
	     printf("DIGITE SUA OPACO -> ");
	     op=getch();
	     switch(op){
			case '1':aposta();break;
			case '2':exit(0);break;
			default :menua();break;
			}
	     }

void menub(){
	     char op;
	     clrscr();
	     printf("1 - VISUALIZAR RESULTADO\n\n");
	     printf("2 - SAIR DO SISTEMA\n\n");
	     printf("DIGITE SUA OPACO -> ");
	     op=getch();
	     switch(op){
			case '1':resultado();break;
			case '2':exit(0);break;
			default :menub();break;
			}
	     }

void sorteio(){
		int i=0;
		int x,n;

		do{
		   x=random(4);
		   if(x>0){
		     sorteados[i]=x;
		     i++;}
		}while(i<13);
	      }

void aposta(){
	      int naposta,i;
	      clrscr();
	      printf("ENTRE COM OS 13 VALORES DA APOSTA\n\n");
	      for (i=0; i<13; i++){
		  scanf("%i",&naposta);
		  numeros[i]=naposta;}
	      menub();
	      }

void resultado(){
		 int k,j,acertos;
		 j=0;
		 for(k=0; k<13; k++)
		  if((numeros[k] != sorteados[k]) !=0){
		      j=j+1;}
		 acertos=13-j;
		 clrscr();
		 printf("\n\nTOTAL DE ACERTOS=%i NUMEROS DO TOTAL DE 13",acertos);
		 getch();
		 sorteio();
		 menua();
		 }


void main(){
	     char op;
	     sorteio();
	     clrscr();
	     do{
		menua();
	     }while(op!='3');
	   }