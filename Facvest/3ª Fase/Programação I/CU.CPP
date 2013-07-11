#include <iostream.h>
#include <conio.h>
class ponto
{
public:
int x,y,z;
ponto(int a,int b);
void anda(void);
}
ponto::ponto(int a,int b)
{
x=a;
y=b;
}
void ponto::anda(void)
{
z=1;
x=x+1;
y=y-1;
}
class filha:public ponto
{
public:
filha (int a,int b);
};
filha::filha (int a,int b):ponto(a,b)
{}
void main ()
{
clrscr();
ponto teste(10,10);
filha vezes(teste.x,teste.y);
cout<<"x="<<teste.x<<endl;
cout<<"y="<<teste.y<<endl;
teste.anda();
cout<<"Qual valor do expoente? ";
cin>>vezes.z;
cout<<"x="<<teste.x<<endl;
cout<<"y="<<teste.y<<endl;
vezes.x=vezes.x*vezes.z;
vezes.y=vezes.y*vezes.z;
cout<<"O valor elevado para x= "<<vezes.x<<endl;
cout<<"O valor elevado para y= "<<vezes.y;
getch();
}