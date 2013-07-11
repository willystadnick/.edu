unit Principal_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, ComCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Editar1: TMenuItem;
    Alterar1: TMenuItem;
    Janelas1: TMenuItem;
    Ajuda1: TMenuItem;
    Novo1: TMenuItem;
    Abrir1: TMenuItem;
    Salvar1: TMenuItem;
    SalvarComo1: TMenuItem;
    Fechar1: TMenuItem;
    FecharTodas1: TMenuItem;
    Imprimir1: TMenuItem;
    Sair1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    SelecionarTudo1: TMenuItem;
    Fonte1: TMenuItem;
    Estilos1: TMenuItem;
    Alinhamento1: TMenuItem;
    Negrito1: TMenuItem;
    Itlico1: TMenuItem;
    Sublinhado1: TMenuItem;
    Esquerda1: TMenuItem;
    Direita1: TMenuItem;
    Centro1: TMenuItem;
    Cascata1: TMenuItem;
    LadoaLado1: TMenuItem;
    Horizontal1: TMenuItem;
    Vertical1: TMenuItem;
    SobreoEditordeTextoCoandnick1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    PrintDialog1: TPrintDialog;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Novo1Click(Sender: TObject);
    procedure Cascata1Click(Sender: TObject);
    procedure Horizontal1Click(Sender: TObject);
    procedure Vertical1Click(Sender: TObject);
    procedure SalvarComo1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FecharTodas1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure SelecionarTudo1Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
    procedure Esquerda1Click(Sender: TObject);
    procedure Direita1Click(Sender: TObject);
    procedure Centro1Click(Sender: TObject);
    procedure Negrito1Click(Sender: TObject);
    procedure Itlico1Click(Sender: TObject);
    procedure Sublinhado1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses Texto_Form;

{$R *.DFM}

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      Action:= caFree; // Libera o form da memória
end;

procedure TfrmPrincipal.Novo1Click(Sender: TObject);
begin
    frmTexto := TfrmTexto.Create(self);
    frmTexto.Caption := 'Novo Documento';
    frmTexto.Show;
end;

procedure TfrmPrincipal.Cascata1Click(Sender: TObject);
begin
     Cascade;
end;

procedure TfrmPrincipal.Horizontal1Click(Sender: TObject);
begin
      TileMode := tbHorizontal;
end;

procedure TfrmPrincipal.Vertical1Click(Sender: TObject);
begin
      TileMode := tbVertical;
end;

procedure TfrmPrincipal.SalvarComo1Click(Sender: TObject);
begin
     if MDIChildCount = 0 then Exit;
     With TfrmTexto(ActiveMDIChild) do
     begin
       SaveDialog1.FileName := Caption;
       if SaveDialog1.Execute then
         RichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
       Caption := SaveDialog1.FileName;
       i:=0;

     end;
end;

procedure TfrmPrincipal.Salvar1Click(Sender: TObject);
begin
     With TfrmTexto(ActiveMDIChild) do
     begin
       if Caption = 'Novo Documento' then
       begin
         SalvarComo1Click(Sender);
         Exit;
       end;
       RichEdit1.Lines.SaveToFile(Caption);
       i:= 0;
     end;
end;

procedure TfrmPrincipal.Abrir1Click(Sender: TObject);
begin
    if OpenDialog1.Execute then
     With TfrmTexto.Create(self) do
     begin
       RichEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
       Caption := OpenDialog1.FileName;
     end;
end;

procedure TfrmPrincipal.Fechar1Click(Sender: TObject);
begin
     if MDIChildCount = 0 then Exit;
     ActiveMDIChild.Close;
end;

procedure TfrmPrincipal.FecharTodas1Click(Sender: TObject);
var i: Integer;
begin
    for i:= MDIChildCount-1 downto 0 do
       MDIChildren[i].Close;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
    Close;
end;

procedure TfrmPrincipal.Recortar1Click(Sender: TObject);
begin
      if MDIChildCount = 0 then Exit;
     With TfrmTexto(ActiveMDIChild) do
     begin
       RichEdit1.CutToClipboard;
     end;
end;

procedure TfrmPrincipal.Copiar1Click(Sender: TObject);
begin
      if MDIChildCount = 0 then Exit;
     With TfrmTexto(ActiveMDIChild) do
     begin
       RichEdit1.CopyToClipboard;
     end;
end;

procedure TfrmPrincipal.Colar1Click(Sender: TObject);
begin
     if MDIChildCount = 0 then Exit;
     With TfrmTexto(ActiveMDIChild) do
     begin
       RichEdit1.PasteFromClipboard;
     end;
end;

procedure TfrmPrincipal.SelecionarTudo1Click(Sender: TObject);
begin
     if MDIChildCount = 0 then Exit;
     With TfrmTexto(ActiveMDIChild) do
     begin
       RichEdit1.SelectAll;
     end;
end;

procedure TfrmPrincipal.Fonte1Click(Sender: TObject);
begin
     if MDIChildCount = 0 then Exit;
     With TfrmTexto(ActiveMDIChild) do
     begin
       FontDialog1.Font.Assign(RichEdit1.SelAttributes);
       if (FontDialog1.Execute) then
         RichEdit1.SelAttributes.Assign(FontDialog1.Font);
     end;
end;

procedure TfrmPrincipal.Esquerda1Click(Sender: TObject);
begin
     if MDIChildCount = 0 then Exit;
     With TfrmTexto(ActiveMdiChild) do
     begin
       RichEdit1.Paragraph.Alignment := taLeftJustify;
     end;
end;

procedure TfrmPrincipal.Direita1Click(Sender: TObject);
begin
     if MDIChildCount = 0 then Exit;
     With TfrmTexto(ActiveMdiChild) do
     begin
       RichEdit1.Paragraph.Alignment := taRightJustify;
     end;
end;

procedure TfrmPrincipal.Centro1Click(Sender: TObject);
begin
     if MDIChildCount = 0 then Exit;
     With TfrmTexto(ActiveMdiChild) do
     begin
       RichEdit1.Paragraph.Alignment := taCenter;
     end;
end;

procedure TfrmPrincipal.Negrito1Click(Sender: TObject);
begin
      if MDIChildCount = 0 then Exit;
     With TfrmTexto(ActiveMDIChild) do
     begin
       if (fsBold in RichEdit1.SelAttributes.Style) then
         RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style - [fsBold]
       else
         RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];
     end;
end;

procedure TfrmPrincipal.Itlico1Click(Sender: TObject);
begin
     if MDIChildCount = 0 then Exit;
     With TfrmTexto(ActiveMDIChild) do
     begin
       if (fsItalic in RichEdit1.SelAttributes.Style) then
         RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style - [fsItalic]
       else
         RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsItalic];
     end;
end;

procedure TfrmPrincipal.Sublinhado1Click(Sender: TObject);
begin
      if MDIChildCount = 0 then Exit;
     With TfrmTexto(ActiveMDIChild) do
     begin
       if (fsUnderline in RichEdit1.SelAttributes.Style) then
         RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style - [fsUnderline]
       else
       RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsUnderline];
     end;
end;

procedure TfrmPrincipal.Imprimir1Click(Sender: TObject);
begin
     if MDIChildCount = 0 then Exit;
     With TfrmTexto(ActiveMDIChild) do
     begin
       if (PrintDialog1.Execute) then
       RichEdit1.Print(Text);
     end;
end;

end.
