unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TfrmManClientes = class(TForm)
    DBGrid1: TDBGrid;
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
  frmManClientes: TfrmManClientes;

implementation

uses Unit5, Unit2;

{$R *.DFM}

procedure TfrmManClientes.voltarClick(Sender: TObject);
begin
      FrmManclientes.close;
      FrmClientes.show;
end;

end.
