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
		       os campos endereáo e idade.
      -	Endreáo
      -	Idade
      -	C¢digo Funcion rio
      -	Nome Funcion rio - Localizar o funcion rio
			   no arquivo "Funcion rio" e
			   trazer o nome dele.
      -	Descriá∆o Venda
      -	Valor Venda
*/


//Programa Arquivo/Vendas


#include<conio.h>
#include<stdio.h>
#include<stdlib.h>
#include<iostream.h>
#include<ctype.h>
#include<io.h>
#include<dos.h>
#include<string.h>

void tela();
void menu();
void menu_cliente();
void menu_func();
void menu_vendas();
void cria_arqfunc();
void cria_arqcliente();
void cria_arqvendas();
void cadastrafuncionario();
void alterafuncionario();
void consultafuncionario();
void exclui_registrofunc();
void exclui_arqfunc();
void cadastracliente();
void alteracliente();
void consultacliente();
void exclui_registrocliente();
void exclui_arqcliente();
void cadastravendas();
void alteravendas();
void consultavendas();
void exclui_registrovendas();
void exclui_arqvendas();



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


//-----------------------------BORDAS E PAIAÄADINHAS NA TELA--------//


void tela(){

     int i=1;

     do {
	 gotoxy(i+1,1);
	 printf("Õ");
	 gotoxy(i+1,3);
	 printf("Õ");
	 gotoxy(i+1,5);
	 printf("Õ");
	 gotoxy(i+1,22);
	 printf("Õ");
	 gotoxy(i+1,24);
	 printf("Õ");
	 i++;
	 }while(i<78);
     i=1;

     do {
	 gotoxy(1,i+1);
	 printf("∫");
	 gotoxy(79,i+1);
	 printf("∫");
	 i++;
	 }while(i<23);

     gotoxy(1,1);
     printf("…");
     gotoxy(79,1);
     printf("-");
     gotoxy(1,3);
     printf("Ã");
     gotoxy(79,3);
     printf("π");
     gotoxy(1,5);
     printf("Ã");
     gotoxy(79,5);
     printf("π");
     gotoxy(1,22);
     printf("Ã");
     gotoxy(79,22);
     printf("π");
     gotoxy(1,24);
     printf("»");
     gotoxy(79,24);
     printf("º");
}

//void center();

//     gotoxy(39-(strlen(texto)


//--------------------MENUS PRINCIPAIS--------------------------//

void menu_cliente()
{
  clrscr();
  tela();
  gotoxy(15,2);
  printf("TRABALHO ARQUIVO - CLIENTES / FUNCIONARIOS / VENDAS");
  gotoxy(20,4);
  printf("...::: MENU DE OPÄOES (CLIENTES) :::...");
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
  case 1:cadastracliente();           break;
  case 2:alteracliente();      	      break;
  case 3:consultacliente();    	      break;
  case 4:exclui_registrocliente();    break;
  case 5:exclui_arqcliente();         break;
  case 6:menu();
  }
}

void menu_func()
{
  clrscr();
  tela();
  gotoxy(15,2);
  printf("TRABALHO ARQUIVO - CLIENTES / FUNCIONARIOS / VENDAS");
  gotoxy(18,4);
  printf("...::: MENU DE OPÄOES (FUNCIONARIOS) :::...");
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
  case 1:cadastrafuncionario();    break;
  case 2:alterafuncionario();      break;
  case 3:consultafuncionario();    break;
  case 4:exclui_registrofunc();    break;
  case 5:exclui_arqfunc();         break;
  case 6:menu();
  }
}


