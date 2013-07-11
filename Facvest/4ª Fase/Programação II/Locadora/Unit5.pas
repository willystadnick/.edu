unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDMLocadora = class(TDataModule)
    clientes: TTable;
    DSClientes: TDataSource;
    Veiculos: TTable;
    DSVeiculos: TDataSource;
    DSLocacao: TDataSource;
    clientesCod_cliente: TAutoIncField;
    clientesNome: TStringField;
    clientesFone: TStringField;
    clientesEnd: TStringField;
    VeiculosCod_veiculo: TAutoIncField;
    VeiculosModelo: TStringField;
    VeiculosPreco: TStringField;
    VeiculosStatus: TStringField;
    Locacao: TTable;
    LocacaoCod_locacao: TAutoIncField;
    LocacaoNome: TStringField;
    LocacaoModelo: TStringField;
    LocacaoPreco: TStringField;
    LocacaoStatus: TStringField;
    QVeiculos: TQuery;
    Qclientes: TQuery;
    DSQclientes: TDataSource;
    DSQveiculos: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMLocadora: TDMLocadora;

implementation

uses Unit6;

{$R *.DFM}

end.
