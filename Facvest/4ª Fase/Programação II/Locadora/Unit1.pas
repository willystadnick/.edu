unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    lacacao: TBitBtn;
    clientes: TBitBtn;
    veiculos: TBitBtn;
    carro: TImage;
    Titulo: TStaticText;
    sair: TBitBtn;
    BitBtn1: TBitBtn;
    procedure Sair1Click(Sender: TObject);
    procedure clientesClick(Sender: TObject);
    procedure veiculosClick(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure lacacaoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses Unit2, Unit3, Unit9, Unit16;

{$R *.DFM}

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
        close;
end;

procedure TFrmPrincipal.clientesClick(Sender: TObject);
begin
         FrmClientes.show;
end;

procedure TFrmPrincipal.veiculosClick(Sender: TObject);
begin
         FrmVeiculos.show;
end;

procedure TFrmPrincipal.sairClick(Sender: TObject);
begin
        close;
end;

procedure TFrmPrincipal.lacacaoClick(Sender: TObject);
begin

        frmlocacao.show;
end;

procedure TFrmPrincipal.BitBtn1Click(Sender: TObject);
begin
   relatorio.show;
end;

procedure TFrmPrincipal.Sobre1Click(Sender: TObject);

begin
    showmessage('Programa elaborado por Roger e Willy');
end;

end.
