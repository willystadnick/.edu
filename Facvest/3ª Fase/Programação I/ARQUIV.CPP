/*construa um programa que leia os clientes da gremio-tur cada cliente
 devera ter as seguintes informacoes: nome, idade, salario base, valor
 em compras.

 O sistema ira permitir  cadastro e a consulta dos clientes por nome
  e idade ou listar todos.
  */

#include<conio.h>
#include<stdio.h>
#include<stdlib.h>
#include<iostream.h>
#include<ctype.h>
#include<io.h>
#include<string.h>
#include<dos.h>

struct dados
       {
       char nome[20];
       char ende[10];
       int idade; }cliente;

       FILE *fcliente;

void cria_arq(){
	 if((fcliente/* L¢gico */ =fopen("clientes.dat"/* fisico */,"a"))==NULL){
	clrscr();
	printf("Erro de cria‡ao de arquivo");
	return;
	  }
	 fclose(fcliente);
}


void cadastra()
{
  clrscr();
  int op;
  int tamanho=0;
  fcliente = fopen("clientes.dat","r+");
  rewind(fcliente);
  do{
  fread(&cliente,sizeof(cliente),1,fcliente);
  tamanho++;} while (!feof(fcliente));

  fseek(fcliente,sizeof(cliente),tamanho);
  do
  {
     clrscr();
     printf("\nDigite o nome do cliente....:");
     gets(cliente.nome);
     printf("Digite o endere‡o...........:");
     gets(cliente.ende);
     printf("Digite a idade..............:");
     scanf("d", &cliente.idade);

     tamanho=tamanho+fwrite(&cliente,sizeof(struct dados),1,fcliente);
     printf("\nContinuar cadastrando <s> ou <n> :");
     cin>>op;
     op = toupper(op);} while (op=='S');
     fclose(fcliente);
}

void consulta()
{
     clrscr();
     fcliente=fopen("cliente.dat","r+");
     fseek(fcliente,sizeof(struct dados),0);

     while(fread(&cliente,sizeof(cliente),1,fcliente)==1)
      {
	 clrscr();
	 printf("Nome:        %s\n",cliente.nome);
	 printf("Endere‡o:    %s\n",cliente.ende);
	 printf("Idade:       %d\n",cliente.idade);
	 printf("\nDigite enter para continuar...\n");
	 getch();
      }
     printf("fim do arquivo");
     fclose(fcliente);
     getch();
}

void listar()
{
     clrscr();
     fcliente=fopen("cliente.dat","r+");
     rewind(fcliente);

     do{
	fread(&cliente,sizeof(cliente),1,fcliente);

	 cout<<"Nome.....: \n"<<cliente.nome;
	 cout<<"Endere‡o.: \n"<<cliente.ende;
	 cout<<"Idade....: \n"<<cliente.idade;
	 getch();
      } while (!feof(fcliente));
     printf("fim do arquivo");
     fclose(fcliente);
     getch();
}

void menu()
{
  clrscr();
  int opc;
  printf("Menu de opcoes");
  printf("\n");
  printf("1 - Cadastrar\n");
  printf("2 - Consulta\n");
  printf("3 - Listar\n");
  printf("4 - Sair\n");
  printf("Digite uma opcao\n");
  cin>>opc;
  switch(opc)
  {
  case 1:cadastra();break;
  case 2:consulta();break;
  case 3:listar();break;
  case 4:exit(0);
  }
}



void main()
{
clrscr();
int op;
cria_arq();
  do
  {
  menu();
  }
  while (op!=8);
}
