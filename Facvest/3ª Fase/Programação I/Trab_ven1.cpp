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
void tela();



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


void tela(){
int i,x,y;
x=1;
y=1;


gotoxy(x,y);
printf("É");
gotoxy(1,24);
printf("È");
gotoxy(78,24);
printf("¼");
gotoxy(78,1);
printf("»");

gotoxy(25,2);
printf("CADASTRO DE FUNCIONARIOS E CLIENTES");

for(i=2;i<78;i++){
 gotoxy(i,1);
 printf("Í");
 gotoxy(i,24);
 printf("Í");
 gotoxy(i,3);
 printf("Í");}

//Barra laterais e miolo
for (i=2;i<24;i++){
 gotoxy(1,i);
 printf("º");
 gotoxy(78,i);
 printf("º");}

//barra titulo
gotoxy(1,3);
printf("Ì");
gotoxy(78,3);
printf("¹");
gotoxy(2,3);}

// FUNCIONARIOS

void cria_arqfunc()
{

     if ((ffuncionario1 = fopen("funcionarios1.dat","a"))==NULL)
     {
	clrscr();
	tela();
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
  tela();
  gotoxy(20,4);
  printf("Funcionario -> Cadastrar");
  char op;
  int tamanho=0;
  ffuncionario1 = fopen("funcionario1.dat","r+");
  rewind(ffuncionario1);
  do{
   fread(&funcio,sizeof(funcio),1,ffuncionario1);
   tamanho++;}while(!feof(ffuncionario1));
  fseek(ffuncionario1,sizeof(funcio),tamanho);
  do{
   clrscr();
   tela();
   gotoxy(20,4);
   printf("Funcionario -> Cadastro");
   gotoxy(10,10);
   printf("Digite o codigo do funcionario.....:");
   cin>>funcio.code;
   gotoxy(10,11);
   printf("Digite o nome do funcionario.......:");
   cin>>funcio.nome;
   tamanho=tamanho+fwrite(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1);
   gotoxy(15,18);
   printf("Continuar cadastrando<s> ou <n>:");
//   op=getch(op)
   cin>>op;
   op=toupper(op);}while(op=='S');
   fclose(ffuncionario1);}

void alterafuncionario(){
     clrscr();
     tela();
     gotoxy(20,4);
     printf("Funcionario -> Alterar");
     char nom_pro[20];
     int achou;
     int pos=0;
	clrscr();
	ffuncionario1=fopen("funcionario1.dat","r+");
	fseek(ffuncionario1, sizeof(struct dados_funcionario),0);
	gotoxy(20,10);
	printf("Digite o Nome p/ Procura : ");
	cin>>nom_pro;
	       while(fread(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1)==1){
		achou=strcmp(funcio.nome,nom_pro);
		pos++;
		if(achou==0){
		   gotoxy(20,11);
		   printf("O Nome ‚.................:%s",funcio.nome);
		   getch();
		   gotoxy(20,13);
		   printf("Digite o novo nome: ");
		     cin>>funcio.nome;
		    fseek(ffuncionario1,pos*sizeof(struct dados_funcionario),SEEK_SET);
		    fwrite(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1);
		    getch();}}
		    fclose(ffuncionario1);
		    menu();
		    }


void consultafuncionario()
{
     int y;
     clrscr();
     tela();
     gotoxy(20,4);
     printf("Funcionario -> Conulta");
     char op='N';
     ffuncionario1=fopen("funcionario1.dat","r+");
     fseek(ffuncionario1,sizeof(struct dados_funcionario),0);
     y=6;
     do{
      gotoxy(20,y);
      printf("Nome: %s",funcio.nome);
      gotoxy(20,20);
      printf("<P> Proximo item | <S> - Sair ");
      op=getch();
      op=toupper(op);
      y=y++;}
      while((fread(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1)==1) || (op=='P'));
     fclose(ffuncionario1);
     clrscr();
     tela();
     gotoxy(30,12);
     printf(" FIM DE ARQUIVO ");
     getch();
     menu();
     }

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
	clrscr();
	tela();
	gotoxy(20,10);
	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&funcio,sizeof(ffuncionario1),1,ffuncionario1)==1){
		achou=strcmp(funcio.nome,nom_pro);
		if(achou==0){
		   gotoxy(20,12);
		   printf("O Nome ‚.................:%s",funcio.nome);
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
	fclose(ffuncionario1);
	menu();
	}

void exclui_arqfunc(){
    char opex;
    clrscr();
    tela();
    gotoxy(25,10);
    printf("Deleta Arquivo <s> ou <n>? ");
    cin>>opex;
    if (opex == 's')  {
      remove("funcionario1.dat");
      gotoxy(30,12);
      printf("Arquivo Deletado");}
    else
      {gotoxy(10,12);
      printf("Arquivo nÆo foi deletado por sua op‡Æo");}
    getch();
    menu();
    }


void menu_func()
{
  gotoxy(20,4);
  printf(" Funcionario -> ");
  gotoxy(30,6);
  printf("1 - CADASTRAR");
  gotoxy(30,7);
  printf("1 - ALTERAR");
  gotoxy(30,8);
  printf("1 - CONSULTAR");
  gotoxy(30,9);
  printf("1 - EXCLUIR REGISTRO");
  gotoxy(30,10);
  printf("1 - EXCLUIR ARQUIVO");
  gotoxy(30,11);
  printf("6 - VOLTAR");
  gotoxy(27,12);
  printf("->");
  gotoxy(32,12);
  printf("<-");
  gotoxy(30,12);
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
  tela();
  gotoxy(20,4);
  printf("Cliente -> Cadastrar");
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
     gotoxy(10,10);
     printf("Digite o nome do cliente.......:");
     cin>>cliente.nome;
     tamanho=tamanho+fwrite(&cliente,sizeof(struct dados_cliente),1,fcliente1);
     gotoxy(15,18);
     printf("Continuar cadastrando<s> ou <n>: ");
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
	clrscr();
	tela();
	gotoxy(10,4);
	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&cliente,sizeof(struct dados_cliente),1,fcliente1)==1){
		achou=strcmp(cliente.nome,nom_pro);
		pos++;
		if(achou==0){
		   gotoxy(10,10);
		   printf("O Nome ‚.................:%s\n",cliente.nome);
		   getch();
		   gotoxy(10,12);
		   printf("Digite o novo nome:");
		     cin>>cliente.nome;
		    fseek(fcliente1,pos*sizeof(struct dados_cliente),SEEK_SET);
		    fwrite(&cliente,sizeof(struct dados_cliente),1,fcliente1);
		    getch();}}
		    fclose(fcliente1);}