void menu_vendas()
{
  clrscr();
  tela();
  gotoxy(15,2);
  printf("TRABALHO ARQUIVO - CLIENTES / FUNCIONARIOS / VENDAS");
  gotoxy(22,4);
  printf("...::: MENU DE OPÄOES (VENDAS) :::...");
  gotoxy(31,8);
  printf("1 - GERAR VENDA");
  gotoxy(31,10);
  printf("2 - ALTERAR");
  gotoxy(31,12);
  printf("3 - EXCLUIR REGISTRO");
  gotoxy(31,14);
  printf("4 - EXCLUIR ARQUIVO");
  gotoxy(31,16);
  printf("5 - VOLTAR AO MENU...");
  gotoxy(31,23);
  printf("Digite uma opcao: ");
  gotoxy(49,23);
  cin>>opc;
  switch(opc)
  {
  case 1:cadastravendas();   	     break;
  case 2:alteravendas();      	     break;
  case 3:exclui_registrovendas();    break;
  case 4:exclui_arqvendas();         break;
  case 5:menu();
  }
}


void menu()
{
  clrscr();
  tela();
  gotoxy(15,2);
  printf("TRABALHO ARQUIVO - CLIENTES / FUNCIONARIOS / VENDAS");
  gotoxy(26,4);
  printf("...::: MENU DE OPÄOES :::...");
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
  default:
	  clrscr();
	  tela();
	  gotoxy(35,12);
	  printf("Opáao Inv lida...");
	  delay(2000);
	  menu();
  }
}




//-------------------------------- Criar Arquivos ------------------//

// FUNCIONARIOS

void cria_arqfunc()
{

     if ((ffuncionario1 = fopen("func1.dat","a"))==NULL)
     {
	printf("Erro de criacao do arquivo");
	return;
     }
     fclose(ffuncionario1);

     if ((ffuncionario2 = fopen("func2.dat","a"))==NULL)
     {
	printf("Erro de criacao do arquivo");
	return;
     }
     fclose(ffuncionario2);
}

// CLIENTES

void cria_arqcliente()
{
     if ((fcliente1 = fopen("clie1.dat","a"))==NULL)
     {
	printf("Erro de cricao do arquivo");
	return;
     }
     fclose(fcliente1);

     if ((fcliente2 = fopen("clie2.dat","a"))==NULL)
     {
	printf("Erro de cricao do arquivo");
	return;
     }
     fclose(fcliente2);
}

// VENDAS

void cria_arqvendas()
{
     if ((fvendas1 = fopen("vend1.dat","a"))==NULL)
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
  char op;
  int tamanho=0;
  ffuncionario1 = fopen("func1.dat","r+");
  rewind(ffuncionario1);
  do{
  fread(&funcio,sizeof(funcio),1,ffuncionario1);
  tamanho++;}
  while (!feof(ffuncionario1));
  fseek(ffuncionario1,sizeof(funcio),tamanho);
  do
  {
     gotoxy(30,2);
     printf("CADASTRO DE FUNCIONARIOS");
     gotoxy(10,7);
     printf("Digite o codigo do funcionario.....:");
     cin>>funcio.code;
     gotoxy(10,8);
     printf("Digite o nome do funcionario.......:");
     cin>>funcio.nome;
     tamanho=tamanho+fwrite(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1);
     gotoxy(20,23);
     printf("Continuar cadastrando<s> ou <n>:");
     gotoxy(53,23);
     cin>>op;
     op = toupper(op);
     }while (op=='S');
     fclose(ffuncionario1);
     menu_func();
}

void alterafuncionario(){
     char nom_pro[20];
     int achou;
     int pos=0;
	clrscr();
	ffuncionario1=fopen("func1.dat","r+");
	fseek(ffuncionario1, sizeof(struct dados_funcionario),0);
	printf("Digite o Nome p/ Procura : ");
	cin>>nom_pro;
	 while(fread(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1)==1){
	  achou=strcmp(funcio.nome,nom_pro);
	  pos++;
	  if(achou==0){
	   printf("\nO Nome Ç: %s\n",funcio.nome);
	   getch();
	   printf("\nDigite o novo nome: ");
	   cin>>funcio.nome;
	   fseek(ffuncionario1,pos*sizeof(struct dados_funcionario),SEEK_SET);
	   fwrite(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1);
	   getch();}
	   else{
	    printf("Nome n∆o localizado");
	    getch();}}
	 fclose(ffuncionario1);}

