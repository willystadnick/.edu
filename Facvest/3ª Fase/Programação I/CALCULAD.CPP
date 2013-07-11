//programa calculadora
#include<conio.h>
#include<stdio.h>
#include<process.h>

void menu();
void ler();
void somar();
void subtrair();
void multiplicar();
void dividir();
void main();

//variaveis globais
 float n1, n2, res = 0.0;

void menu(){
 char op;
 clrscr();
 gotoxy(30,1); printf("Menu de Opcoes\n\n");
 gotoxy(30,5); printf("1 - Ler valores\n");
 gotoxy(30,7); printf("2 - Somar\n");
 gotoxy(30,9); printf("3 - Subtrair\n");
 gotoxy(30,11); printf("4 - Multiplicar\n");
 gotoxy(30,13); printf("5 - Dividir\n");
 gotoxy(30,15); printf("6 - Sair\n\n");
 gotoxy(30,20); printf("Digite a opcao:");
 op = getch(); /* scanf("%c,&op") */
 switch(op){
  case '1' : ler(); break;
  case '2' : somar(); break;
  case '3' : subtrair(); break;
  case '4' : multiplicar(); break;
  case '5' : dividir(); break;
  case '6' : exit(0); break;
  default : menu();}}

void somar(){
 gotoxy(15,23); clreol();
 res = n1 + n2;
 textcolor(15);
 printf("A soma dos valores n1= %2.2f e n2= %2.2f eh: %2.2f", n1, n2, res);
 getch();
 menu();}

void subtrair(){
 gotoxy(15,23); clreol();
 res = n1 - n2;
 printf("A subtracao dos valores n1= %2.2f e n2= %2.2f eh: %2.2f", n1, n2, res);
 getch();
 menu();}

void multiplicar(){
 gotoxy(15,23); clreol();
 res = n1 * n2;
 printf("A multiplicacao dos valores n1= %2.2f e n2= %2.2f eh: %2.2f", n1, n2, res);
 getch();
 menu();}

void dividir(){
 gotoxy(15,23); clreol();
 res = n1 / n2;
 printf("A divisao dos valores n1= %2.2f e n2= %2.2f eh: %2.2f", n1, n2, res);
 getch();
 menu();}

void ler(){
 gotoxy(5,23); clreol();
 printf("Entre com N1: ");
 scanf("%f",&n1);
 gotoxy(40,23); printf("Entre com N2: ");
 scanf("%f",&n2);
 menu();}

void main(){
 clrscr();
 menu();}