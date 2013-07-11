unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, StdCtrls, Buttons;

type
  TFrmClientes = class(TForm)
    Cadastrar: TBitBtn;
    namutecao: TBitBtn;
    Cliente: TImage;
    titulo: TStaticText;
    voltar: TBitBtn;
    pesquisar: TBitBtn;
    procedure voltarClick(Sender: TObject);
    procedure CadastrarClick(Sender: TObject);
    procedure namutecaoClick(Sender: TObject);
    procedure pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClientes: TFrmClientes;

implementation

uses Unit1, Unit4, Unit6, Unit12;

{$R *.DFM}

procedure TFrmClientes.voltarClick(Sender: TObject);
begin
        frmclientes.close;
        frmprincipal.show;
end;

procedure TFrmClientes.CadastrarClick(Sender: TObject);
begin
        FrmClientes.close;
        frmcad_clientes.show;
end;

procedure TFrmClientes.namutecaoClick(Sender: TObject);
begin
      FrmClientes.close;
      FrmManClientes.show;
end;

procedure TFrmClientes.pesquisarClick(Sender: TObject);
begin
        frmclipesquisar.show;
end;

end.
