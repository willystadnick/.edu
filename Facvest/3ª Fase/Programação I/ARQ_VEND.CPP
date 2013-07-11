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
#include<dos.h>
#include<graphics.h>



void tela1();
void tela2();
void menu();
void menu_func();
void menu_cliente();
void menu_vendas();
void cadcli();
void altcli();
void conscli();
void exregcli();
void exarqcli();
void cadfunc();
void altfunc();
void consfunc();
void exclui_registrofunc();
void exclui_arqfunc();
void cadastravendas();
void alteravendas();
void consultavendas();
void exclui_registrovendas();
void exclui_arqvendas();

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

//------------------------------- BORDAS -------------------------//

void tela1(){

     int i=1;

     do {
	 gotoxy(i+1,1);
	 printf("Í");
	 gotoxy(i+1,3);
	 printf("Í");
	 gotoxy(i+1,5);
	 printf("Í");
	 gotoxy(i+1,22);
	 printf("Í");
	 gotoxy(i+1,24);
	 printf("Í");
	 i++;
	 }while(i<78);
     i=1;

     do {
	 gotoxy(1,i+1);
	 printf("º");
	 gotoxy(79,i+1);
	 printf("º");
	 i++;
	 }while(i<23);

     gotoxy(1,1);
     printf("É");
     gotoxy(79,1);
     printf("»");
     gotoxy(1,3);
     printf("Ì");
     gotoxy(79,3);
     printf("¹");
     gotoxy(1,5);
     printf("Ì");
     gotoxy(79,5);
     printf("¹");
     gotoxy(1,22);
     printf("Ì");
     gotoxy(79,22);
     printf("¹");
     gotoxy(1,24);
     printf("È");
     gotoxy(79,24);
     printf("¼");
}

void tela2(){

     int i=1;

     do {
	 gotoxy(i+1,1);
	 printf("Í");
	 gotoxy(i+1,3);
	 printf("Í");
	 gotoxy(i+1,22);
	 printf("Í");
	 gotoxy(i+1,24);
	 printf("Í");
	 i++;
	 }while(i<78);
     i=1;

     do {
	 gotoxy(1,i+1);
	 printf("º");
	 gotoxy(79,i+1);
	 printf("º");
	 i++;
	 }while(i<23);

     gotoxy(1,1);
     printf("É");
     gotoxy(79,1);
     printf("»");
     gotoxy(1,3);
     printf("Ì");
     gotoxy(79,3);
     printf("¹");
     gotoxy(1,22);
     printf("Ì");
     gotoxy(79,22);
     printf("¹");
     gotoxy(1,24);
     printf("È");
     gotoxy(79,24);
     printf("¼");
}

//--------------------------MENUS PRINCIPAIS--------------------------//

void menu_cliente()
{
  clrscr();
  tela1();
  gotoxy(15,2);
  printf("TRABALHO ARQUIVO - CLIENTES / FUNCIONARIOS / VENDAS");
  gotoxy(20,4);
  printf("...::: MENU DE OP€OES (CLIENTES) :::...");
  gotoxy(30,8);
  printf("1 - CADASTRAR");
  gotoxy(30,10);
  printf("2 - ALTERAR");
  gotoxy(30,12);
  printf("3 - CONSULTAR");
  gotoxy(30,14);
  printf("4 - EXCLUIR REGISTRO");
  gotoxy(30,16);
  printf("5 - EXCLUIR ARQUIVO");
  gotoxy(30,18);
  printf("6 - VOLTAR AO MENU...");
  gotoxy(30,23);
  printf("Digite uma opcao: ");
  gotoxy(48,23);
  cin>>opc;
  switch(opc)
  {
  case 1:cadcli();      break;
  case 2:altcli();      break;
  case 3:conscli();     break;
  case 4:exregcli();    break;
  case 5:exarqcli();    break;
  case 6:menu();
  default: menu_cliente;
	   gotoxy(22,23);
	   printf("Op‡Æo inv lida... Tente novamente...");
	   getch();
	   menu_cliente;
  }
}