void consultafuncionario(){
     clrscr();
     char op='A';
     ffuncionario1=fopen("func1.dat","r+");
//   fseek(ffuncionario1,sizeof(struct dados_funcionario),0);
     rewind(ffuncionario1);
     while((fread(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1)==1) || (op!='S')){
	 clrscr();
	 printf("Nome: %s\n",funcio.nome);
	 printf("\nProximo item <P> - Sair <S>\n");
	 cin>>op;
//       op=getch();
	 op=toupper(op);}
     fclose(ffuncionario1);}

void exclui_registrofunc()
{
     char nom_pro[20];
     int achou;
	int tamanhon=0,tamanhoc=0;
	clrscr();
	ffuncionario1=fopen("func1.dat","r+");
	fseek(ffuncionario1,sizeof(struct dados_funcionario),0);
	if((ffuncionario2=fopen("func2.dat","a"))==NULL){
	 clrscr();
	 printf("Erro de criaáao de arquivo");
	 return;}
	ffuncionario2=fopen("func2.dat","r+");
	fseek(ffuncionario2,sizeof(struct dados_funcionario),0);

	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&funcio,sizeof(ffuncionario1),1,ffuncionario1)==1){
		achou=strcmp(funcio.nome,nom_pro);
		if(achou==0){
		   printf("\nO Nome Ç.................:%s\n",funcio.nome);
		   printf("_____________________________________________\n");
		   getch();
		   }
		   else{
	       tamanhon=tamanhon+fwrite(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1);}}

	   fclose(ffuncionario1);
	   remove("func1.dat");
	   cria_arqfunc();
	   fseek(ffuncionario1,sizeof(struct dados_funcionario),0);
	   ffuncionario1=fopen("func1.dat","r+");
	   fseek(ffuncionario1,sizeof(struct dados_funcionario),0);
	while(fread(&funcio,sizeof(ffuncionario1),1,ffuncionario2)==1) {
	  tamanhoc=tamanhoc+fwrite(&funcio,sizeof(struct dados_funcionario),1,ffuncionario1);}
	fclose(ffuncionario2);
	remove("func2.dat");
	fclose(ffuncionario1);}

void exclui_arqfunc(){
    char opex;
    printf("Deleta Arquivo <s> ou <n>? ");
    cin>>opex;
    if (opex == 's')  {
      remove("func1.dat");
      printf("Arquivo Deletado");}
    else
      printf("Arquivo n∆o foi deletado por sua opá∆o");
    getch();}



// CLIENTES

void cadastracliente()
{
  clrscr();
  char op;
  int tamanho=0;
  fcliente1 = fopen("clie1.dat","r+");
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
     }while(op=='S');
     fclose(fcliente1);
}

void alteracliente(){
 char nom_pro[20];
 int achou, pos=1;
 clrscr();
 fcliente1=fopen("clie1.dat","r+");
 fseek(fcliente1, sizeof(cliente),0);
 printf("\nDigite o Nome p/ Alterar : ");
 cin>>nom_pro;
 while(fread(&cliente,sizeof(cliente),1,fcliente1)==1){
  achou=strcmp(cliente.nome,nom_pro);
  pos++;
  if(achou==0){
   printf("\nNome Antigo: %s",cliente.nome);
   printf("\nNovo Nome: "); cin>>cliente.nome;
   fseek(fcliente1,pos*sizeof(cliente),SEEK_SET);
   fwrite(&cliente,sizeof(cliente),1,fcliente1);
   printf("\nAlteraá∆o realizada com sucesso");}
   else printf("Nome n∆o encontrado");}
 delay(1000);
 fclose(fcliente1);}

void consultacliente(){
 clrscr();
 fcliente1=fopen("clie1.dat","r+");
 fseek(fcliente1,sizeof(cliente),0);
 while(fread(&cliente,sizeof(fcliente1),1,fcliente1)==1){
  printf("Nome: %s\n",cliente.nome);
  printf("Digite enter para continuar\n");
  getch();}
 fclose(fcliente1);}

