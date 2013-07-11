
#include<conio.h>
#include<stdio.h>
#include<stdlib.h>
#include<iostream.h>
#include<ctype.h>
#include<io.h>
#include<string.h>
#include<dos.h>

void main();
struct dados
       {
       char nome[20];
       char ende[20];
       int idade;
       }cliente;

FILE *fp;
FILE *pf;
char op;
int tam;
char opc;

void cria_arq1(){
	 if((pf=fopen("novo.dat","a"))==NULL){
	clrscr();
	printf("Erro de criaáao de arquivo");
	return;
	  }
	 fclose(pf);
}

void cria_arq()
{
     if ((fp = fopen("cliente.dat","a"))==NULL)
     {
	printf("Erro de criacao do arquivo");
	return;
     }
     printf("Arquivo Criado");
     delay(1000);
     fclose(fp);
}

void cadastra()
{
  clrscr();
  int tamanho=0;
  fp = fopen("cliente.dat","r+");
  rewind(fp);
  do{
  fread(&cliente,sizeof(cliente),1,fp);
  tamanho++;}
  while(!feof(fp));

  fseek(fp,sizeof(cliente),tamanho);
  do
  {
     clrscr();
     printf("\nDigite o nome do cliente:");
     cin>>cliente.nome;
     printf("\nDigite o endereco:");
     cin>>cliente.ende;
     printf("Digite a idade:");
     cin>>cliente.idade;
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
     fp=fopen("cliente.dat","r+");
     fseek(fp,sizeof(struct dados),0);

     while(fread(&cliente,sizeof(cliente),1,fp)==1)
      {
	 clrscr();
	 printf("Nome:        %s\n",cliente.nome);
	 printf("endereco:        %s\n",cliente.ende);
	 printf("Idade:       %d\n",cliente.idade);
	 printf("\nDigite enter para continuar\n");
	 getch();
      }
     printf("fim do arquivo");
     fclose(fp);
     getch();}

void consulta_nome(){
     char nom_pro[20];
     int achou,
	 cont=0;
	clrscr();
	fp=fopen("cliente.dat","r+");
	fseek(fp,sizeof(struct dados),0);
	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&cliente,sizeof(cliente),1,fp)==1){
		achou=strcmp(cliente.nome,nom_pro);
		if(achou==0){
		   printf("\nO Nome Ç.................:%s\n",cliente.nome);
		   printf("\nO endereco e.................:%s\n",cliente.nome);
		   printf("A Idade Ç................:%d\n",cliente.idade);
		   printf("_____________________________________________\n");
		   getch();
		   cont=1;}}

		if(cont==0){
		    printf("Nome n∆o Cadastrado\n");
		    printf("\nCadastrar Cliente<s> ou <n>:");
		    cin>>op;
		    op = toupper(op);
		    if (op=='S'){
		    cadastra();
		    getch();}}}

void altera(){
     char nom_pro[20];
     int achou;
     int pos=0;
	clrscr();
	fp=fopen("cliente.dat","r+");
	fseek(fp,sizeof(struct dados),0);
	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&cliente,sizeof(cliente),1,fp)==1){
		achou=strcmp(cliente.nome,nom_pro);
		pos++;
		if(achou==0){

		   printf("\nO Nome Ç.................:%s\n",cliente.nome);
		   printf("\nO endereco Ç.................:%s\n",cliente.nome);
		   printf("A Idade Ç................:%d\n",cliente.idade);
		   printf("_____________________________________________\n");
		   getch();
		   printf("\nDigite o nome do cliente:");
		     cin>>cliente.nome;
		   printf("\nDigite o endereco:");
		     cin>>cliente.ende;
		   printf("Digite a idade:");
		     cin>>cliente.idade;
		    fseek(fp,pos*sizeof(struct dados),SEEK_SET);
		    fwrite(&cliente,sizeof(struct dados),1,fp);
		    getch();}}
		    fclose(fp);}


void exclui()
{
     char nom_pro[20];
     int achou;
	int tamanhon=0,tamanhoc=0;
	clrscr();
	fp=fopen("cliente.dat","r+");
	fseek(fp,sizeof(struct dados),0);
	cria_arq1();
	pf=fopen("novo.dat","r+");
	fseek(pf,sizeof(struct dados),0);

	printf("Digite o Nome p/ Procura : ");
	cin>> nom_pro;
	       while(fread(&cliente,sizeof(cliente),1,fp)==1){
		achou=strcmp(cliente.nome,nom_pro);
		if(achou==0){
		   printf("\nO Nome Ç.................:%s\n",cliente.nome);
		   printf("\nO endereco Ç.................:%s\n",cliente.ende);
		   printf("A Idade Ç................:%d\n",cliente.idade);
		   printf("_____________________________________________\n");
		   getch();
		   }
		   else{
	       tamanhon=tamanhon+fwrite(&cliente,sizeof(struct dados),1,pf);}}

	   fclose(fp);
	   remove("cliente.dat");
	   cria_arq();
	   fseek(pf,sizeof(struct dados),0);
	   fp=fopen("cliente.dat","r+");
	   fseek(fp,sizeof(struct dados),0);
	while(fread(&cliente,sizeof(cliente),1,pf)==1) {
	  tamanhoc=tamanhoc+fwrite(&cliente,sizeof(struct dados),1,fp);}
	fclose(pf);
	remove("novo.dat");
	fclose(fp);}

void excl_arq(){
    char opex;
    printf("Deleta Arquivo <s> ou <n>? ");
    cin>>opex;
    if (opex == 's')  {
      remove("cliente.dat");
      printf("arquivo deletado");}
    else
      printf(" arquivo n∆o foi deletado por sua opá∆o");
    getch();}

void menu()
{
  clrscr();
  printf("Menu de opcoes");
  printf("\n");
  printf("1 - Cadastrar\n");
  printf("2 - Listar\n");
  printf("3 - Consultar Por Nome\n");
  printf("4 - Excluir Arquivo\n");
  printf("5 - Cria Arquivo Novo\n");
  printf("6 - Altera Registro\n");
  printf("7 - Exclui Registro\n");
  printf("8 - Sair\n");
  printf("Digite uma opcao\n");
  cin>>opc;
 switch(opc)
  {
  case '1':cadastra();break;
  case'2':consulta();break;
  case 3:consulta_nome();break;
  case 4:excl_arq();break;
  case 5:cria_arq();break;
  case 6:altera();break;
  case 7:exclui();break;
  case 8:exit(0);break;
  default:menu();
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
  while (op!=8);
}
