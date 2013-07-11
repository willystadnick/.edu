/* Trabalho Arquivo...

Aproveitar o programa de arquivo Cliente e acrescentar um arquivo de
funcion rio (nome, c¢digo, tempo casa).
Gerar um arquivo de vendas onde busca os dados do arquivo de cliente
e do arquivo funcion rio, gerando o Registro do arquivo de vendas.

Menu Principal

1- Cliente - Cadastro
	   - Altera
	   - Consulta
	   - Excluir Registro
	   - Excluir Arquivo

2- Funcion rio - Idem ao cliente.

3- Vendas - Gerar
	  - Alterar
	  - Consultar
	  - Excluir Registro
	  - Excluir Arquivo
4- Sair


Venda - C¢digo Venda
      - Nome Cliente - Localizar o cliente
		       no arquivo "Cliente" e trazer
		       os campos endere‡o e idade.
      -	Endre‡o
      -	Idade
      -	C¢digo Funcion rio
      -	Nome Funcion rio - Localizar o funcion rio
			   no arquivo "Funcion rio" e
			   trazer o nome dele.
      -	Descri‡Æo Venda
      -	Valor Venda
*/


//Programa Arquivo/Vendas


#include<conio.h>
#include<stdio.h>
#include<stdlib.h>
#include<iostream.h>
#include<ctype.h>
#include<io.h>
#include<string.h>

void menu();
void menu_cliente();
void menu_vendas();


struct dados_funcionario
       {
       int code;
       char nome[20];
       }funcio;
       FILE *ffuncionario1;
       FILE *ffuncionario2;
       int tamanho,op,opc;


struct dados_cliente
       {
       char nome[20];
       char ende[20];
       int idade;
       }cliente;
       FILE *fcliente1;
       FILE *fcliente2;

struct dados_vendas
       {
       int code;
       char nome_prod[20];
       float valor;
       }vendas;
       FILE *fvendas1;
       FILE *fvendas2;


//-------------------------------- Criar Arquivos ------------------//

// FUNCIONARIOS

void cria_arqfunc()
{

     if ((ffuncionario1 = fopen("funcionarios1.dat","a"))==NULL)
     {
	printf("Erro de criacao do arquivo");
	return;
     }
     fclose(ffuncionario1);

     if ((ffuncionario2 = fopen("funcionarios2.dat","a"))==NULL)
     {
	printf("Erro de criacao do arquivo");
	return;
     }
     fclose(ffuncionario2);
}

// CLIENTES

void cria_arqcliente()
{
     if ((fcliente1 = fopen("clientes1.dat","a"))==NULL)
     {
	printf("Erro de cricao do arquivo");
	return;
     }
     fclose(fcliente1);

     if ((fcliente2 = fopen("clientes2.dat","a"))==NULL)
     {
	printf("Erro de cricao do arquivo");
	return;
     }
     fclose(fcliente2);
}

// VENDAS

void cria_arqvendas()
{
     if ((fvendas1 = fopen("vendas1.dat","a"))==NULL)
     {
	printf("Erro de cricao do arquivo");
	return;
     }
     fclose(fvendas1);

     if ((fvendas2 = fopen("vendas2.dat","a"))==NULL)
     {
	printf("Erro de cricao do arquivo");
	return;
     }
     fclose(fvendas2);
}

//------------------ CADASTRAR CLIENTES E FUNCIONARIOS ------------------//

// FUNCIONARIO

void cadastrafuncionario()
{
  clrscr();
  char op;
  int tamanho=0;
  ffuncionario1 = fopen("funcionario1.dat","r+");
  rewind(ffuncionario1);
  do{
  fread(&funcio,sizeof(funcio),1,ffuncionario1);
  tamanho++;}
  while (!feof(ffuncionario1));
  fseek(ffuncionario1,sizeof(funcio),tamanho);
  do
  {
     printf("\nDigite o codigo do funcionario.....:");
     cin>>funcio.code;
     printf("Digite o nome do funcionario.......:");
     cin>>funcio.nome;
     tamanho=tamanho+fwrite(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1);
     printf("\nContinuar cadastrando<s> ou <n>:");
     cin>>op;
     op = toupper(op);
     }while (op=='S');
     fclose(ffuncionario1);
}

void alterafuncionario(){
     char nom_pro[20];
     int achou;
     int pos=0;
	clrscr();
	ffuncionario1=fopen("funcionario1.dat","r+");
	fseek(ffuncionario1, sizeof(struct dados_funcionario),0);
	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1)==1){
		achou=strcmp(funcio.nome,nom_pro);
		pos++;
		if(achou==0){

		   printf("\nO Nome ‚.................:%s\n",funcio.nome);
		   printf("_____________________________________________\n");
		   getch();
		   printf("\nDigite o novo nome:");
		     cin>>funcio.nome;
		    fseek(ffuncionario1,pos*sizeof(struct dados_funcionario),SEEK_SET);
		    fwrite(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1);
		    getch();}}
		    fclose(ffuncionario1);}