void menu_func()
{
  clrscr();
  tela1();
  gotoxy(15,2);
  printf("TRABALHO ARQUIVO - CLIENTES / FUNCIONARIOS / VENDAS");
  gotoxy(18,4);
  printf("...::: MENU DE OP€OES (FUNCIONARIOS) :::...");
  gotoxy(30,8);
  printf("1 - CADASTRAR");
  gotoxy(30,10);
  printf("2 - ALTERAR");
  gotoxy(30,12);
  printf("3 - CONSULTAR");
  gotoxy(30,14);
  printf("4 - EXCLUIR REGISTRO");
  gotoxy(30,16);
  printf("5 - EXCLUIR ARQUIVO");
  gotoxy(30,18);
  printf("6 - VOLTAR AO MENU...");
  gotoxy(30,23);
  printf("Digite uma opcao: ");
  gotoxy(48,23);
  cin>>opc;
  switch(opc)
  {
  case 1:cadfunc();    		   break;
  case 2:altfunc();      	   break;
  case 3:consfunc();    	   break;
  case 4:exclui_registrofunc();    break;
  case 5:exclui_arqfunc();         break;
  case 6:menu();
  default: menu_func;
	   gotoxy(22,23);
	   printf("Op‡Æo inv lida... Tente novamente...");
	   getch();
	   menu_func;
  }
}


void menu_vendas()
{
  clrscr();
  tela1();
  gotoxy(15,2);
  printf("TRABALHO ARQUIVO - CLIENTES / FUNCIONARIOS / VENDAS");
  gotoxy(22,4);
  printf("...::: MENU DE OP€OES (VENDAS) :::...");
  gotoxy(31,8);
  printf("1 - GERAR VENDA");
  gotoxy(31,10);
  printf("2 - ALTERAR");
  gotoxy(31,12);
  printf("3 - CONSULTAR");
  gotoxy(31,14);
  printf("4 - EXCLUIR REGISTRO");
  gotoxy(31,16);
  printf("5 - EXCLUIR ARQUIVO");
  gotoxy(31,18);
  printf("6 - VOLTAR AO MENU...");
  gotoxy(31,23);
  printf("Digite uma opcao: ");
  gotoxy(49,23);
  cin>>opc;
  switch(opc)
  {
  case 1:cadastravendas();   	     break;
  case 2:alteravendas();      	     break;
  case 3:consultavendas();           break;
  case 4:exclui_registrovendas();    break;
  case 5:exclui_arqvendas();         break;
  case 6:menu();
  default: menu_vendas;
	   gotoxy(22,23);
	   printf("Op‡Æo inv lida... Tente novamente...");
	   getch();
	   menu_vendas;
  }
}


void menu()

{

  clrscr();
  tela1();
  gotoxy(15,2);
  printf("TRABALHO ARQUIVO - CLIENTES / FUNCIONARIOS / VENDAS");
  gotoxy(26,4);
  printf("...::: MENU DE OP€OES :::...");
  gotoxy(34,10);
  printf("1 - CLIENTE");
  gotoxy(34,12);
  printf("2 - FUNCIONARIO");
  gotoxy(34,14);
  printf("3 - VENDAS");
  gotoxy(34,16);
  printf("4 - SAIR");
  gotoxy(34,23);
  printf("Digite uma opcao: ");
  gotoxy(52,23);
  cin>>opc;
  switch(opc)
  {
  case 1:menu_cliente();    break;
  case 2:menu_func();       break;
  case 3:menu_vendas();     break;
  case 4:exit(0);
  default: menu;
	   gotoxy(22,23);
	   printf("Op‡Æo inv lida... Tente novamente...");
	   getch();
	   menu;
  }
}




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
  tela2();
  gotoxy(27,2);
  printf("CADASTRO DE FUNCIONARIOS");
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
     gotoxy(20,8);
     printf("Digite o codigo do funcionario.....:");
     cin>>funcio.code;
     gotoxy(20,9);
     printf("Digite o nome do funcionario.......:");
     cin>>funcio.nome;
     tamanho=tamanho+fwrite(&funcio,sizeof(struct dadosf),1,ffunc1);
     gotoxy(20,23);
     printf("Continuar cadastrando<s> ou <n>:");
     gotoxy(53,23);
     cin>>op;
     op = toupper(op);
     }while (op=='S');
     fclose(ffunc1);
     menu_func();
}

void altfunc(){
     char nom_pro[20];
     int achou;
     int pos=0;
	clrscr();
	tela2();
	gotoxy(26,2);
	printf("ALTERACAO DE FUNCIONARIOS");
	ffunc1=fopen("func1.dat","r+");
	fseek(ffunc1, sizeof(struct dadosf),0);
	gotoxy(20,8);
	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&funcio,sizeof(struct dadosf),1,ffunc1)==1){
		achou=strcmp(funcio.nome,nom_pro);
		pos++;
		if(achou==0){

		   gotoxy(20,10);
		   printf("O Nome ‚.................:%s",funcio.nome);
		   getch();
		   gotoxy(20,14);
		   printf("Digite o novo nome:");
		     cin>>funcio.nome;
		    fseek(ffunc1,pos*sizeof(struct dadosf),SEEK_SET);
		    fwrite(&funcio,sizeof(struct dadosf),1,ffunc1);
		    getch();}}
		    fclose(ffunc1);
		    menu_func();
}

