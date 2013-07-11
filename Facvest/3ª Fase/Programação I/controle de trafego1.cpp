#include <iostream.h>
#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
#include <fstream.h>

void menu_cadastro();
void menu_consulta();
void menu_principal();
void menu_cadastra_carga();
void menu_cadastra_passeio();
void menu_consulta_carga();
void menu_consulta_passeio();
void tela();
void lista_arq_carga();
void lista_arq_passeio();
void abre_arquivos();
void grava_arq_carga();
void grava_arq_passeio();

int tipo_transporte;
int aviso_cadastro_carga;

void tela(){
 int i, x, y;
 x = 1; y = 1;
 gotoxy(x,y); printf("é");
 gotoxy(1,24); printf("è");
 gotoxy(78,24); printf("¼");
 gotoxy(78,1); printf("»");
 gotoxy(30,2); printf("controle de frota");
 for(i=2; i<78; i++){
  gotoxy(i,1); printf("í");
  gotoxy(i,24); printf("í");
  gotoxy(i,3); printf("í");}
 //barra laterais e miolo
 for (i=2; i<24; i++){
  gotoxy(1,i); printf("º");
  gotoxy(78,i); printf("º");}
 //brara titulo
 gotoxy(1,3); printf("ì");
 gotoxy(78,3); printf("¹");
 gotoxy(2,3);}

class transporte{
 char marca[30], modelo[40], identificacao[40], combustivel[15];
 float peso_limite;
 int potencia;
 public:
  void cadastra(){
   gotoxy(15,10); cout<<"marca -> "; cin>>marca;
   gotoxy(15,11); cout<<"modelo -> "; cin>>modelo;
   gotoxy(15,12); cout<<"identificacao -> "; cin>>identificacao;
   gotoxy(15,13); cout<<"peso limite kg -> "; cin>>peso_limite;
   gotoxy(15,14); cout<<"combustivel -> "; cin>>combustivel;
   gotoxy(15,15); cout<<"potencia hp -> "; cin>>potencia;}
  void consulta(){
   clrscr();
   tela();
   gotoxy(15,10); cout<<"marca -> "<<marca;
   gotoxy(15,11); cout<<"modelo -> "<<modelo;
   gotoxy(15,12); cout<<"identificacao -> "<<identificacao;
   gotoxy(15,13); cout<<"peso limite kg -> "<<peso_limite;
   gotoxy(15,14); cout<<"combustivel -> "<<combustivel;
   gotoxy(15,15); cout<<"potencia hp -> "<<potencia;}};

class aereo: public transporte{
 float altura_maxima, capacidade;
 char modelo_propulsor[30];
 public:
  void compcadastroaereo(){
    clrscr();
    tela();
    gotoxy(23,4); cout<<"cadastro -> carga -> aereo"; cadastra();
    gotoxy(15,16); cout<<"altura maxima -> "; cin>>altura_maxima;
    gotoxy(15,17); cout<<"modelo de propulsor -> "; cin>>modelo_propulsor;
    gotoxy(15,18); cout<<"capacidade em kg -> "; cin>>capacidade;};
  void compconsultaaereo(){
    consulta();
    tela();
    gotoxy(23,4); cout<<"consulta -> carga -> aereo";
	gotoxy(15,16); cout<<"altura maxima -> "<<altura_maxima;
    gotoxy(15,17); cout<<"modelo de propulsor -> "<<modelo_propulsor;
    gotoxy(15,18); cout<<"capacidade em kg -> "<<capacidade;
    getch();}};

class maritimo: public transporte{
 int qtd_helices;
 float profundidade_min;
 public:
  void compcadastromaritimo(){
   clrscr();
   tela();
   gotoxy(23,4); cout<<"cadastro -> carga -> maritimo"; cadastra();
   gotoxy(15,16); cout<<"qtd de helices -> "; cin>>qtd_helices;
   gotoxy(15,17); cout<<"profundidade minima -> "; cin>>profundidade_min;
   getch();};
  void compconsultamaritimo(){
   consulta();
   gotoxy(23,4); cout<<"consulta -> carga -> maritimo";
   gotoxy(15,16); cout<<"qtd de helices -> "<<qtd_helices;
   gotoxy(15,17); cout<<"profundidade minima -> "<<profundidade_min;
   getch();}};

