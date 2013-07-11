//Programa Apostas

#include<conio.h>
#include<stdio.h>
#include<process.h>
#include<stdlib.h>
#include<dos.h>


void ler();


//Variaveis globais

int gabarito[13];
int sorteio[13];
int aposta[13];


void sorteio(){

     int i=0,x;
     do{ x=random (4);
	 if (x>0){
	 gabarito[i]=x;
	 i++;}
	 }while(i<13);
     for (i=0; i<13; i++){
	 printf("%d\n", gabarito[i]);}
	 getch();}

void aposta(){
     int cartao;
     clrscr();
     printf("Insira o numero do cartÆo...: ");
     scanf("%d", & cartao);
     for (i=0; i<13){
	 printf("Digite o %d§ valor: ");
	 scanf("%d", aposta[i]);}





void main(){
     clrscr();
     sorteio();}