void consfunc()
{
     clrscr();
     tela2();
     gotoxy(26,2);
     printf("CONSULTA DE FUNCIONARIOS");
     ffunc1=fopen("func1.dat","r+");
     fseek(ffunc1,sizeof(struct dadosf),0);

     while(fread(&funcio,sizeof(struct dadosf),1,ffunc1)==1)
      {
	 clrscr();
	 tela2();
	 gotoxy(25,2);
	 printf("CONSULTA DE FUNCIONARIOS");
	 gotoxy(20,8);
	 printf("Nome:        %s",funcio.nome);
	 gotoxy(20,23);
	 printf("Digite enter para continuar...");
	 gotoxy(50,23);
	 getch();
      }
     gotoxy(20,10);
     printf("fim do arquivo");
     fclose(ffunc1);
     getch();
     menu_func();
}

void exclui_registrofunc()
{
     char nom_pro[20];
     int achou;
	int tamanhon=0,tamanhoc=0;
	clrscr();
	tela2();
	gotoxy(23,2);
	printf("EXCLUSAO DE REGISTRO FUNCIONARIO");
	ffunc1=fopen("func1.dat","r+");
	fseek(ffunc1,sizeof(struct dadosf),0);
	cria_arqfunc2();
	ffunc2=fopen("func2.dat","r+");
	fseek(ffunc2,sizeof(struct dadosf),0);

	gotoxy(20,8);
	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&funcio,sizeof(struct dadosf),1,ffunc1)==1){
		achou=strcmp(funcio.nome,nom_pro);
		if(achou==0){
		   gotoxy(20,10);
		   printf("O Nome ‚.................:%s",funcio.nome);
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
	fclose(ffunc1);
	gotoxy(20,14);
	printf("Registro deletado com sucesso...");
	getch();
	menu_func();
}

void exclui_arqfunc(){
    char opex;
    clrscr();
    tela2();
    gotoxy(23,2);
    printf("EXCLUSAO DO ARQUIVO FUNCIONARIO");
    gotoxy(20,10);
    printf("Deleta Arquivo <s> ou <n>? ");
    gotoxy(47,10);
    cin>>opex;
    if (opex == 's')  {
      remove("func1.dat");
      gotoxy(20,14);
      printf("Arquivo Deletado... Agora ja era...");
      getch();}
    else{
      gotoxy(20,14);
      printf("Arquivo nÆo foi deletado por sua op‡Æo...");
      getch();}
    menu_func();
}


// CLIENTES

void cadcli()
{
  clrscr();
  tela2();
  gotoxy(26,2);
  printf("CADASTRO DE CLIENTES");
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
     gotoxy(20,8);
     printf("Digite o codigo do cliente.....:");
     cin>>cliente.cod;
     gotoxy(20,9);
     printf("Digite o nome do cliente.......:");
     cin>>cliente.nome;
     tamanho=tamanho+fwrite(&cliente,sizeof(cliente),1,fcli1);
     gotoxy(20,23);
     printf("Continuar cadastrando<s> ou <n>:");
     gotoxy(53,23);
     cin>>op;
     op = toupper(op);
     }while (op=='S');
     fclose(fcli1);
     menu_cliente();
}

void altcli()
{
     char nom_pro[20];
     int achou;
     int pos=0;
	clrscr();
	tela2();
	gotoxy(27,2);
	printf("ALTERACAO DE CLIENTES");
	fcli1=fopen("cli1.dat","r+");
	fseek(fcli1, sizeof(cliente),0);
	gotoxy(20,8);
	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&cliente,sizeof(cliente),1,fcli1)==1){
		achou=strcmp(cliente.nome,nom_pro);
		pos++;
		if(achou==0){
		   gotoxy(20,10);
		   printf("O Nome ‚.................:%s\n",cliente.nome);
		   getch();
		   gotoxy(20,14);
		   printf("Digite o novo nome: ");
		     cin>>cliente.nome;
		    fseek(fcli1,pos*sizeof(cliente),SEEK_SET);
		    fwrite(&cliente,sizeof(cliente),1,fcli1);
		    getch();}}
		    fclose(fcli1);
		    menu_cliente();
}

