#include <iostream.h>
#include <conio.h>
#include <stdio.h>

class pessoa{
 char nome[30];
 char endereco[40];
 int  idade;
 char rg[10];
 char cpf[20];
 public:
  void cadastra() {
   clrscr();
   cout<<"Entre com o nome:     -> "; cin>>nome;
   cout<<"Entre com o endereco: -> "; cin>>endereco;
   cout<<"Entre com a Idade:    -> "; cin>>idade;}

  void consulta(){
   clrscr();
   cout<<"\nNome                -> "; cout<<nome;
   cout<<"\nEndereco            -> "; cout<<endereco;
   cout<<"\nIdade               -> "; cout<<idade;}

   };

class funcionario:public pessoa{
 float salario;
 int   tempo_casa;
 char  cargo[20];
 public:
  void compcadastraF();
  void compconsultaF();};


  void funcionario::compcadastraF(){
   cadastra();
   cout<<"Salario               -> "; cin>>salario;
   cout<<"Tempo de casa         -> "; cin>>tempo_casa;
   cout<<"Cargo                 -> "; cin>>cargo;}
  void funcionario::compconsultaF(){
   consulta();
   cout<<"\nSalario             -> "; cout<<salario;
   cout<<"\nTempo de casa       -> "; cout<<tempo_casa;
   cout<<"\nCargo               -> "; cout<<cargo;
   getch();}

class cliente:public pessoa{
 float renda;
 char local_trabalho;
 float limite_compra;
  public:
   void cliente::compcadastraC(){
    cadastra();
    cout<<"Renda                -> "; cin>>renda;
    cout<<"Local Trabalho       -> "; cin>>local_trabalho;
    cout<<"Limite de compra     -> "; cin>>limite_compra;}
   void cliente::compconsultaC(){
    consulta();
    cout<<"\nRenda              -> "; cout<<renda;
    cout<<"\nLocal Trabalho     -> "; cout<<local_trabalho;
    cout<<"\nLimite de Compra   -> "; cout<<limite_compra;
    getch();}};

void main(){
 funcionario objfunc;
 cliente objcli;
 clrscr();
 objfunc.compcadastraF();
 objfunc.compconsultaF();
 objcli.compcadastraC();
 objcli.compconsultaC();}