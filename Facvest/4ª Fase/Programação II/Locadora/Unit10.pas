unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TfrmLocLocacao = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBLnomecli: TDBLookupComboBox;
    Label5: TLabel;
    DBLveiculo: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    voltar: TBitBtn;
    procedure voltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocLocacao: TfrmLocLocacao;

implementation

uses Unit5, Unit9;

{$R *.DFM}

procedure TfrmLocLocacao.voltarClick(Sender: TObject);
begin
        FrmLoclocacao.close;
        Frmlocacao.show;
end;

end.
