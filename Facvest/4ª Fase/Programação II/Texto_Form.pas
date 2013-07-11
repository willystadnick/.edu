unit Texto_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls;

type
  TfrmTexto = class(TForm)
    RichEdit1: TRichEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RichEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTexto: TfrmTexto;
  i: Integer;

implementation

uses Principal_Form;

{$R *.DFM}

procedure TfrmTexto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action := caFree; // Libera o form da memória
end;

procedure TfrmTexto.FormCreate(Sender: TObject);
begin
     i := 0;
end;

procedure TfrmTexto.RichEdit1KeyPress(Sender: TObject; var Key: Char);
begin
      i := i+1;
end;

procedure TfrmTexto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var sArquivo:String;
    sFrase:Pchar;
begin
     sArquivo:='Deseja salvar as alterações feitas em: '+Caption;
     sFrase:= PChar(sArquivo);
     if i<>0 then
       Case MessageBox(Handle, sFrase, 'Atenção!!!', MB_YESNOCANCEL +    MB_ICONQUESTION+ MB_DEFBUTTON2) of IDYES:
     if Caption = 'Novo Documento' then
     begin
       frmPrincipal.SalvarComo1Click(Sender);
     end
     else
       RichEdit1.Lines.SaveToFile(Caption);
       IDNO: Canclose:= True;
       IDCANCEL: Canclose:= False;
     end;
end;

end.
