/*construa um programa que leia os clientes da gremio-tur cada cliente
 devera ter as seguintes informacoes: nome, idade, salario base, valor
 em compras.

 O sistema ira permitir  cadastro e a cxonsulta dos clientes por nome
  e idade ou listar todos.
  */

#include<conio.h>
#include<stdio.h>
#include<stdlib.h>
#include<iostream.h>
#include<ctype.h>
#include<io.h>


struct dados
       {
       char nome[20];
       int idade;
       float sbase;
       float vcompras;
       }cliente;
       FILE *fp;
       char op;
       int tam,opc;


void cria_arq()
{
     if ((fp = fopen("clientes.dat","a"))==NULL)
     {
	printf("Erro de criacao do arquivo");
	return;
     }
     fclose(fp);
}

void cadastra()
{
  clrscr();

  int tamanho=0;
  fp = fopen("clientes.dat","r+");
  rewind(fp);
  do{
  fread(&cliente,sizeof(cliente),1,fp);
  tamanho++;}
  while (!feof(fp));
  fseek(fp,sizeof(cliente),tamanho);
  do
  {
     printf("\nDigite o nome do cliente:");
     cin>>cliente.nome;
     printf("Digite a idade:");
     cin>>cliente.idade;
     printf("Digite o salario base:");
     cin>>cliente.sbase;
     printf("Digite o valor da compra:");
     cin>>cliente.vcompras;
     tamanho=tamanho+fwrite(&cliente,sizeof(struct dados),1,fp);
     printf("\nContinuar cadastrando<s> ou <n>:");
     cin>>op;
     op = toupper(op);
     }while (op=='S');
     fclose(fp);
}

void consulta()
{
     clrscr();
     fp=fopen("clientes.dat","r+");
     fseek(fp,sizeof(struct dados),0);

     while(fread(&cliente,sizeof(cliente),1,fp)==1)
      {
	 printf("Nome:        %s\n",cliente.nome);
	 printf("Idade:       %d\n",cliente.idade);
	 printf("Salario:     %.2f\n",cliente.sbase);
	 printf("Valor Compr: %.2f\n",cliente.vcompras);
	 printf("\nDigite enter para continuar\n");
	 getch();
      }
     printf("fim do arquivo");
     fclose(fp);
     getch();
}
void menu()
{
  clrscr();
  printf("Menu de opcoes");
  printf("\n");
  printf("1 - Cadastrar\n");
  printf("2 - Consultar\n");
  printf("3 - Sair\n");
  printf("Digite uma opcao\n");
  cin>>opc;
  switch(opc)
  {
  case 1:cadastra();break;
  case 2:consulta();break;
  case 3:exit(0);
  }
}



void main()
{
clrscr();
cria_arq();
opc = 1;
  do
  {
  menu();
  }
  while (op!=3);
}
