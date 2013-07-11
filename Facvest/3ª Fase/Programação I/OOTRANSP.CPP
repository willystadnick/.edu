/*
Exerc°cio:
Faáa a an†lise Orientada a Objeto e sua codificaá∆o,
referente ao seguinte problema:
Uma empresa de transportes deseja controlar uma frota
aÇrea, mar°tima e terrestre. Crie um programa que
permita a inclus∆o, exclus∆o e consulta de todos os
transportes (usar arquivos)

Classe Abstrata:		Transporte
						atributos
						funá‰es

Classes/Objetos		AÇreo	Mar°timo	Terrestre
					atrib	atrib		atrib
					func	func		func

						Carga	Passeio
						atrib   atrib
						func	func
*/
#include <iostream.h>
#include <conio.h>
#include <stdio.h>
#include <ctype.h>

char op1='N', op2='N', op3='N';

class transporte{
 char descricao[30], deleta_descricao[30];
 public:
  void criar_arquivo(){};
  void incluir(){
   clrscr();
   cout<<"\nDescriá∆o: "; cin>>descricao;};
  void excluir(){
   clrscr();
   cout<<"\nDescriá∆o a Excluir: "; cin>>deleta_descricao;};
  void consultar(){
   clrscr();
   cout<<"\nDescriá∆o: "; cout<<descricao;}};

 class aereo:public transporte{
  char metodo[30];
  public:
   void incluir_aereo(){
	incluir();
	cout<<"\nAsa ou HÇlice: "; cin>>metodo;}};

 class maritimo:public transporte{
  char local[30];
  public:
   void incluir_maritimo(){
	incluir();
	cout<<"\nRio ou Mar: "; cin>>local;}};

 class terrestre:public transporte{
  int rodas;
  public:
   void incluir_terrestre(){
	incluir();
	cout<<"\nNro de Rodas: "; cin>>rodas;}};

  class carga:public aereo, maritimo, terrestre{
  int capacidade;
  public:

	void incluir_carga(){

	 clrscr();

//	 do{

//	  switch(op3){
//	   case 'A' :
	   aereo::incluir_aereo();// break;
//	   case 'M' : maritimo::incluir_maritimo(); break;
//	   case 'T' : terrestre::incluir_terrestre(); break;
//	   default : cout<<"\nErro de Escolha...";}

//	 }while((op3 != 'A') || (op3 != 'M') || (op3 != 'T'))

	 cout<<"\nCapacidade de Carga: "; cin>>capacidade;
	 cout<<"Pressione algo para concluir a inclusao"; getch();}};

  class passageiro:public aereo, maritimo, terrestre{
   int lotacao;
   public:
	void incluir_passageiro(){
	 clrscr();
/*	 do{
	  switch(op3)
	   case 'A' :*/ aereo::incluir_aereo();// break;
//	   case 'M' :maritimo::incluir_maritimo(); break;
//	   case 'T' :terrestre::incluir_terrestre(); break;
//	   default : cout<<"\nErro de Escolha...";
//	 }while((op3 != 'A') || (op3 != 'M') || (op3 != 'T'))
	 cout<<"Quantos Lugares? "; cin>>lotacao;
	 cout<<"Pressione algo para concluir a inclusao"; getch();}};

	 carga objc;
 passageiro objp;


void menu(){
 clrscr();
 printf("Selecione a Aáao:");
 printf("\n");
 printf("I - Incluir\n");
 printf("E - Excluir\n");
 printf("O - Consultar\n");
 printf("Digite uma opcao\n");
 cin>>op1;
 op1 = toupper(op1);

 printf("Selecione o Tipo:");
 printf("\n");
 printf("C - Carga\n");
 printf("P - Passageiro\n");
 printf("Digite uma opcao\n");
 cin>>op2;
 op2 = toupper(op2);

 printf("Selecione o Meio:");
 printf("\n");
 printf("A - AÇreo\n");
 printf("M - Mar°timo\n");
 printf("T - Terrestre\n");
 printf("Digite uma opcao\n");
 cin>>op3;
 op3 = toupper(op3);

 //incluir carga
 if(op2 == 'C' && op1 == 'I')

 {objc.incluir_carga();}
 //incluir passageiro
 if(op2=='P' && op1=='I'){objp::incluir_passageiro();};}

void main(){
 clrscr();
 menu();}