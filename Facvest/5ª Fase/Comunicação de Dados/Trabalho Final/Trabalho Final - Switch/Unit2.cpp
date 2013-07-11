//---------------------------------------------------------------------------
#include <vcl\vcl.h>
#pragma hdrstop

// inclusão da thread
#include "Unit1.h"
#include "Unit2.h"

typedef struct coord_{
   int x;
   int y;
} coord;

extern HANDLE hComm;
char InBuff[100];
static int c1=0, p=0;

//---------------------------------------------------------------------------
__fastcall TRead::TRead(bool CreateSuspended)
	: TThread(CreateSuspended)
{
}
coord separa(char *str)
{
   char aux[15], *p;
   const char delimit[] = "(,)";
   coord coordenadas;

   memset(&aux, '\0', sizeof(aux));
   strcat(aux, str);                 /* Passa o conteudo do ponteiro *str */
   p = strtok(aux, delimit);         /* para uma variavel local... evitar */
   coordenadas.x = atoi(p);          
   p = strtok(NULL, delimit);
   coordenadas.y = atoi(p);

   return (coordenadas);
}

//---------------------------------------------------------------------------
void __fastcall TRead::DisplayIt(void)
{
  coord xy;
  static char rec[15];

    rec[p] = InBuff[0];
    p++;
    if (InBuff[0] == ')'){  // se for ) interpreta pacote e joga na tela
        xy = separa(rec); /* Separa X e Y */
        p=0;
        SetCursorPos(xy.x, xy.y);
    }
}
//---------------------------------------------------------------------------


void __fastcall TRead::Execute()
{
  DWORD dwBytesRead;

  // faz o objeto thread ser destruido automaticamente
  // quando a thread é terminada

  FreeOnTerminate = true;

  while(1)
  {

    // verifica se há algum caracter no interior do buffer recebido.
    // se houver leia os caracteres, se não espere pelos caracteres
    // para chegar ou sair se a thread é terminada.

    if(Terminated) return;

	  ReadFile(hComm, InBuff, 1, &dwBytesRead, NULL);
    if(dwBytesRead)
    {
      Synchronize(DisplayIt);
    }

  }

}
//---------------------------------------------------------------------------
