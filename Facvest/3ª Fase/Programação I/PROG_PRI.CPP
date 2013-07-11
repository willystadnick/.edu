#include <fstream.h>
#include <iostream.h>
#include"trab.h"

void main() {
 int op;
 cliente cli;
 funcionario func;     /*declaracao dos objetos de uso do programa*/
 nota_fiscal nota;
 fstream fioc, fiof, fiov;  /* declara o objeto de manipulacao de arquivo
			       cliente, func., vendas */
 fioc.open("cliente.dat",ios::out|ios::in|ios::ate);
 fiof.open("funcionario.dat",ios::out|ios::in|ios::ate);
 fiov.open("vendas.dat", ios::out|ios::in|ios::ate);

 //Manipulacao dos objetos e arquivos
 do{clrscr();
    //menu de opcoes
    cout<<"     MENU DE OPCOES   ";
    cout<<"\n 1-Cliente";
    cout<<"\n 2-Funcionario";
    cout<<"\n 3-Nota fiscal";
    cout<<"\n Entre com a opcao: ";
    cin>>op;

    switch(op)
     {
       case 1:
       { cout<<"\n Menu de opcoes cliente";
	 cout<<"\n 1-Cadastro";
	 cout<<"\n 2-Consulta";
	 cout<<"\n 3-Alterar";
	 cout<<"\n 4-Excluir";
	 cout<<"\n 5-Sair";
	 cout<<"\n opcao:";
	 op=getch();
	 switch(op){
	  case 1: {
	   cli.cadastro();
	   cli.saldo_dev(); break;}
	 case 2: { cli.consulta(); break;}
	 case 3: {cli.alterar();break;}
	 case 4: {cli.excluir();break}
	 }
	 while (op!=5);
	 case 2:
	 { do
	  {clrscr();
	  cout<<"\n Menu de opcoes de funcionario";
	   cout<<"\n 1-Cadastro";
	   cout<<"\n 2-Consulta";
	   cout<<"\n 3-Alterar";
	   cout<<"\n 4-Excluir";
	   cout<<"\n 5-Sair";
	   cout<<"\n opcao:";
	   op=getch();
	   switch(op){
	    case 1:{
	     func.cadastro();
	     func.salario_liq();
	     func.calculo_tot_vend(); break;}
	    case 2:{ func.consulta(); break;}
	    case 3:{ func.alterar(); break;}
	    case 4: