unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDataModule2 = class(TDataModule)
    DS_Clientes: TDataSource;
    TB_Clientes: TTable;
    DS_Fornecedor: TDataSource;
    TB_Fornecedor: TTable;
    DS_Tipo: TDataSource;
    TB_Tipo: TTable;
    DS_Filmes: TDataSource;
    TB_Filmes: TTable;
    TB_Emprestimo: TTable;
    DS_Emprestimo: TDataSource;
    TB_Compras: TTable;
    DS_Compras: TDataSource;
    TB_ClientesCodigo_cli: TAutoIncField;
    TB_ClientesNome_cli: TStringField;
    TB_ClientesEndereco_cli: TStringField;
    TB_ClientesCidade_cli: TStringField;
    TB_ClientesCep_cli: TStringField;
    TB_ClientesEstado_cli: TStringField;
    TB_ClientesFoneRes_cli: TStringField;
    TB_ClientesFoneCel_cli: TStringField;
    TB_FornecedorCodigo_forn: TAutoIncField;
    TB_FornecedorNome_forn: TStringField;
    TB_FornecedorContato_forn: TStringField;
    TB_FornecedorFone_forn: TStringField;
    TB_TipoCodigo_tipo2: TAutoIncField;
    TB_TipoDescricao_tipo2: TStringField;
    TB_TipoPreco_tipo2: TCurrencyField;
    TB_FilmesCodigo_filme: TAutoIncField;
    TB_FilmesTitulo_filme: TStringField;
    TB_FilmesAno_filme: TStringField;
    TB_FilmesNacionalidade_filme: TStringField;
    TB_FilmesCategoria_filme: TStringField;
    TB_FilmesCodigo_tipo: TFloatField;
    TB_EmprestimoCodigo_emp: TAutoIncField;
    TB_EmprestimoDataPeg_emp: TDateField;
    TB_EmprestimoDataDev_emp: TDateField;
    TB_EmprestimoTempo_emp: TStringField;
    TB_EmprestimoValor_emp: TCurrencyField;
    TB_EmprestimoCodigo_filme: TFloatField;
    TB_EmprestimoCodigo_cliente: TFloatField;
    TB_ComprasCodigo_compras: TAutoIncField;
    TB_ComprasData_compras: TDateField;
    TB_ComprasQtd_compras: TStringField;
    TB_ComprasCodigo_filme: TFloatField;
    TB_ComprasCodigo_forn: TFloatField;
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
