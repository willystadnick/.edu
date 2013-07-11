unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TfrmDevlocacao = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    voltar: TBitBtn;
    procedure voltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDevlocacao: TfrmDevlocacao;

implementation

uses Unit5, Unit9;

{$R *.DFM}

procedure TfrmDevlocacao.voltarClick(Sender: TObject);
begin
        Frmdevlocacao.close;
        FrmLocacao.show;
end;

end.
                                            