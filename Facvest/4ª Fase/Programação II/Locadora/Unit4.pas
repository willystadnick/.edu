unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask;

type
  Tfrmcad_clientes = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    voltar: TBitBtn;
    Titulo: TStaticText;
    procedure voltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcad_clientes: Tfrmcad_clientes;

implementation

uses Unit5, Unit2;

{$R *.DFM}

procedure Tfrmcad_clientes.voltarClick(Sender: TObject);
begin
      FrmCad_clientes.close;
      FrmClientes.show;
end;

end.
