unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, StdCtrls, Buttons;

type
  Tfrmveiculos = class(TForm)
    Cadastrar: TBitBtn;
    namutecao: TBitBtn;
    voltar: TBitBtn;
    titulo: TStaticText;
    carros: TImage;
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
  frmveiculos: Tfrmveiculos;

implementation

uses Unit1, Unit7, Unit8, Unit13;

{$R *.DFM}

procedure Tfrmveiculos.voltarClick(Sender: TObject);
begin
        frmveiculos.close;
        frmprincipal.show;
end;

procedure Tfrmveiculos.CadastrarClick(Sender: TObject);
begin
        Frmveiculos.close;
        FrmCad_veiculos.show;
        
end;

procedure Tfrmveiculos.namutecaoClick(Sender: TObject);
begin
        Frmveiculos.close;
        FrmManVeiculos.show;
        
end;

procedure Tfrmveiculos.pesquisarClick(Sender: TObject);
begin
        frmveipesquisar.show;
end;

end.
