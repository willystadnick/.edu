object Form1: TForm1
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Código'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 24
    Height = 13
    Caption = 'Fone'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 19
    Height = 13
    Caption = 'End'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 168
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 208
    Width = 33
    Height = 13
    Caption = 'Estado'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 8
    Top = 248
    Width = 41
    Height = 13
    Caption = 'Empresa'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 8
    Top = 288
    Width = 27
    Height = 13
    Caption = 'Idade'
    FocusControl = DBEdit8
  end
  object dbn_cli: TDBNavigator
    Left = 288
    Top = 320
    Width = 240
    Height = 25
    DataSource = ds_cli
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 64
    Height = 21
    DataField = 'Cod_Cli'
    DataSource = ds_cli
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 304
    Height = 21
    DataField = 'Nome_Cli'
    DataSource = ds_cli
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 104
    Width = 64
    Height = 21
    DataField = 'Fone_Cli'
    DataSource = ds_cli
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 144
    Width = 304
    Height = 21
    DataField = 'End_Cli'
    DataSource = ds_cli
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 184
    Width = 184
    Height = 21
    DataField = 'Cidade_Cli'
    DataSource = ds_cli
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 224
    Width = 16
    Height = 21
    DataField = 'Estado_Cli'
    DataSource = ds_cli
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 264
    Width = 304
    Height = 21
    DataField = 'Empresa_Cli'
    DataSource = ds_cli
    TabOrder = 7
  end
  object DBEdit8: TDBEdit
    Left = 8
    Top = 304
    Width = 64
    Height = 21
    DataField = 'Idade_Cli'
    DataSource = ds_cli
    TabOrder = 8
  end
  object tab_cli: TTable
    DatabaseName = 'willy'
    TableName = 'clientes.db'
    Left = 440
    Top = 8
    object tab_cliCod_Cli: TAutoIncField
      DisplayLabel = 'Código'
      FieldName = 'Cod_Cli'
      ReadOnly = True
    end
    object tab_cliNome_Cli: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Nome_Cli'
      Size = 50
    end
    object tab_cliFone_Cli: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'Fone_Cli'
      Size = 10
    end
    object tab_cliEnd_Cli: TStringField
      DisplayLabel = 'End'
      FieldName = 'End_Cli'
      Size = 50
    end
    object tab_cliCidade_Cli: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'Cidade_Cli'
      Size = 30
    end
    object tab_cliEstado_Cli: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'Estado_Cli'
      Size = 2
    end
    object tab_cliEmpresa_Cli: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'Empresa_Cli'
      Size = 50
    end
    object tab_cliIdade_Cli: TStringField
      DisplayLabel = 'Idade'
      FieldName = 'Idade_Cli'
      Size = 10
    end
  end
  object ds_cli: TDataSource
    DataSet = tab_cli
    Left = 472
    Top = 8
  end
end
