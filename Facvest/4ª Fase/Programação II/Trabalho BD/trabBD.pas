unit trabBD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Db, DBTables, StdCtrls, Mask;

type
  TForm1 = class(TForm)
    tab_cli: TTable;
    tab_cliCod_Cli: TAutoIncField;
    tab_cliNome_Cli: TStringField;
    tab_cliFone_Cli: TStringField;
    tab_cliEnd_Cli: TStringField;
    tab_cliCidade_Cli: TStringField;
    tab_cliEstado_Cli: TStringField;
    tab_cliEmpresa_Cli: TStringField;
    tab_cliIdade_Cli: TStringField;
    ds_cli: TDataSource;
    dbn_cli: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

end.
