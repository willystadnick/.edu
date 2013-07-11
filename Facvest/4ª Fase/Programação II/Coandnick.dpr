program Coandnick;

uses
  Forms,
  Principal_Form in 'Principal_Form.pas' {frmPrincipal},
  Texto_Form in 'Texto_Form.pas' {frmTexto};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmTexto, frmTexto);
  Application.Run;
end.
