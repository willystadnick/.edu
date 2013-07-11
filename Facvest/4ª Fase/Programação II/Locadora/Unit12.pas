unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons;

type
  Tfrmclipesquisar = class(TForm)
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
  frmclipesquisar: Tfrmclipesquisar;

implementation

uses Unit5, Unit2;

{$R *.DFM}

procedure Tfrmclipesquisar.PesquisarClick(Sender: TObject);
var
        x:string;
begin
        x:=edit1.text;
        dmlocadora.Qclientes.sql.clear;
        dmlocadora.Qclientes.sql.add('select * from clientes where nome like "%'+ x +'%"');
        dmlocadora.Qclientes.open;
end;

procedure Tfrmclipesquisar.voltarClick(Sender: TObject);
begin
         frmclipesquisar.close;
         frmclientes.show;
end;

end.