void consultacliente()
{
     int y;
     clrscr();
     fcliente1=fopen("cliente1.dat","r+");
     fseek(fcliente1,sizeof(struct dados_cliente),0);
     y=6;
     while(fread(&cliente,sizeof(fcliente1),1,fcliente1)==1)
      {
	 clrscr();
	 tela();
	 gotoxy(10,y);
	 printf("Nome:        %s",cliente.nome);
	 printf("Pressione ENTER para continuar");
	 getch();
	 y=y++;
      }
     clrscr();
     gotoxy(25,10);
     printf("FIM DO ARQUIVO");
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
  tela();
  gotoxy(20,4);
  printf(" Cliente -> ");
  gotoxy(30,6);
  printf("1 - CADASTRAR");
  gotoxy(30,7);
  printf("1 - ALTERAR");
  gotoxy(30,8);
  printf("1 - CONSULTAR");
  gotoxy(30,9);
  printf("1 - EXCLUIR REGISTRO");
  gotoxy(30,10);
  printf("1 - EXCLUIR ARQUIVO");
  gotoxy(30,11);
  printf("6 - VOLTAR");
  gotoxy(27,12);
  printf("->");
  gotoxy(32,12);
  printf("<-");
  gotoxy(30,12);
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
  gotoxy(20,4);
  printf(" Vendas -> ");
  gotoxy(30,6);
  printf("1 - CADASTRAR");
  gotoxy(30,7);
  printf("2 - ALTERAR");
  gotoxy(30,8);
  printf("3 - CONSULTAR");
  gotoxy(30,9);
  printf("4 - EXCLUIR REGISTRO");
  gotoxy(30,10);
  printf("5 - EXCLUIR ARQUIVO");
  gotoxy(30,11);
  printf("6 - VOLTAR");
  gotoxy(27,12);
  printf("->");
  gotoxy(32,12);
  printf("<-");
  gotoxy(30,12);
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
  tela();
  gotoxy(10,6);
  printf("1 - FUNCIONARIO");
  gotoxy(10,7);
  printf("2 - CLIENTE");
  gotoxy(10,8);
  printf("3 - VENDAS");
  gotoxy(10,9);
  printf("4 - SAIR");
  gotoxy(7,10);
  printf("-> ");
  gotoxy(12,10);
  printf("<-");
  gotoxy(10,10);
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