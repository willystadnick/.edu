//Loteria Esportiva
#include<conio.h>
#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>

//Variaveis Globais
int gab[13];
int aposta[13];
int naposta;

void gabarito(){
 int x=0;
 int i=0;
 clrscr();
 randomize();
 do{
  x=random(4);
  if(x>0){
   gab[i]=x;
   i++;}}while(i<13);
 gotoxy(15,30); printf("Gabarito gerado com sucesso, tecle algo para apostar...");
 getch();}

void apostar(){
 clrscr();
 gotoxy(10,3); printf("Entre com o n§ da aposta: ");
 scanf("%d", & naposta);
 for(int i=0; i<13; i++){
  do{
   gotoxy(10,i+5); clreol(); printf("Digite a [%d]¦ aposta: ", i+1);
   scanf("%d",&aposta[i]);}while((aposta[i]<1) || (aposta[i]>3));}}

void comparar(){
 int acertos=0;
 for(int i=0; i<13; i++){
  if(gab[i]==aposta[i])
   acertos++;}
  if(acertos==13){
   gotoxy(15,24); printf("Voce acertou 13 pontos\n");}
  else
   gotoxy(15,24); printf("Voce obteve %d acertos", acertos);
  getch();
  for( i=0; i<13; i++){
   gotoxy(10, 5+i); clreol(); printf("resultado[%d] : %d", i+1, gab[i]);
   gotoxy(40, 5+i); clreol(); printf("sua aposta[%d] : %d", i+1, aposta[i]);}}

void main(){
 clrscr();
 char op;
 do{
  gabarito();
  apostar();
  comparar();
  gotoxy(15,24); clreol(); printf("Deseja apostar novamente? <S/N> ");
  op=getch(); op=toupper(op);}while(op!='N');}