class terrestre: public transporte{
 int numero_eixos, numero_portas;
 public:
  void compcadastroterrestre(){
   clrscr();
   tela();
   gotoxy(23,4); cout<<"cadastro -> carga -> terrestre";
   cadastra();
   gotoxy(15,16); cout<<"numero de eixos -> "; cin>>numero_eixos;
   gotoxy(15,17); cout<<"numero de portas -> "; cin>>numero_portas;
   getch();};
  void compconsultaterrestre(){
   consulta();
   gotoxy(23,4); cout<<"consulta -> carga -> terrestre";
   gotoxy(15,16); cout<<"numero de eixos -> "<<numero_eixos;
   gotoxy(15,17); cout<<"numero de portas -> "<<numero_portas;
   getch();}};

class carga: public aereo, maritimo, terrestre{
 float capacidade;
 public:
  void compcadastrocarga(){
   if(tipo_transporte==1)
    compcadastroaereo();
   if(tipo_transporte==2)
    compcadastromaritimo();
   if(tipo_transporte==3)
    compcadastroterrestre();
   gotoxy(25,20); cout<<"cadastro efetivado";
   getch();}
  void compconsultacarga(){
   clrscr();
   tela();
   if(tipo_transporte==1)
    compconsultaaereo();
   if(tipo_transporte==2)
    compconsultamaritimo();
   if(tipo_transporte==3)
    compconsultaterrestre();
   gotoxy(15,18); cout<<"capacidade em kg -> "<<capacidade;};};

class passeio: public aereo, maritimo, terrestre{
 int lotacao;
 public:
  void compcadastropasseio(){
   if(tipo_transporte==1)
    compcadastroaereo();
   if(tipo_transporte==2)
    compcadastromaritimo();
   if(tipo_transporte==3)
    compcadastroterrestre();
   gotoxy(15,18); cout<<"lotacao maxima -> "; cin>>lotacao;
   getch();}
  void compconsultapasseio(){
   clrscr();
   tela();
   if(tipo_transporte==1)
    compconsultaaereo();
   if(tipo_transporte==2)
    compconsultamaritimo();
   if(tipo_transporte==3)
    compconsultaterrestre();
   gotoxy(15,18); cout<<"lotacao maxima -> "<<lotacao;}};

carga objcarga;
passeio objpasseio;
fstream fcarga;
fstream fpasseio;

void menu_principal(){
 int opcao;
 clrscr();
 tela();
 gotoxy(30,10); cout<<"1 - cadastro";
 gotoxy(30,11); cout<<"2 - consulta";
 gotoxy(30,12); cout<<"3 - sair";
 gotoxy(30,15); cout<<"sua opcao -> "; cin>>opcao;
 switch(opcao){
  case 1: menu_cadastro(); break;
  case 2: menu_consulta(); break;
  case 3: exit(0);
  defaut: menu_principal();}}

void menu_cadastro(){
 int opcao;
 clrscr();
 tela();
 gotoxy(30,10); cout<<"1 - carga";
 gotoxy(30,11); cout<<"2 - passeio";
 gotoxy(30,12); cout<<"3 - voltar";
 gotoxy(30,15); cout<<"sua opcao -> "; cin>>opcao;
 switch(opcao){
  case 1: menu_cadastra_carga(); break;
  case 2: menu_cadastra_passeio(); break;
  case 3: menu_principal(); break;
  default:menu_cadastro();}}

void menu_cadastra_carga(){
 int opcao;
 clrscr();
 tela();
 gotoxy(30,10); cout<<"1 - aereo";
 gotoxy(30,11); cout<<"2 - maritimo";
 gotoxy(30,12); cout<<"3 - terrestre";
 gotoxy(30,13); cout<<"4 - voltar";
 gotoxy(30,15); cout<<"sua opcao -> "; cin>>opcao;
 tipo_transporte = opcao;
 aviso_cadastro_carga = opcao;
 switch(opcao){
  case 1: {objcarga.compcadastrocarga(); grava_arq_carga();}; break;
  case 2: {objcarga.compcadastrocarga(); grava_arq_carga();}; break;
  case 3: {objcarga.compcadastrocarga(); grava_arq_carga();}; break;
  case 4: menu_cadastro(); break;
  default: menu_cadastra_carga();}
 menu_principal();}