void exclui_registrocliente(){
     char nom_pro[20];
     int achou;
	int tamanhon=0,tamanhoc=0;
	clrscr();
	fcliente1=fopen("fclie1.dat","r+");
	fseek(fcliente1,sizeof(struct dados_cliente),0);
	if((fcliente2=fopen("clie2.dat","a"))==NULL){
	 clrscr();
	 printf("Erro de criaáao de arquivo");
	 return;}
	fcliente2=fopen("clie2.dat","r+");
	fseek(fcliente2,sizeof(struct dados_cliente),0);

	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&cliente,sizeof(fcliente1),1,fcliente1)==1){
		achou=strcmp(cliente.nome,nom_pro);
		if(achou==0){
		   printf("\nO Nome Ç.................:%s\n",cliente.nome);
		   printf("_____________________________________________\n");
		   getch();
		   }
		   else{
	       tamanhon=tamanhon+fwrite(&cliente,sizeof(struct dados_cliente),1,fcliente1);}}

	   fclose(fcliente1);
	   remove("clie1.dat");
	   cria_arqcliente();
	   fseek(fcliente1,sizeof(struct dados_cliente),0);
	   fcliente1=fopen("clie1.dat","r+");
	   fseek(fcliente1,sizeof(struct dados_cliente),0);
	while(fread(&cliente,sizeof(fcliente1),1,fcliente2)==1) {
	  tamanhoc=tamanhoc+fwrite(&cliente,sizeof(struct dados_cliente),1,fcliente1);}
	fclose(fcliente2);
	remove("clie2.dat");
	fclose(fcliente1);}

void exclui_arqcliente(){
 char op;
 clrscr();
 printf("\nDeleta Arquivo <s> ou <n>? ");
 cin>>op;
 op=toupper(op);
 if(op == 'S'){
   remove("clie1.dat");
   printf("\nArquivo Deletado");}
  else printf("\nArquivo n∆o foi deletado por sua opá∆o");
 delay(1000);}

// VENDAS

void cadastravendas()
{
  clrscr();

  int tamanho=0;
  fvendas1 = fopen("vend1.dat","r+");
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
	fvendas1=fopen("vend1.dat","r+");
	fseek(fvendas1, sizeof(struct dados_vendas),0);
	printf("Digite o nome p/ Procura : ");
	cin>>nome_pro;
	       while(fread(&vendas,sizeof(struct dados_vendas),1,fvendas1)==1){
		achou=strcmp(vendas.nome_prod,nome_pro);
		pos++;
		if(achou==0){

		   printf("\nO nome Ç.................:%s\n",vendas.nome_prod);
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
     fvendas1=fopen("vend1.dat","r+");
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
	fvendas1=fopen("vend1.dat","r+");
	fseek(fvendas1,sizeof(struct dados_vendas),0);
	if((fvendas2=fopen("vendas2.dat","a"))==NULL){
	 clrscr();
	 printf("Erro de criaáao de arquivo");
	 return;}
	fvendas2=fopen("vendas2.dat","r+");
	fseek(fvendas2,sizeof(struct dados_vendas),0);

	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&vendas,sizeof(fvendas1),1,fvendas1)==1){
		achou=strcmp(vendas.nome_prod,nom_pro);
		if(achou==0){
		   printf("\nO Nome Ç.................:%s\n",vendas.nome_prod);
		   printf("_____________________________________________\n");
		   getch();
		   }
		   else{
	       tamanhon=tamanhon+fwrite(&vendas,sizeof(struct dados_vendas),1,fvendas1);}}

	   fclose(fvendas1);
	   remove("vend1.dat");
	   cria_arqvendas();
	   fseek(fvendas1,sizeof(struct dados_vendas),0);
	   fvendas1=fopen("vend1.dat","r+");
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
      remove("vend1.dat");
      printf("Arquivo Deletado");}
    else
      printf("Arquivo n∆o foi deletado por sua opá∆o");
    getch();}





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
