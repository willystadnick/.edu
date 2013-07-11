#include <iostream.h>
#include <conio.h>

struct contador  //conta ocorrencias de algo
{
int num;   //numero, posicao do contador

void incrementa(void){num=num+1;}; //incrementa contador

void comeca(void){num=0;};  //comeca a contar, "reset"

int retorna_num(void) {return num;};
};
void main() //teste do contador
{
contador umcontador;
umcontador.comeca(); //nao esqueca dos parenteses, e uma funcao membro nao dado!
cout << umcontador.retorna_num() << endl;
umcontador.incrementa();
cout << umcontador.retorna_num() << endl;
getch();
}
