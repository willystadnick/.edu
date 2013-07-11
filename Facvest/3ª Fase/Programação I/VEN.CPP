/* Trabalho Arquivo...

Aproveitar o programa de arquivo Cliente e acrescentar um arquivo de
funcion rio (nome, c¢digo, tempo casa).
Gerar um arquivo de vendas onde busca os dados do arquivo de cliente
e do arquivo funcion rio, gerando o Registro do arquivo de vendas.

Menu Principal

1- Cliente - Cadastro
	   - Altera
	   - Consulta
	   - Excluir Registro
	   - Excluir Arquivo

2- Funcion rio - Idem ao cliente.

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
      -	C¢digo Funcion rio
      -	Nome Funcion rio - Localizar o funcion rio
			   no arquivo "Funcion rio" e
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


struct dadosf
       {
       int code;
       char nome[20];
       }funcio;
       FILE *ffunc1;
       FILE *ffunc2;
       int tamanho,op,opc;


struct dadcli
       {
       int cod;
       char nome[20];
       char ende[20];
       int idade;
       }cliente;
       FILE *fcli1;
       FILE *fcli2;

struct dadven
       {
       int code;
       char nome_prod[20];
       char vend[20];
       char cli[20];
       float valor;
       }vendas;
       FILE *fvend1;
       FILE *fvend2;


//-------------------------------- Criar Arquivos ------------------//

// FUNCIONARIOS

void cria_arqfunc()
{

     if ((ffunc1 = fopen("func1.dat","a"))==NULL)
     {
	printf("Erro de criacao do arquivo");
	return;
     }
     fclose(ffunc1);  }

void cria_arqfunc2(){
     if ((ffunc2 = fopen("func2.dat","a"))==NULL)
     {
	printf("Erro de criacao do arquivo");
	return;
     }
     fclose(ffunc2);
}

// CLIENTES

void cria_arqcliente()
{
     if ((fcli1 = fopen("cli1.dat","a"))==NULL)
     {
	printf("Erro de cricao do arquivo");
	return;
     }
     fclose(fcli1);}
void cria_arqcliente2(){

     if ((fcli2 = fopen("cli2.dat","a"))==NULL)
     {
	printf("Erro de cricao do arquivo");
	return;
     }
     fclose(fcli2);
}

// VENDAS

void cria_arqvendas()
{
     if ((fvend1 = fopen("vendas1.dat","a"))==NULL)
     {
	printf("Erro de cricao do arquivo");
	return;
     }
     fclose(fvend1);}

void cria_arqvendas2(){
     if ((fvend2 = fopen("vendas2.dat","a"))==NULL)
     {
	printf("Erro de cricao do arquivo");
	return;
     }
     fclose(fvend2);
}

//------------------ CADASTRAR CLIENTES E FUNCIONARIOS ------------------//

// FUNCIONARIO

void cadfunc()
{
  clrscr();
  char op;
  int tamanho=0;
  ffunc1 = fopen("func1.dat","r+");
  rewind(ffunc1);
  do{
  fread(&funcio,sizeof(funcio),1,ffunc1);
  tamanho++;}
  while (!feof(ffunc1));
  fseek(ffunc1,sizeof(funcio),tamanho);
  do
  {
     printf("\nDigite o codigo do funcionario.....:");
     cin>>funcio.code;
     printf("Digite o nome do funcionario.......:");
     cin>>funcio.nome;
     tamanho=tamanho+fwrite(&funcio,sizeof(struct dadosf),1,ffunc1);
     printf("\nContinuar cadastrando<s> ou <n>:");
     cin>>op;
     op = toupper(op);
     }while (op=='S');
     fclose(ffunc1);
}

void altfunc(){
     char nom_pro[20];
     int achou;
     int pos=0;
	clrscr();
	ffunc1=fopen("func1.dat","r+");
	fseek(ffunc1, sizeof(struct dadosf),0);
	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&funcio,sizeof(struct dadosf),1,ffunc1)==1){
		achou=strcmp(funcio.nome,nom_pro);
		pos++;
		if(achou==0){

		   printf("\nO Nome ‚.................:%s\n",funcio.nome);
		   printf("_____________________________________________\n");
		   getch();
		   printf("\nDigite o novo nome:");
		     cin>>funcio.nome;
		    fseek(ffunc1,pos*sizeof(struct dadosf),SEEK_SET);
		    fwrite(&funcio,sizeof(struct dadosf),1,ffunc1);
		    getch();}}
		    fclose(ffunc1);}

void consfunc()
{
     clrscr();
     ffunc1=fopen("func1.dat","r+");
     fseek(ffunc1,sizeof(struct dadosf),0);

     while(fread(&funcio,sizeof(struct dadosf),1,ffunc1)==1)
      {
	 clrscr();
	 printf("Nome:        %s\n",funcio.nome);
	 printf("\nDigite enter para continuar\n");
	 getch();
      }
     printf("fim do arquivo");
     fclose(ffunc1);
     getch();}

void exclui_registrofunc()
{
     char nom_pro[20];
     int achou;
	int tamanhon=0,tamanhoc=0;
	clrscr();
	ffunc1=fopen("func1.dat","r+");
	fseek(ffunc1,sizeof(struct dadosf),0);
	cria_arqfunc2();
	ffunc2=fopen("func2.dat","r+");
	fseek(ffunc2,sizeof(struct dadosf),0);

	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&funcio,sizeof(struct dadosf),1,ffunc1)==1){
		achou=strcmp(funcio.nome,nom_pro);
		if(achou==0){
		   printf("\nO Nome ‚.................:%s\n",funcio.nome);
		   printf("_____________________________________________\n");
		   getch();
		   }
		   else{
	       tamanhon=tamanhon+fwrite(&funcio,sizeof(struct dadosf),1,ffunc2);}}

	   fclose(ffunc1);
	   remove("func1.dat");
	   cria_arqfunc();
	   fseek(ffunc1,sizeof(struct dadosf),0);
	   ffunc1=fopen("func1.dat","r+");
	   fseek(ffunc1,sizeof(struct dadosf),0);
	fseek(ffunc2,sizeof(struct dadosf),0);
	while(fread(&funcio,sizeof(struct dadosf),1,ffunc2)==1) {
	  tamanhoc=tamanhoc+fwrite(&funcio,sizeof(struct dadosf),1,ffunc1);}
	fclose(ffunc2);
	remove("func2.dat");
	fclose(ffunc1);}

void exclui_arqfunc(){
    char opex;
    printf("Deleta Arquivo <s> ou <n>? ");
    cin>>opex;
    if (opex == 's')  {
      remove("func1.dat");
      printf("Arquivo Deletado");}
    else
      printf("Arquivo nÆo foi deletado por sua op‡Æo");
    getch();}


void menu_func()
{
  clrscr();
  cria_arqfunc();
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
  case 1:cadfunc(); break;
  case 2:altfunc(); break;
  case 3:consfunc(); break;
  case 4:exclui_registrofunc(); break;
  case 5:exclui_arqfunc(); break;
  case 6:menu();
  }
}

// CLIENTES

void cadcli()
{
  clrscr();
  char op;
  int tamanho=0;
  fcli1 = fopen("cli1.dat","r+");
  rewind(fcli1);
  do{
  fread(&cliente,sizeof(cliente),1,fcli1);
  tamanho++;}
  while (!feof(fcli1));
  fseek(fcli1,sizeof(cliente),tamanho);
  do
  {
     printf("\nDigite o codigo do cliente.....:");
     cin>>cliente.cod;
     printf("Digite o nome do cliente.......:");
     cin>>cliente.nome;
     tamanho=tamanho+fwrite(&cliente,sizeof(cliente),1,fcli1);
     printf("\nContinuar cadastrando<s> ou <n>:");
     cin>>op;
     op = toupper(op);
     }while (op=='S');
     fclose(fcli1);}

void altcli(){
     char nom_pro[20];
     int achou;
     int pos=0;
	clrscr();
	fcli1=fopen("cli1.dat","r+");
	fseek(fcli1, sizeof(cliente),0);
	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&cliente,sizeof(cliente),1,fcli1)==1){
		achou=strcmp(cliente.nome,nom_pro);
		pos++;
		if(achou==0){

		   printf("\nO Nome ‚.................:%s\n",cliente.nome);
		   printf("_____________________________________________\n");
		   getch();
		   printf("\nDigite o novo nome:");
		     cin>>cliente.nome;
		    fseek(fcli1,pos*sizeof(cliente),SEEK_SET);
		    fwrite(&cliente,sizeof(cliente),1,fcli1);
		    getch();}}
		    fclose(fcli1);}

void conscli()
{
     clrscr();
     fcli1=fopen("cli1.dat","r+");
     fseek(fcli1,sizeof(cliente),0);

     while(fread(&cliente,sizeof(cliente),1,fcli1)==1)
      {
	 clrscr();
	 printf("Nome:        %s\n",cliente.nome);
	 printf("\nDigite enter para continuar\n");
	 getch();
      }
     printf("fim do arquivo");
     fclose(fcli1);
     getch();}

void exregcli()
{
     char nom_pro[20];
     int achou;
	int tamanhon=0,tamanhoc=0;
	clrscr();
	fcli1=fopen("cli1.dat","r+");
	fseek(fcli1,sizeof(cliente),0);
	cria_arqcliente2();
	fcli2=fopen("cli2.dat","r+");
	fseek(fcli2,sizeof(cliente),0);

	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&cliente,sizeof(cliente),1,fcli1)==1){
		achou=strcmp(cliente.nome,nom_pro);
		if(achou==0){
		   printf("\nO Nome ‚.................:%s\n",cliente.nome);
		   printf("_____________________________________________\n");
		   getch();
		   }
		   else{
	       tamanhon=tamanhon+fwrite(&cliente,sizeof(cliente),1,fcli2);}}

	   fclose(fcli1);
	   remove("cli1.dat");
	   cria_arqcliente();
	   fseek(fcli1,sizeof(cliente),0);
	   fcli1=fopen("cli1.dat","r+");
	   fseek(fcli1,sizeof(cliente),0);
	fseek(fcli2,sizeof(cliente),0);
	while(fread(&cliente,sizeof(cliente),1,fcli2)==1) {
	  tamanhoc=tamanhoc+fwrite(&cliente,sizeof(cliente),1,fcli1);}
	fclose(fcli2);
	remove("cli2.dat");
	fclose(fcli1);}

void exarqcli(){
    char opex;
    printf("Deleta Arquivo <s> ou <n>? ");
    cin>>opex;
    if (opex == 's')  {
      remove("cli1.dat");
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
  case 1:cadcli(); break;
  case 2:altcli(); break;
  case 3:conscli(); break;
  case 4:exregcli(); break;
  case 5:exarqcli(); break;
  case 6:menu();
  }
}

// VENDAS

void cadastravendas()
{
  clrscr();

  char nom_pro[20];
     int achou;
     int pos=0;
int tamanho=0;
  fvend1 = fopen("vendas1.dat","r+");
  rewind(fvend1);
  do{
  fread(&vendas,sizeof(vendas),1,fvend1);
  tamanho++;}
  while (!feof(fvend1));
  fseek(fvend1,sizeof(vendas),tamanho);
  do
  {
     printf("Digite o c¢digo da venda.......:");
     cin>>vendas.code;
     printf("Digite o nome do vendedor.......:");
	ffunc1=fopen("func1.dat","r+");
	fseek(ffunc1, sizeof(struct dadosf),0);
	scanf(nom_pro);
	       while(fread(&funcio,sizeof(struct dadosf),1,ffunc1)==1){
		achou=strcmp(funcio.nome,nom_pro);
		pos++;
		if(achou==0){
		   printf(funcio.nome);
		    vendas.vend=funcio.nome ;
		    fseek(fvend1,pos*sizeof(vendas),SEEK_SET);
		    fwrite(&fvend1,sizeof(vendas),1,fvend1);
		    getch();}}
		    fclose(ffunc1);}
		if (achou!=0){
		   printf("funcionario nao cadastrado...");
		   menu_vendas();}
	fcli1=fopen("cli1.dat","r+");
	fseek(fcli1,sizeof(cliente),0);

	do{
	printf("Digite o Nome do cliente : ");
	cin>> nom_pro;
	       while(fread(&cliente,sizeof(cliente),1,fcli1)==1){
		achou=strcmp(cliente.nome,nom_pro);
		if(achou==0){
		   printf(cliente.nome);
		   vendas.cli
		   }
		else {
		   printf("cliente nao cadastrado... deseja cadastra-lo?");
		   scanf(resp);
		   resp=toupper(resp)
		   if (resp=='S'){
		      cadcli();}
		      else{
		      menu_vendas();}
		   tamanho=tamanho+fwrite(&vendas,sizeof(struct dadven),1,fvend1);
     printf("\nContinuar cadastrando<s> ou <n>:");
     cin>>op;
     op = toupper(op);
     }while (op=='S');
     fclose(fvend1);
}

void alteravendas(){
     char nome_pro[20];
     int achou;
     int pos=0;
	clrscr();
	fvend1=fopen("vendas1.dat","r+");
	fseek(fvend1, sizeof(struct dadven),0);
	printf("Digite o nome p/ Procura : ");
	cin>>nome_pro;
	       while(fread(&vendas,sizeof(struct dadven),1,fvend1)==1){
		achou=strcmp(vendas.nome_prod,nome_pro);
		pos++;
		if(achou==0){

		   printf("\nO nome ‚.................:%s\n",vendas.nome_prod);
		   printf("_____________________________________________\n");
		   getch();
		   printf("\nDigite o novo produto:");
		     cin>>vendas.nome_prod;
		    fseek(fvend1,pos*sizeof(struct dadven),SEEK_SET);
		    fwrite(&vendas,sizeof(struct dadven),1,fvend1);
		    getch();}}
		    fclose(fvend1);}

void consultavendas()
{
     clrscr();
     fvend1=fopen("vendas1.dat","r+");
     fseek(fvend1,sizeof(struct dadven),0);

     while(fread(&vendas,sizeof(fvend1),1,fvend1)==1)
      {
	 clrscr();
	 printf("Nome:        %s\n",vendas.nome_prod);
	 printf("\nDigite enter para continuar\n");
	 getch();
      }
     printf("fim do arquivo");
     fclose(fvend1);
     getch();}

void exclui_registrovendas()
{
     char nom_pro[20];
     int achou;
	int tamanhon=0,tamanhoc=0;
	clrscr();
	fvend1=fopen("vendas1.dat","r+");
	fseek(fvend1,sizeof(struct dadven),0);
	if((fvend2=fopen("vendas2.dat","a"))==NULL){
	 clrscr();
	 printf("Erro de cria‡ao de arquivo");
	 return;}
	fvend2=fopen("vendas2.dat","r+");
	fseek(fvend2,sizeof(struct dadven),0);

	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&vendas,sizeof(fvend1),1,fvend1)==1){
		achou=strcmp(vendas.nome_prod,nom_pro);
		if(achou==0){
		   printf("\nO Nome ‚.................:%s\n",vendas.nome_prod);
		   printf("_____________________________________________\n");
		   getch();
		   }
		   else{
	       tamanhon=tamanhon+fwrite(&vendas,sizeof(struct dadven),1,fvend1);}}

	   fclose(fvend1);
	   remove("vendas1.dat");
	   cria_arqvendas();
	   fseek(fvend1,sizeof(struct dadven),0);
	   fvend1=fopen("vendas1.dat","r+");
	   fseek(fvend1,sizeof(struct dadven),0);
	while(fread(&vendas,sizeof(fvend1),1,fvend2)==1) {
	  tamanhoc=tamanhoc+fwrite(&vendas,sizeof(struct dadven),1,fvend1);}
	fclose(fvend2);
	remove("vendas2.dat");
	fclose(fvend1);}

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
cria_arqcliente();
cria_arqvendas();
opc = 1;
  do
  {
  menu();
  }
  while (op!=4);
}


