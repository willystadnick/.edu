//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "CPort"
#pragma resource "*.dfm"
TFormPrincipal *FormPrincipal;

int flag1,flag2,flag3,flag4,flag5,flag6;
String texto[30];
//---------------------------------------------------------------------------
__fastcall TFormPrincipal::TFormPrincipal(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void Envia_Pos(){
        String pos[1];
        if (flag6 ==1){
                pos[0] = ("txt");
                FormPrincipal->ComPort->WriteStr(pos[0]);
                for ( int i=0; i<30; i++){
                        FormPrincipal->ComPort->WriteStr(texto[i]);
                }
                flag6 = 0;}
        else{
                if (flag5 == 1){
                        pos[0] = ("Clk");
                        FormPrincipal->ComPort->WriteStr(pos[0]);
                        flag5 =0;}
                else{
                        pos[0] = StrToInt(FormPrincipal->Edit1->Text );
                        pos[1] = StrToInt(FormPrincipal->Edit2->Text);
                        FormPrincipal->ComPort->WriteStr(pos[0]);
                        FormPrincipal->ComPort->WriteStr(pos[1]);
                }
        }
}
//---------------------------------------------------------------------------
void Recebe_Pos(){
        String pos[1];
        FormPrincipal->Edit4->Text = ("");
        FormPrincipal->Edit5->Text = ("");
        FormPrincipal->ComPort->ReadStr(pos[0],3);
        if (pos[0] == ("txt")){
                for ( int i=0; i<30; i++){
                        FormPrincipal->ComPort->ReadStr(texto[i],70);
                        FormPrincipal->Memo1->Lines->Strings[i]=texto[i];}
                FormPrincipal->SaveDialog1->Execute();
                FormPrincipal->Memo1->Lines->SaveToFile(FormPrincipal->SaveDialog1->FileName);}
         else{
                if (pos[0] == ("Clk")){

                }
                else {
                FormPrincipal->ComPort->ReadStr(pos[1],3);
                FormPrincipal->Edit4->Text = FormPrincipal->Edit4->Text + (pos[0]);
                FormPrincipal->Edit5->Text = FormPrincipal->Edit5->Text + (pos[1]);
                }
         }
}
//---------------------------------------------------------------------------
void Controla_Mouse(){
        TPoint Cursor;

        Cursor.x = StrToInt (FormPrincipal->Edit4->Text);
        Cursor.y = StrToInt (FormPrincipal->Edit5->Text);
        SetCursorPos(Cursor.x,Cursor.y);

}
//---------------------------------------------------------------------------
void __fastcall Click(void);
//---------------------------------------------------------------------------
void __fastcall TFormPrincipal::btnConectClick(TObject *Sender)
{
  if (ComPort->Connected)
    ComPort->Close();
  else
    ComPort->Open();
}
//---------------------------------------------------------------------------
void __fastcall TFormPrincipal::ComPortClose(TObject *Sender)
{
 Edit3->Text = "Desconectado";
}
//---------------------------------------------------------------------------
void __fastcall TFormPrincipal::ComPortOpen(TObject *Sender)
{
   Edit3->Text = "Conectado";        
}
//---------------------------------------------------------------------------
void __fastcall TFormPrincipal::Timer1Timer(TObject *Sender)
{
   TPoint Cursor;
   int PosX,PosY;

   GetCursorPos(&Cursor);
   PosX = (Cursor.x);
   PosY = (Cursor.y);
   Edit1->Text = IntToStr(PosX);
   Edit2->Text = IntToStr(PosY);
}
//---------------------------------------------------------------------------
void __fastcall TFormPrincipal::BtnEnviarClick(TObject *Sender)
{
  Label4->Caption = "Modo Mestre";
  if (ComPort->Connected){
    if (flag2 == 1){
        flag2 = 0;
        BtnEnviar->Caption = "Enviar";}
    else {
        flag2 = 1;
        BtnEnviar->Caption = "Enviando";}

  }
  else
    ShowMessage ("Para Estabelecer Comunicação Conecte-se Primeiro");
}
//---------------------------------------------------------------------------
void __fastcall TFormPrincipal::BtnReceberClick(TObject *Sender)
{
 Label4->Caption = "Modo Escravo";
 if (ComPort->Connected){
    if (flag3 == 1){
        flag3 = 0;
        BtnReceber->Caption = "Receber";}
    else {
        flag3 = 1;
        BtnReceber->Caption = "Recebendo";}

  }
  else
    ShowMessage ("Para Estabelecer Comunicação Conecte-se Primeiro");

}
//---------------------------------------------------------------------------
void __fastcall TFormPrincipal::Timer2Timer(TObject *Sender)
{

    if (flag2 == 1)
      Envia_Pos();
    if (flag3 == 1)
      Recebe_Pos();
    if (flag4 == 1)
      Controla_Mouse();
}
//---------------------------------------------------------------------------
void __fastcall TFormPrincipal::BtnMouseClick(TObject *Sender)
{
if (ComPort->Connected){
    if (flag3 == 1){
        if (flag4 == 1){
                flag4 = 0;
                BtnMouse->Caption = "Controla Mouse";}
        else {
                flag4 = 1;
                BtnEnviar->Caption = "Recebendo";}

  } }
  else
    ShowMessage ("Para Estabelecer Comunicação Conecte-se Primeiro e clique em Receber");
}
//---------------------------------------------------------------------------



void __fastcall TFormPrincipal::AreaMovimetoMouseDown(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
    if (flag2 == 1)
      flag5 = 1;
}
//---------------------------------------------------------------------------

void __fastcall TFormPrincipal::Button1Click(TObject *Sender)
{
 if (ComPort->Connected){
     if (OpenDialog1->Execute()){
                Memo1->Lines->LoadFromFile(OpenDialog1->FileName);}
     
        for ( int i=0; i<30; i++){
                texto[i]=Memo1->Lines->Strings[i];
   } flag6= 1;}
   else
    ShowMessage ("Para Enviar Arquivo Conecte-se Primeiro");
}
//---------------------------------------------------------------------------


void __fastcall TFormPrincipal::Conectar1Click(TObject *Sender)
{
       //  btnConectClick();
}
//---------------------------------------------------------------------------

void __fastcall TFormPrincipal::SobreoCirox1Click(TObject *Sender)
{
        Form2->Show();        
}
//---------------------------------------------------------------------------

void __fastcall TFormPrincipal::Sair1Click(TObject *Sender)
{
 Close();        
}
//---------------------------------------------------------------------------