void conscli()
{
     clrscr();
     tela2();
     gotoxy(28,2);
     printf("CONSULTA DE CLIENTES");
     fcli1=fopen("cli1.dat","r+");
     fseek(fcli1,sizeof(cliente),0);
     while(fread(&cliente,sizeof(cliente),1,fcli1)==1)
      {
	 clrscr();
	 tela2();
	 gotoxy(28,2);
	 printf("CONSULTA DE CLIENTES");
	 gotoxy(20,8);
	 printf("Nome:        %s",cliente.nome);
	 gotoxy(20,23);
	 printf("Digite enter para continuar...");
	 getch();
      }
     gotoxy(20,10);
     printf("fim do arquivo");
     fclose(fcli1);
     getch();
     menu_cliente();
}

void exregcli()
{
     char nom_pro[20];
     int achou;
	int tamanhon=0,tamanhoc=0;
	clrscr();
	tela2();
	gotoxy(23,2);
	printf("EXCLUSAO DE REGISTRO CLIENTES");
	fcli1=fopen("cli1.dat","r+");
	fseek(fcli1,sizeof(cliente),0);
	cria_arqcliente2();
	fcli2=fopen("cli2.dat","r+");
	fseek(fcli2,sizeof(cliente),0);

	gotoxy(20,8);
	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&cliente,sizeof(cliente),1,fcli1)==1){
		achou=strcmp(cliente.nome,nom_pro);
		if(achou==0){
		   gotoxy(20,10);
		   printf("O Nome ‚.................:%s",cliente.nome);
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
	fclose(fcli1);
	gotoxy(20,14);
	printf("Registro deletado com sucesso...");
	getch();
	menu_cliente();
}


void exarqcli()
{
    char opex;
    clrscr();
    tela2();
    gotoxy(24,2);
    printf("EXCLUSAO DO ARQUIVO CLIENTE");
    gotoxy(20,10);
    printf("Deleta Arquivo <s> ou <n>? ");
    gotoxy(47,10);
    cin>>opex;
    if (opex == 's')  {
      remove("cli1.dat");
      gotoxy(20,14);
      printf("Arquivo Deletado... Agora ja era...");
      getch();}
    else{
      gotoxy(20,14);
      printf("Arquivo nÆo foi deletado por sua op‡Æo...");
      getch();}
    menu_cliente();
}

//VENDAS

void cadastravendas()
{// remove("vendas1.dat");
  int op='S';
  while (op=='S'){
    ffunc1=fopen("func1.dat","r+");
    fvend1 = fopen("vendas1.dat","r+");
     clrscr();
     tela2();
     gotoxy(28,2);
     printf("CADASTRO DE VENDAS");
  int tamanho=0;
  rewind(fvend1);
   do{
    fread(&vendas,sizeof(vendas),1,fvend1);
    tamanho++;}
  while (!feof(fvend1));
  fseek(fvend1,sizeof(vendas),tamanho);
       char opc;
       char resp;
       char chave=0;
     gotoxy(20,8);
     printf("Digite o codigo da venda........: ");
     cin>>vendas.code;
     char nom_pro[20];
     int achou;
     int pos=0;
	do {
	fseek(ffunc1, sizeof(struct dadosf),0);
     gotoxy(20,10);
     printf("Digite o Nome funcionario.......: ");
	cin>> vendas.vend;
	       while(fread(&funcio,sizeof(struct dadosf),1,ffunc1)==1)
	       {
		 achou=strcmp(funcio.nome,vendas.vend);
		 pos++;
		 if(achou==0)
		 {


		   fclose(ffunc1);
		   chave=1;}

		}
	       if(chave==0){
		     gotoxy(10,20);
		     printf("Funcionario nao cadastrado...tecle <0> para abortar...");
		    getch();
		    cin>>opc;
		    if(opc=='0'){
		       menu_vendas();}
		    }
     }while(chave==0);

	     do{
		chave=0;
		fcli1=fopen("cli1.dat","r+");
		fseek(fcli1, sizeof(cliente),0);
		gotoxy(20,12);
		printf("Digite o Nome do cliente........: ");
		cin>> vendas.cli;
		while(fread(&cliente,sizeof(cliente),1,fcli1)==1)
		{
		  achou=strcmp(cliente.nome,vendas.cli);
		  pos++;
		  if(achou==0){
		   chave=1;
		   }
		}
		if(chave==0){
		   gotoxy(8,20);
		   printf("Vendedor nao cadastrado...tecle <1> para cadastrar ou <0> para abortar");
		   cin>>resp;
		   resp=toupper(resp);
		   if(resp=='1'){
		      cadcli();
		      chave=1;}
		      if(resp=='0'){
		      menu_vendas();}}

		      fclose(fcli1);
	      }while(chave==0) ;
	    gotoxy(20,14);
	    printf("Digite o produto................:");
	    cin>>vendas.nome_prod;

	 tamanho=tamanho+fwrite(&vendas,sizeof(struct dadven),1,fvend1);
     gotoxy(20,23);
     printf("Continuar cadastrando <s> ou <n>:");
     gotoxy(54,23);
     cin>>op;
     op = toupper(op);
  }
     fclose(fvend1);
     menu_vendas();
}


void alteravendas()
{
     char nome_pro[20];
     int achou;
     int pos=0;
	clrscr();
	tela2();
	gotoxy(28,2);
	printf("ALTERACAO DE VENDAS");
	fvend1=fopen("vendas1.dat","r+");
	fseek(fvend1, sizeof(struct dadven),0);
	gotoxy(20,8);
	printf("Digite o nome do cliente...: ");
	cin>>nome_pro;
	       while(fread(&vendas,sizeof(struct dadven),1,fvend1)==1){
		achou=strcmp(vendas.cli,nome_pro);
		pos++;
		if(achou==0){
		   gotoxy(20,10);
		   printf("O nome ‚...................:%s",vendas.nome_prod);
		   getch();
		   gotoxy(20,12);
		   printf("Digite o novo produto......:");
		     cin>>vendas.nome_prod;
		    fseek(fvend1,pos*sizeof(struct dadven),SEEK_SET);
		    fwrite(&vendas,sizeof(struct dadven),1,fvend1);
		    getch();}}
		    fclose(fvend1);
		    menu_vendas();
}

void consultavendas()
{
     clrscr();
     tela2();
     gotoxy(28,2);
     printf("CONSULTA DE VENDAS");
     fvend1=fopen("vendas1.dat","r+");
     fseek(fvend1,sizeof(struct dadven),0);

     while(fread(&vendas,sizeof(fvend1),1,fvend1)==1)
      {
	 clrscr();
	 tela2();
	 gotoxy(25,2);
	 printf("CONSULTA DE VENDAS");
	 gotoxy(20,8);
	 printf("Nome:        %s",vendas.nome_prod);
	 gotoxy(20,23);
	 printf("Digite <enter> para continuar...");
	 getch();
      }
     gotoxy(20,14);
     printf("Fim do arquivo...");
     fclose(fvend1);
     getch();
     menu_vendas();
}

void exclui_registrovendas()
{
     char nom_pro[20];
     int achou;
	int tamanhon=0,tamanhoc=0;
	clrscr();
	tela2();
	gotoxy(25,2);
	printf("EXCLUSAO DE REGISTRO VENDAS");
	fvend1=fopen("vendas1.dat","r+");
	fseek(fvend1,sizeof(struct dadven),0);
	if((fvend2=fopen("vendas2.dat","a"))==NULL){
	 clrscr();
	 tela2();
	 gotoxy(25,2);
	 printf("EXCLUSAO DE REGISTRO VENDAS");
	 gotoxy(20,11);
	 printf("Erro de cria‡Æo de arquivo...");
	 getch();
	 return;}
	fvend2=fopen("vendas2.dat","r+");
	fseek(fvend2,sizeof(struct dadven),0);
	gotoxy(20,8);
	printf("Digite o Nome p/ Procura..: ");
	cin>> nom_pro;
	       while(fread(&vendas,sizeof(fvend1),1,fvend1)==1){
		achou=strcmp(vendas.nome_prod,nom_pro);
		if(achou==0){
		   gotoxy(20,10);
		   printf("O Nome ‚.................: %s",vendas.nome_prod);
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
	fclose(fvend1);
	menu_vendas();
}

void exclui_arqvendas(){
    char opex;
    clrscr();
    tela2();
    gotoxy(24,2);
    printf("EXCLUSAO ARQUIVO VENDAS");
    gotoxy(20,10);
    printf("Deleta Arquivo <s> ou <n>?: ");
    gotoxy(48,10);
    cin>>opex;
    if (opex == 's')  {
      remove("vendas1.dat");
      gotoxy(20,14);
      printf("Arquivo Deletado... Agora ja era...");
      getch();}
    else{
      gotoxy(20,14);
      printf("Arquivo nao foi deletado por sua op‡Æo...");
      getch();}
      menu_vendas();
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


