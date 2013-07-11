#include <iostream.h>  //para cout
#include <conio.h>
struct circulo
{
float raio;
float x;
float y;

void inicializa(float ax,float by,float cr);
void altera_raio(float a);
float retorna_raio(void);

void move(float dx,float dy);

void mostra(void);
};

void circulo::inicializa(float ax,float by,float cr)
{
x=ax;
y=by;
raio=cr;
}

void circulo::altera_raio(float a)
{
raio=a;
}

float circulo::retorna_raio(void)
{
return raio;
}

void circulo::move(float dx,float dy)
{
x+=dx;
y+=dy;
}

void circulo::mostra(void)
{
cout << "Raio:"<< retorna_raio() <<endl;
cout << "X:"<<x << endl;
cout << "Y:" <<y<< endl;
}

void main()
{
clrscr();
circulo ac;
ac.inicializa(0.0,0.0,10.0);
ac.mostra();
ac.move(1.0,1.0);
ac.mostra();
ac.x=100.0;
ac.altera_raio(12.0);
ac.mostra();
getch();
}
