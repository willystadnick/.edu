#include <conio.h>
#include <stdio.h>
#include <iostream.h>
#include <ctype.h>
#include <process.h>
#include <string.h>
#include <stdlib.h>

struct dados{
  char nome[20];
  char endereco[10];
  int idade;} cliente; //cliente do tipo dados

// cliente poderia ser declarada aqui como dados cliente
// em c todo comando leva f na frente por ser file

FILE *fcliente;

void menu();

void linha(int x){
 int i = 0;
 gotoxy(1,x);
 for(i=0; i<=79; i++)
  printf("Í");}

void center(char texto[70], int y){
 gotoxy(40 - strlen(texto) / 2, y);
 printf(texto);}

void criar(){
  if ((fcliente = fopen("clientes.dat","a")) == NULL){
    clrscr();
    linha(1);
    linha(3);
    center("Erro de Cria‡Æo de Arquivo", 2);
    return;}
  fclose(fcliente);}

// fcliente ‚ o nome l¢gico e clientes.dat ‚ o nome f¡sico

void cadastrar(){
  char op;
  int tamanho;
  clrscr();
  linha(1);
  linha(3);
  center("Cadastro",2);
  fcliente = fopen("clientes.dat","r+");
  rewind (fcliente);// rewind aponta para a primeira posi‡Æo
  do{
    fread(& cliente, sizeof(cliente),1,fcliente);
    tamanho++;}
  while (!feof(fcliente));
  fseek(fcliente,sizeof(cliente), tamanho);
  // fseek aponta para a posi‡Æo tamanho do arquivo cliente
  do {
    gotoxy(3,5); clreol(); cout<<"Nome do Cliente: ";
    cin>>cliente.nome;

  /*
	 gets lˆ apenas string que ‚ um conjunto de char
	 getch lˆ apenas um caractere ambos nƒo mostram no v¡deo o que foi digitado,
	 getche grava um caracter e mostra no v¡deo
  */
	 gotoxy(3,6); clreol(); cout<<"Endere‡o do Cliente: ";
	 cin>>cliente.endereco;
	 gotoxy(3,7); clreol(); cout<<"Idade do Cliente: ";
	 cin>>cliente.idade;

	 // comandos de entrada em c++ sÆo substitu¡dos por cin<<
	 // comandos de sa¡da sÆo substitu¡dos por cout<<

	 tamanho = tamanho + fwrite(& cliente, sizeof(cliente),1,fcliente);
	 linha(22);
	 linha(24);
	 center("Deseja Cadastrar Novamente <S/N>", 23);
	 cin>>"op";
	 op = toupper(op);}
  while (op == 'N');
fclose(fcliente);
linha(22);
linha(24);
center("Pressione Alguma Tecla para Voltar ao Menu Principal",23);
getch();
menu();}

void listar(){
  char op;
  clrscr();
  linha(1);
  linha(3);
  center("Listagem",2);
  fcliente = fopen("clientes.dat","r");
  rewind(fcliente);
  do{
	 fread(&cliente, sizeof(cliente),1,fcliente);
	 gotoxy(3,6); clreol(); cout<<"Cliente:  "<<cliente.nome;
	 gotoxy(3,7); clreol(); cout<<"Endere‡o: "<<cliente.endereco;
	 gotoxy(3,8); clreol(); cout<<"Idade:    "<<cliente.idade;
	 linha(22);
	 linha(24);
	 center("<P> para Ver o Pr¢ximo Cadastro :: <M> para Voltar ao Menu Principal",23);
	 op = getch();
	 op = toupper(op);}
  while(!feof(fcliente) || (op == 'M'));
  fclose(fcliente);
  linha(22);
  linha(24);
  gotoxy(1,23); clreol();
  center("Pressione Alguma Tecla para Voltar ao Menu Principal",23);
  getch();
  menu();}

void menu(){
  char op;
  clrscr();
  linha(1);
  linha(3);
  center("Menu Principal",2);
  gotoxy(30,5); cout<<"1 ... Cadastro";
  gotoxy(30,7); cout<<"2 ... Listar";
  gotoxy(30,9); cout<<"3 ... Fim do Programa";
  linha(22);
  linha(24);
  center("Escolha a Op‡Æo: ", 23);
  cin>>op;
  switch (op){
    case '1': cadastrar(); break;
    case '2': listar(); break;
    case '3': exit(0); break;
    default : menu();}}

void main(){
  clrscr;
  criar();
  menu();}
