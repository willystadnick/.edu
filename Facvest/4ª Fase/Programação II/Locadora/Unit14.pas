unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ExtCtrls, Buttons;

type
  Tclocacao = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Button2: TButton;
    BitBtn1: TBitBtn;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  clocacao: Tclocacao;

implementation

uses Unit5;

{$R *.DFM}

procedure Tclocacao.Button2Click(Sender: TObject);
begin
    clocacao.close;
end;

procedure Tclocacao.Button1Click(Sender: TObject);
begin
   dmlocadora.locacao.indexname:='indexmodelo';
   dmlocadora.locacao.findnearest([edit1.text]);
end;

procedure Tclocacao.BitBtn1Click(Sender: TObject);
begin
    dmlocadora.locacao.indexname:='indexmodelo';
    dmlocadora.locacao.findnearest([edit1.text]);
end;

end.
