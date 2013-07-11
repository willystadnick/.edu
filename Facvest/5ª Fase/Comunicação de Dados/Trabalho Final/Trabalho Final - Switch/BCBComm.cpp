//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("BCBComm.res");
USEUNIT("Unit2.cpp");
USEFORM("Unit1.cpp", Form1);
USEUNIT("BCBComm.cpp");
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
  try
  {
    Application->Initialize();
    Application->CreateForm(__classid(TForm1), &Form1);
    Application->Run();
  }
  catch (Exception &exception)
  {
    Application->ShowException(&exception);
  }
  return 0;
}
//---------------------------------------------------------------------------
