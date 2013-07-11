program Locadora;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FrmPrincipal},
  Unit2 in 'Unit2.pas' {FrmClientes},
  Unit3 in 'Unit3.pas' {frmveiculos},
  Unit4 in 'Unit4.pas' {frmcad_clientes},
  Unit5 in 'Unit5.pas' {DMLocadora: TDataModule},
  Unit6 in 'Unit6.pas' {frmManClientes},
  Unit7 in 'Unit7.pas' {frmcad_veiculos},
  Unit8 in 'Unit8.pas' {frmManVeiculos},
  Unit9 in 'Unit9.pas' {FrmLocacao},
  Unit10 in 'Unit10.pas' {frmLocLocacao},
  Unit11 in 'Unit11.pas' {frmDevlocacao},
  Unit12 in 'Unit12.pas' {frmclipesquisar},
  Unit13 in 'Unit13.pas' {frmVeipesquisar},
  Unit14 in 'Unit14.pas' {clocacao},
  Unit15 in 'Unit15.pas' {relat: TQuickRep},
  Unit16 in 'Unit16.pas' {relatorio};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.CreateForm(Tfrmveiculos, frmveiculos);
  Application.CreateForm(Tfrmcad_clientes, frmcad_clientes);
  Application.CreateForm(TDMLocadora, DMLocadora);
  Application.CreateForm(TfrmManClientes, frmManClientes);
  Application.CreateForm(Tfrmcad_veiculos, frmcad_veiculos);
  Application.CreateForm(TfrmManVeiculos, frmManVeiculos);
  Application.CreateForm(TFrmLocacao, FrmLocacao);
  Application.CreateForm(TfrmLocLocacao, frmLocLocacao);
  Application.CreateForm(TfrmDevlocacao, frmDevlocacao);
  Application.CreateForm(Tfrmclipesquisar, frmclipesquisar);
  Application.CreateForm(TfrmVeipesquisar, frmVeipesquisar);
  Application.CreateForm(Tclocacao, clocacao);
  Application.CreateForm(Trelat, relat);
  Application.CreateForm(Trelatorio, relatorio);
  Application.Run;
end.