void menu_cadastra_passeio(){
 int opcao;
 clrscr();
 tela();
 gotoxy(30,10); cout<<"1 - aereo";
 gotoxy(30,11); cout<<"2 - maritimo";
 gotoxy(30,12); cout<<"3 - terrestre";
 gotoxy(30,13); cout<<"4 - voltar";
 gotoxy(30,15); cout<<"sua opcao -> "; cin>>opcao;
 tipo_transporte = opcao;
 switch(opcao){
  case 1: {objpasseio.compcadastropasseio(); grava_arq_passeio();}; break;
  case 2: {objpasseio.compcadastropasseio(); grava_arq_passeio();}; break;
  case 3: {objpasseio.compcadastropasseio(); grava_arq_passeio();}; break;
  case 4: menu_cadastro(); break;
  default: menu_cadastra_passeio();}
 menu_principal();}

void menu_consulta(){
 int opcao;
 clrscr();
 tela();
 gotoxy(30,10); cout<<"1 - carga";
 gotoxy(30,11); cout<<"2 - passeio";
 gotoxy(30,12); cout<<"3 - sair";
 gotoxy(30,15); cout<<"sua opcao -> "; cin>>opcao;
 switch(opcao){
  case 1: menu_consulta_carga(); break;
  case 2: menu_consulta_passeio(); break;
  case 3: menu_principal(); break;
  default: menu_consulta();}}

void menu_consulta_carga(){
 int opcao;
 clrscr();
 tela();
 gotoxy(30,10); cout<<"1 - aereo";
 gotoxy(30,11); cout<<"2 - maritimo";
 gotoxy(30,12); cout<<"3 - terrestre";
 gotoxy(30,13); cout<<"4 - voltar";
 gotoxy(30,15); cout<<"sua opcao -> "; cin>>opcao;
 tipo_transporte = opcao;
 switch(opcao){
  case 1: lista_arq_carga(); break;
  case 2: lista_arq_carga(); break;
  case 3: lista_arq_carga(); break;
  case 4: menu_consulta(); break;
  default: menu_consulta_carga();}
 menu_principal();};

void menu_consulta_passeio(){
 int opcao;
 clrscr();
 tela();
 gotoxy(30,10); cout<<"1 - aereo";
 gotoxy(30,11); cout<<"2 - maritimo";
 gotoxy(30,12); cout<<"3 - terrestre";
 gotoxy(30,13); cout<<"4 - voltar";
 gotoxy(30,15); cout<<"sua opcao -> "; cin>>opcao;
 switch(opcao){
  case 1: objpasseio.compconsultapasseio(); break;
  case 2: objpasseio.compconsultapasseio(); break;
  case 3: objpasseio.compconsultapasseio(); break;
  case 4: menu_consulta(); break;
  default: menu_consulta_passeio;}
 menu_principal();};

void abre_arquivos(){
 fcarga.open("a:carga.dat", ios::ate|ios::out|ios::in);
 fpasseio.open("a:passeio.dat", ios::ate|ios::out|ios::in);};

void grava_arq_carga(){
 fcarga.write((char*)&objcarga, sizeof(carga));};

void grava_arq_passeio(){
 fpasseio.write((char*)&objpasseio, sizeof(passeio));};

void lista_arq_carga(){
 fcarga.seekg(0);
 while(fcarga.read((char*)&objcarga,sizeof(carga))){
  objcarga.compconsultacarga();}};

void lista_arq_passeio(){
 fpasseio.seekg(0);
 while(fpasseio.read((char*)&objpasseio,sizeof(passeio))){
 objpasseio.compconsultapasseio();}};

void main(){
 abre_arquivos();
 clrscr();
 tela();
 menu_principal();}