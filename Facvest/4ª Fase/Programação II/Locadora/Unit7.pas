unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask;

type
  Tfrmcad_veiculos = class(TForm)
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
  frmcad_veiculos: Tfrmcad_veiculos;

implementation

uses Unit5, Unit3;

{$R *.DFM}

procedure Tfrmcad_veiculos.voltarClick(Sender: TObject);
begin
        FrmCad_veiculos.close;
        Frmveiculos.show;
end;

end.
