#include <iostream.h>
#include <conio.h>
struct teste
{
int x;
void altera_x(int v);  //somente definicao implementacao vem depois, fora da classe
};

void teste::altera_x(int v)
{x=v;}
  //esta ja e a implementacao codigo

void main()
{
clrscr();
teste a;  //instaciacao de um objeto
a.altera_x(10); //chamada da funcao membro com valor 10 que sera impresso a seguir
cout << a.x; //imprimindo o dado membro
getch();
}