void consultafuncionario()
{
     clrscr();
     char op='S';
     ffuncionario1=fopen("funcionario1.dat","r+");
     fseek(ffuncionario1,sizeof(struct dados_funcionario),0);
     while((fread(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1)==1) && (op='S'))
      {
	 clrscr();
	 printf("Nome:        %s\n",funcio.nome);
	 printf("\nProximo item <enter> - Sair <S>\n");
	 op = toupper(op);
	 getch(op);
      }
     printf("fim do arquivo");
     fclose(ffuncionario1);
     getch();}

void exclui_registrofunc()
{
     char nom_pro[20];
     int achou;
	int tamanhon=0,tamanhoc=0;
	clrscr();
	ffuncionario1=fopen("funcionario1.dat","r+");
	fseek(ffuncionario1,sizeof(struct dados_funcionario),0);
	if((ffuncionario2=fopen("funcionario2.dat","a"))==NULL){
	 clrscr();
	 printf("Erro de cria‡ao de arquivo");
	 return;}
	ffuncionario2=fopen("funcionario2.dat","r+");
	fseek(ffuncionario2,sizeof(struct dados_funcionario),0);

	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&funcio,sizeof(ffuncionario1),1,ffuncionario1)==1){
		achou=strcmp(funcio.nome,nom_pro);
		if(achou==0){
		   printf("\nO Nome ‚.................:%s\n",funcio.nome);
		   printf("_____________________________________________\n");
		   getch();
		   }
		   else{
	       tamanhon=tamanhon+fwrite(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1);}}

	   fclose(ffuncionario1);
	   remove("funcionario1.dat");
	   cria_arqfunc();
	   fseek(ffuncionario1,sizeof(struct dados_funcionario),0);
	   ffuncionario1=fopen("funcionario1.dat","r+");
	   fseek(ffuncionario1,sizeof(struct dados_funcionario),0);
	while(fread(&funcio,sizeof(ffuncionario1),1,ffuncionario2)==1) {
	  tamanhoc=tamanhoc+fwrite(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1);}
	fclose(ffuncionario2);
	remove("funcionario2.dat");
	fclose(ffuncionario1);}

void exclui_arqfunc(){
    char opex;
    printf("Deleta Arquivo <s> ou <n>? ");
    cin>>opex;
    if (opex == 's')  {
      remove("funcionario1.dat");
      printf("Arquivo Deletado");}
    else
      printf("Arquivo nÆo foi deletado por sua op‡Æo");
    getch();}


void menu_func()
{
  clrscr();
  printf("Menu de opcoes");
  printf("\n");
  printf("1 - CADASTRAR\n");
  printf("2 - ALTERAR\n");
  printf("3 - CONSULTAR\n");
  printf("4 - EXCLUIR REGISTRO\n");
  printf("5 - EXCLUIR ARQUIVO\n");
  printf("6 - VOLTAR AO MENU...\n\n");
  printf("Digite uma opcao\n");
  cin>>opc;
  switch(opc)
  {
  case 1:cadastrafuncionario(); break;
  case 2:alterafuncionario(); break;
  case 3:consultafuncionario(); break;
  case 4:exclui_registrofunc(); break;
  case 5:exclui_arqfunc(); break;
  case 6:menu();
  }
}

// CLIENTES

void cadastracliente()
{
  clrscr();

  int tamanho=0;
  fcliente1 = fopen("cliente1.dat","r+");
  rewind(fcliente1);
  do{
  fread(&cliente,sizeof(cliente),1,fcliente1);
  tamanho++;}
  while (!feof(fcliente1));
  fseek(fcliente1,sizeof(cliente),tamanho);
  do
  {
     printf("Digite o nome do cliente.......:");
     cin>>cliente.nome;
     tamanho=tamanho+fwrite(&cliente,sizeof(struct dados_cliente),1,fcliente1);
     printf("\nContinuar cadastrando<s> ou <n>:");
     cin>>op;
     op = toupper(op);
     }while (op=='S');
     fclose(fcliente1);
}

