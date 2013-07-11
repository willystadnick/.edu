//introdu‡Æo … arquivo

#include <conio.h>
#include <stdio.h>
#include <iostream.h>
#include <ctype.h>
#include <stdlib.h>


struct dados{
 char nome[20];
 char end[10];
 int idade;}cliente;

//j  est  criado o registro

FILE *fcliente;

void criar_arq(){
 if ((fcliente /* nome l¢gico */ = fopen("clientes.dat" /* nome f¡sico */ , "a")) == NULL){
  clrscr();
  printf("Erro na cria‡Æo de arquivo");
  return;}
 fclose(fcliente);}

void cadastrar(){
 int tamanho=0;
 char op;
 fcliente = fopen("clientes.dat", "r+");
 rewind(fcliente);
 do{
  fread(&cliente, sizeof(cliente), 1, fcliente);
  tamanho++;}while(!feof(fcliente));
  fseek(fcliente, sizeof(cliente), tamanho);
  do{
   printf("\n Digite o nome do cliente: ");
   gets(cliente.nome);
   printf("\n Digite o endere‡o do cliente: ");
   gets(cliente.end);
   printf("\n Digite a idade do cliente: ");
   scanf("%d", &cliente.idade);
   tamanho = tamanho + fwrite(&cliente, sizeof(struct dados), 1, fcliente);
   printf("\n Continuar Cadastrando? <S/N> ");
   cin>>op;
   op = toupper(op);}while(op == 'S');
  fclose(fcliente);}

void listar(){
 fcliente = fopen("clientes.dat", "r+");
 rewind(fcliente);
 do{
  fread(&cliente, sizeof(cliente), 1, fcliente);
   cout<<"cliente: "<<cliente.nome;
   cout<<"endere‡o: "<<cliente.end;
   cout<<"idade: "<<cliente.idade;
   getch();}while(!feof(fcliente));
  fclose(fcliente);}


void main(){
 char op;

  clrscr();
  cout<<"menu de op‡äes \n";
  cout<<"1 - cadastrar \n";
  cout<<"2 - listar \n";
  cout<<"3 - sair \n";
  cout<<"digite uma op‡Æo: ";
  cin>>op;
  switch(op){
   case '1' : cadastrar(); break;
   case '2' : listar(); break;
   case '3' : exit(0); break;
   default : main();}}





/*

getche -> pega o valor digitado e mostra ao usu rio
getch  -> pega o valor digitado, nÆo mostrando ao usu rio
gets   -> pega uma sequencia de caracteres
chups  -> pega no meu pinto e degusta um boquete

*/