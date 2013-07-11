unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TFrmLocacao = class(TForm)
    Sifrao: TImage;
    Cadastrar: TBitBtn;
    namutecao: TBitBtn;
    voltar: TBitBtn;
    titulo: TStaticText;
    Button1: TButton;
    procedure voltarClick(Sender: TObject);
    procedure CadastrarClick(Sender: TObject);
    procedure namutecaoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocacao: TFrmLocacao;

implementation

uses Unit1, Unit10, Unit11, Unit14;

{$R *.DFM}

procedure TFrmLocacao.voltarClick(Sender: TObject);
begin
        frmlocacao.close;
        frmprincipal.show;
end;

procedure TFrmLocacao.CadastrarClick(Sender: TObject);
begin
        frmLocLocacao.show;
end;

procedure TFrmLocacao.namutecaoClick(Sender: TObject);
begin
        Frmdevlocacao.show;
end;

procedure TFrmLocacao.Button1Click(Sender: TObject);
begin
  clocacao.show;
end;

end.