void alteracliente(){
     char nom_pro[20];
     int achou;
     int pos=0;
	clrscr();
	fcliente1=fopen("cliente1.dat","r+");
	fseek(fcliente1, sizeof(struct dados_cliente),0);
	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&cliente,sizeof(struct dados_cliente),1,fcliente1)==1){
		achou=strcmp(cliente.nome,nom_pro);
		pos++;
		if(achou==0){

		   printf("\nO Nome ‚.................:%s\n",cliente.nome);
		   printf("_____________________________________________\n");
		   getch();
		   printf("\nDigite o novo nome:");
		     cin>>cliente.nome;
		    fseek(fcliente1,pos*sizeof(struct dados_cliente),SEEK_SET);
		    fwrite(&cliente,sizeof(struct dados_cliente),1,fcliente1);
		    getch();}}
		    fclose(fcliente1);}

void consultacliente()
{
     clrscr();
     fcliente1=fopen("cliente1.dat","r+");
     fseek(fcliente1,sizeof(struct dados_cliente),0);

     while(fread(&cliente,sizeof(fcliente1),1,fcliente1)==1)
      {
	 clrscr();
	 printf("Nome:        %s\n",cliente.nome);
	 printf("\nDigite enter para continuar\n");
	 getch();
      }
     printf("fim do arquivo");
     fclose(fcliente1);
     getch();}

void exclui_registrocliente()
{
     char nom_pro[20];
     int achou;
	int tamanhon=0,tamanhoc=0;
	clrscr();
	fcliente1=fopen("fcliente1.dat","r+");
	fseek(fcliente1,sizeof(struct dados_cliente),0);
	if((fcliente2=fopen("cliente2.dat","a"))==NULL){
	 clrscr();
	 printf("Erro de cria‡ao de arquivo");
	 return;}
	fcliente2=fopen("cliente2.dat","r+");
	fseek(fcliente2,sizeof(struct dados_cliente),0);

	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&cliente,sizeof(fcliente1),1,fcliente1)==1){
		achou=strcmp(cliente.nome,nom_pro);
		if(achou==0){
		   printf("\nO Nome ‚.................:%s\n",cliente.nome);
		   printf("_____________________________________________\n");
		   getch();
		   }
		   else{
	       tamanhon=tamanhon+fwrite(&cliente,sizeof(struct dados_cliente),1,fcliente1);}}

	   fclose(fcliente1);
	   remove("cliente1.dat");
	   cria_arqcliente();
	   fseek(fcliente1,sizeof(struct dados_cliente),0);
	   fcliente1=fopen("cliente1.dat","r+");
	   fseek(fcliente1,sizeof(struct dados_cliente),0);
	while(fread(&cliente,sizeof(fcliente1),1,fcliente2)==1) {
	  tamanhoc=tamanhoc+fwrite(&cliente,sizeof(struct dados_cliente),1,fcliente1);}
	fclose(fcliente2);
	remove("cliente2.dat");
	fclose(fcliente1);}

void exclui_arqcliente(){
    char opex;
    printf("Deleta Arquivo <s> ou <n>? ");
    cin>>opex;
    if (opex == 's')  {
      remove("cliente1.dat");
      printf("Arquivo Deletado");}
    else
      printf("Arquivo nÆo foi deletado por sua op‡Æo");
    getch();}


void menu_cliente()
{
  clrscr();
  printf("Menu de opcoes");
  printf("\n");
  printf("1 - CADASTRAR\n");
  printf("2 - ALTERAR\n");
  printf("3 - CONSULTAR\n");
  printf("4 - EXCLUIR REGISTRO\n");
  printf("5 - EXCLUIR ARQUIVO\n");
  printf("6 - VOLTAR AO MENU...\n\n");
  printf("Digite uma opcao\n");
  cin>>opc;
  switch(opc)
  {
  case 1:cadastracliente(); break;
  case 2:alteracliente(); break;
  case 3:consultacliente(); break;
  case 4:exclui_registrocliente(); break;
  case 5:exclui_arqcliente(); break;
  case 6:menu();
  }
}

// VENDAS

void cadastravendas()
{
  clrscr();

  int tamanho=0;
  fvendas1 = fopen("vendas1.dat","r+");
  rewind(fvendas1);
  do{
  fread(&vendas,sizeof(vendas),1,fvendas1);
  tamanho++;}
  while (!feof(fvendas1));
  fseek(fvendas1,sizeof(vendas),tamanho);
  do
  {
     printf("Digite o c¢digo da venda.......:");
     cin>>vendas.code;
     tamanho=tamanho+fwrite(&vendas,sizeof(struct dados_vendas),1,fvendas1);
     printf("\nContinuar cadastrando<s> ou <n>:");
     cin>>op;
     op = toupper(op);
     }while (op=='S');
     fclose(fvendas1);
}

