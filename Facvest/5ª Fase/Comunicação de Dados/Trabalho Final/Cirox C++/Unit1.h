//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "CPort.hpp"
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include <Dialogs.hpp>
//---------------------------------------------------------------------------
class TFormPrincipal : public TForm
{
__published:	// IDE-managed Components
        TPanel *Panel1;
        TPanel *AreaMovimeto;
        TLabel *Label3;
        TLabel *Label2;
        TLabel *Label1;
        TEdit *Edit1;
        TEdit *Edit2;
        TEdit *Edit3;
        TButton *BtnEnviar;
        TButton *BtnReceber;
        TEdit *Edit4;
        TEdit *Edit5;
        TButton *btnConect;
        TMainMenu *MainMenu1;
        TMenuItem *Aquivo1;
        TMenuItem *N2;
        TMenuItem *Sair1;
        TMenuItem *Sobre1;
        TMenuItem *N5;
        TMenuItem *SobreoCirox1;
        TMenuItem *N6;
        TComPort *ComPort;
        TTimer *Timer1;
        TTimer *Timer2;
        TButton *BtnMouse;
        TOpenDialog *OpenDialog1;
        TButton *Button1;
        TMemo *Memo1;
        TSaveDialog *SaveDialog1;
        TLabel *Label4;
        TLabel *Label5;
        TLabel *Label6;
        TMenuItem *N1;
        void __fastcall btnConectClick(TObject *Sender);
        void __fastcall ComPortClose(TObject *Sender);
        void __fastcall ComPortOpen(TObject *Sender);
        void __fastcall Timer1Timer(TObject *Sender);
        void __fastcall BtnEnviarClick(TObject *Sender);
        void __fastcall BtnReceberClick(TObject *Sender);
        void __fastcall Timer2Timer(TObject *Sender);
        void __fastcall BtnMouseClick(TObject *Sender);
        void __fastcall AreaMovimetoMouseDown(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Conectar1Click(TObject *Sender);
        void __fastcall SobreoCirox1Click(TObject *Sender);
        void __fastcall Sair1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TFormPrincipal(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormPrincipal *FormPrincipal;
//---------------------------------------------------------------------------
#endif
