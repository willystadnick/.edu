unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDataModule2 = class(TDataModule)
    tb_cliente: TTable;
    ds_cliente: TDataSource;
    tb_produto: TTable;
    ds_produto: TDataSource;
    ds_venda: TDataSource;
    tb_venda: TTable;
    tb_clienteCod_cli: TAutoIncField;
    tb_clienteNome_cli: TStringField;
    tb_clienteFone_cli: TStringField;
    tb_clienteCidade_cli: TStringField;
    tb_clienteFoto_cli: TGraphicField;
    tb_produtoCod_pro: TAutoIncField;
    tb_produtoDesc_pro: TStringField;
    tb_produtoPreco_pro: TCurrencyField;
    tb_vendaCod_ven: TAutoIncField;
    tb_vendaData_ven: TDateField;
    tb_vendaQtd_ven: TFloatField;
    tb_vendaValor_ven: TCurrencyField;
    tb_vendaCod_pro: TFloatField;
    tb_vendaCod_cli: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.DFM}

end.
