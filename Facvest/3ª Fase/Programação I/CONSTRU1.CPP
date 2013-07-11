#include <iostream.h>
struct ponto
{
float x;
float y;
public:
ponto(float a,float b);
//esse e o contrutor, note a ausencia do valor de retorno
void mostra(void);
void move(float dx,float dy);
};
ponto::ponto(float a,float b)
//construtor tem sempre o nome da classe.
{
x=a;
//incializando atributos da classe
y=b;
//colocando a casa em ordem
}
void ponto::mostra(void)
{cout << "X:" << x << " , Y:" << y << endl;}
void ponto::move(float dx,float dy)
{
x+=dx;
y+=dy;
}
void main()
{
ponto ap(0.0,0.0);
ap.mostra();
ap.move(1.0,1.0);
ap.mostra();
}
