#include <iostream.h>
struct ponto
{
float x;
float y;
//coordenadas
ponto(float a,float b)
{
x=a;
y=b;
}
//construtor
void move(float dx,float dy)
{ x+=dx; y+=dy; }

//funcao membro comum
void inicializa(float a,float b)
{ x=a; y=b; }
void mostra(void)
{cout << "X:" << x << " , Y:" << y << endl;}
};

struct reta
{
ponto p1;
ponto p2;
reta(float x1,float y1,float x2,float y2):p1(x1,y1),p2(x2,y2)
{
//nada mais a fazer, os contrutores de p1 e p2 ja foram chamados
}
void mostra(void);
};
void reta::mostra(void)
{
p1.mostra();
p2.mostra();
}
void main()
{
reta r1(1.0,1.0,10.0,10.0); //instanciacao da reta r1
r1.mostra();
}
