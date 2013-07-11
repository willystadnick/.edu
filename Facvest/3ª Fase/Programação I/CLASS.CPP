#include <iostream.h>
#include <CONIO.H>
class classe //criacao da classe com o nome CLASSE
{public: //so se for classe usa isso.
int valor1,tio,tia,num,vovo; //variaveis
//void classe(int valor1); // este cara aqui e o construtor
void comeca(int a);
void incrementa(void); //vou usar esta funcao fora da classe por isso o ";"
};
void classe::incrementa(void) // funcoes membro
{num=num+1;};     //incrementa contador
void classe::comeca(int a)
{num=a*10;};
void main()
{
int f;
clrscr();
f=0;
classe objeto; //nome do programa(classe) e seu objeto
classe objeto2;
objeto2.vovo=69; //atributo
objeto.comeca(10);  //funcao membro use parenteses
cout << objeto.num << endl;
cout <<"oi";
while (f<10)
{
objeto.incrementa();
f++;
cout << "a variavel num vai de 0 a 10 -> "<<objeto.num << endl;
getch();
}
cout <<"Idade da minha vovo=> "<< objeto2.vovo;
getch();
}
