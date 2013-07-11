unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TfrmManVeiculos = class(TForm)
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
  frmManVeiculos: TfrmManVeiculos;

implementation

uses Unit5, Unit3;

{$R *.DFM}

procedure TfrmManVeiculos.voltarClick(Sender: TObject);
begin
        FrmManVeiculos.close;
        Frmveiculos.show;
end;

end.
