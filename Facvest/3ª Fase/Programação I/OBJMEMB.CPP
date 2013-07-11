#include <iostream.h>
#include <CONIO.H>

struct contador //criacao da classe contador
{
// public: so se for classeusa isso.
int num,vovo; //numero do contador
void comeca(int puta);
void incrementa(void); //vou usar esta funcao fora da classe por isso o ";"
};

void contador::incrementa(void) // funcoes membro
{num=num+1;};     //incrementa contador

void contador::comeca(int puta)
{num=puta*10;};

void main()
{
int f;
clrscr();
f=0;
contador umcontador; //nome do programa(classe) e seu objeto umcontador
contador minhavovozinha;

minhavovozinha.vovo=69; //atributo da minhavovozinha
umcontador.comeca(10);  //funcao membro use parenteses

cout << umcontador.num << endl;
cout <<"oi";
while (f<10)
{
umcontador.incrementa();
f++;
cout << "a variavel num vai de 0 a 10 -> "<<umcontador.num << endl;
getch();
}
cout <<"Idade da minha vovo=> "<< minhavovozinha.vovo;
getch();
}
