unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons;

type
  TfrmVeipesquisar = class(TForm)
    Edit1: TEdit;
    Pesquisar: TBitBtn;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    voltar: TBitBtn;
    Label2: TLabel;
    procedure PesquisarClick(Sender: TObject);
    procedure voltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVeipesquisar: TfrmVeipesquisar;

implementation

uses Unit5, Unit3;

{$R *.DFM}

procedure TfrmVeipesquisar.PesquisarClick(Sender: TObject);
var
        x:string;
begin
        x:=edit1.text;
        dmlocadora.Qveiculos.sql.clear;
        dmlocadora.Qveiculos.sql.add('select * from veiculos where modelo like "%'+ x +'%"');
        dmlocadora.Qveiculos.open;
end;

procedure TfrmVeipesquisar.voltarClick(Sender: TObject);
begin
        frmVeipesquisar.close;
        frmVeiculos.show;
end;

end.