void alteravendas(){
     char nome_pro[20];
     int achou;
     int pos=0;
	clrscr();
	fvendas1=fopen("vendas1.dat","r+");
	fseek(fvendas1, sizeof(struct dados_vendas),0);
	printf("Digite o nome p/ Procura : ");
	cin>>nome_pro;
	       while(fread(&vendas,sizeof(struct dados_vendas),1,fvendas1)==1){
		achou=strcmp(vendas.nome_prod,nome_pro);
		pos++;
		if(achou==0){

		   printf("\nO nome ‚.................:%s\n",vendas.nome_prod);
		   printf("_____________________________________________\n");
		   getch();
		   printf("\nDigite o novo produto:");
		     cin>>vendas.nome_prod;
		    fseek(fvendas1,pos*sizeof(struct dados_vendas),SEEK_SET);
		    fwrite(&vendas,sizeof(struct dados_vendas),1,fvendas1);
		    getch();}}
		    fclose(fvendas1);}

void consultavendas()
{
     clrscr();
     fvendas1=fopen("vendas1.dat","r+");
     fseek(fvendas1,sizeof(struct dados_vendas),0);

     while(fread(&vendas,sizeof(fvendas1),1,fvendas1)==1)
      {
	 clrscr();
	 printf("Nome:        %s\n",vendas.nome_prod);
	 printf("\nDigite enter para continuar\n");
	 getch();
      }
     printf("fim do arquivo");
     fclose(fvendas1);
     getch();}

void exclui_registrovendas()
{
     char nom_pro[20];
     int achou;
	int tamanhon=0,tamanhoc=0;
	clrscr();
	fvendas1=fopen("vendas1.dat","r+");
	fseek(fvendas1,sizeof(struct dados_vendas),0);
	if((fvendas2=fopen("vendas2.dat","a"))==NULL){
	 clrscr();
	 printf("Erro de cria‡ao de arquivo");
	 return;}
	fvendas2=fopen("vendas2.dat","r+");
	fseek(fvendas2,sizeof(struct dados_vendas),0);

	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&vendas,sizeof(fvendas1),1,fvendas1)==1){
		achou=strcmp(vendas.nome_prod,nom_pro);
		if(achou==0){
		   printf("\nO Nome ‚.................:%s\n",vendas.nome_prod);
		   printf("_____________________________________________\n");
		   getch();
		   }
		   else{
	       tamanhon=tamanhon+fwrite(&vendas,sizeof(struct dados_vendas),1,fvendas1);}}

	   fclose(fvendas1);
	   remove("vendas1.dat");
	   cria_arqvendas();
	   fseek(fvendas1,sizeof(struct dados_vendas),0);
	   fvendas1=fopen("vendas1.dat","r+");
	   fseek(fvendas1,sizeof(struct dados_vendas),0);
	while(fread(&vendas,sizeof(fvendas1),1,fvendas2)==1) {
	  tamanhoc=tamanhoc+fwrite(&vendas,sizeof(struct dados_vendas),1,fvendas1);}
	fclose(fvendas2);
	remove("vendas2.dat");
	fclose(fvendas1);}

void exclui_arqvendas(){
    char opex;
    printf("Deleta Arquivo <s> ou <n>? ");
    cin>>opex;
    if (opex == 's')  {
      remove("vendas1.dat");
      printf("Arquivo Deletado");}
    else
      printf("Arquivo nÆo foi deletado por sua op‡Æo");
    getch();}


void menu_vendas()
{
  clrscr();
  printf("Menu de opcoes");
  printf("\n");
  printf("1 - CADASTRAR\n");
  printf("2 - ALTERAR\n");
  printf("3 - CONSULTAR\n");
  printf("4 - EXCLUIR REGISTRO\n");
  printf("5 - EXCLUIR ARQUIVO\n");
  printf("6 - VOLTAR AO MENU...\n\n");
  printf("Digite uma opcao\n");
  cin>>opc;
  switch(opc)
  {
  case 1:cadastravendas(); break;
  case 2:alteravendas(); break;
  case 3:consultavendas(); break;
  case 4:exclui_registrovendas(); break;
  case 5:exclui_arqvendas(); break;
  case 6:menu();
  }
}



//------------------ MENU PRINCIPAL ------------------//

void menu()
{
  clrscr();
  printf("Menu de opcoes");
  printf("\n");
  printf("1 - FUNCIONARIO\n");
  printf("2 - CLIENTE\n");
  printf("3 - VENDAS\n");
  printf("4 - SAIR\n\n");
  printf("Digite uma opcao\n");
  cin>>opc;
  switch(opc)
  {
  case 1:menu_func();    break;
  case 2:menu_cliente(); break;
  case 3:menu_vendas();  break;
  case 4:exit(0);
  }
}





void main()
{
clrscr();
cria_arqfunc();
cria_arqcliente();
cria_arqvendas();
opc = 1;
  do
  {
  menu();
  }
  while (op!=4);
}