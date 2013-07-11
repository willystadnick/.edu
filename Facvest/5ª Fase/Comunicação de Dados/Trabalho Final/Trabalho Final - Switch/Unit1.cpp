//---------------------------------------------------------------------------
#include <vcl\vcl.h>
#include <stdio.h>
#pragma hdrstop

#include "Unit1.h"

// declaração da biblioteca onde se encontra a thread
#include "Unit2.h"

HANDLE hComm = NULL;
TRead *ReadThread;
COMMTIMEOUTS ctmoNew = {0}, ctmoOld;


char *concatena(int x, int y){
   char *ret, retorno[15];

   memset(&retorno, '\0', sizeof(retorno));
   sprintf(retorno, "(%d,%d)", x, y);
   ret = retorno;

   return (ret);
}
//---------------------------------------------------------------------------
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
  // termina a thread.
  ReadThread->Terminate();

  // se a porta estiver aberta ela será fechada
	if(hComm) {
    Sleep(250); // aguarda a thread ser finalizada
    SetCommTimeouts(hComm, &ctmoOld);
	  CloseHandle(hComm);
  }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormCreate(TObject *Sender)
{
 DCB dcbCommPort;

  // abre a porta COM correspondente e inicializada abaixo

  hComm = CreateFile("COM1",
                      GENERIC_READ | GENERIC_WRITE,
                      0,
                      0,
                      OPEN_EXISTING,
                      0,
                      0);


  // se a porta COM não puder ser aberta , finaliza o programa
  if(hComm == INVALID_HANDLE_VALUE) Application->Terminate();

  // seta os tempos de saída
  GetCommTimeouts(hComm,&ctmoOld);
  ctmoNew.ReadTotalTimeoutConstant = 100;
  ctmoNew.ReadTotalTimeoutMultiplier = 0;
  ctmoNew.WriteTotalTimeoutMultiplier = 0;
  ctmoNew.WriteTotalTimeoutConstant = 0;
  SetCommTimeouts(hComm, &ctmoNew);

// ajusta a taxa de tranferencia, a paridade, o tamanho da palavra,
// e os bits de parada

// ha outras maneiras de fazer esta inicialização de tempos de saída
//mas esta que utilizamos é a mais fácil.

  dcbCommPort.DCBlength = sizeof(DCB);
  GetCommState(hComm, &dcbCommPort);
  BuildCommDCB("9600,N,8,1", &dcbCommPort);
  SetCommState(hComm, &dcbCommPort);

  // Ativa a thread , e inicializamos com "false" o argumento , porque
  // funciona melhor com ele suspendido.


  ReadThread = new TRead(false);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Memo1MouseMove(TObject *Sender, TShiftState Shift,
      int X, int Y)
{
    char coordenadas[15];
    int i;

    if (Estado->Caption == "&Enviar") {
        memset(&coordenadas, '\0', sizeof(coordenadas));
        strcat(coordenadas, concatena(Mouse->CursorPos.x, Mouse->CursorPos.y));
        for (i=0; coordenadas[i] != '\0'; i++) {
            Sleep(5);
            TransmitCommChar(hComm, coordenadas[i]);
        }
    }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Sair1Click(TObject *Sender)
{
    Form1->Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::EstadoClick(TObject *Sender)
{
    if (Estado->Caption == "&Enviar") {
        Form1->Caption = "Controle de Cursor - Recebendo";
        Estado->Caption = "&Receber";
    }
    else {
        Form1->Caption = "Controle de Cursor - Enviando";
        Estado->Caption = "&Enviar";
    }
}
//---------------------------------------------------------------------------

