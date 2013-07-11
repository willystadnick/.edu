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
  printf("Õ");}

void center(char texto[70], int y){
 gotoxy(40 - strlen(texto) / 2, y);
 printf(texto);}

void criar(){
  if ((fcliente = fopen("clientes.dat","a")) == NULL){
    clrscr();
    linha(1);
    linha(3);
    center("Erro de Criaá∆o de Arquivo", 2);
    return;}
  fclose(fcliente);}

// fcliente Ç o nome l¢gico e clientes.dat Ç o nome f°sico

void cadastrar(){
  char op;
  int tamanho;
  clrscr();
  linha(1);
  linha(3);
  center("Cadastro",2);
  fcliente = fopen("clientes.dat","r+");
  rewind (fcliente);// rewind aponta para a primeira posiá∆o
  do{
    fread(& cliente, sizeof(cliente),1,fcliente);
    tamanho++;}
  while (!feof(fcliente));
  fseek(fcliente,sizeof(cliente), tamanho);
  // fseek aponta para a posiá∆o tamanho do arquivo cliente
  do {
	 gotoxy(1,5); clreol();
	 gotoxy(1,6); clreol();
	 gotoxy(1,7); clreol();
	 gotoxy(1,23); clreol();
	 gotoxy(3,5); clreol(); cout<<"Nome do Cliente: ";
	 cin>>cliente.nome;

  /*
	 gets là apenas string que Ç um conjunto de char
	 getch là apenas um caractere ambos nÉo mostram no v°deo o que foi digitado,
	 getche grava um caracter e mostra no v°deo
  */
	 gotoxy(3,6); clreol(); cout<<"Endereáo do Cliente: ";
	 cin>>cliente.endereco;
	 gotoxy(3,7); clreol(); cout<<"Idade do Cliente: ";
	 cin>>cliente.idade;

	 // comandos de entrada em c++ s∆o substitu°dos por cin<<
	 // comandos de sa°da s∆o substitu°dos por cout<<

	 tamanho = tamanho + fwrite(& cliente, sizeof(cliente),1,fcliente);
	 linha(22);
	 linha(24);
	 center("Deseja Cadastrar Novamente <S/N>", 23);
	 cin>>op;
	 op = toupper(op);}while(op == 'S');
fclose(fcliente);
linha(22);
linha(24);
center("Registros Gravados com Sucesso", 20);
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
	 gotoxy(3,7); clreol(); cout<<"Endereáo: "<<cliente.endereco;
	 gotoxy(3,8); clreol(); cout<<"Idade:    "<<cliente.idade;
	 linha(22);
	 linha(24);
	 center("<P> para Ver o Pr¢ximo Cadastro :: <M> para Voltar ao Menu Principal",23);
	 op = getch();
	 op = toupper(op);
	 if(feof(fcliente))
	  center("Final do Arquivo", 20);
	 }while(!feof(fcliente) && (op != 'M'));
  fclose(fcliente);
  linha(22);
  linha(24);
  gotoxy(1,23); clreol();
  center("Pressione Alguma Tecla para Voltar ao Menu Principal",23);
  getch();
  menu();}

void alterar(){
 char nom_pro[20];
 int achou;
 int pos=0;
 clrscr();
 linha(1);
 linha(3);
 center("Alteracao",2);
 fp=fopen("cliente.dat","r+");
 fseek(fp,sizeof(struct dados),0);
 gotoxy(2,5); printf("Digite o Nome para Procura: ");
 cin>> nom_pro;
 while(fread(&cliente,sizeof(cliente),1,fp)==1){
  achou=strcmp(cliente.nome,nom_pro);
  pos++;
  if(achou==0){
	gotoxy(2,7); printf("\nO Nome Ç.................:%s\n",cliente.nome);
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
  center("Escolha a Opá∆o: ", 23);
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
