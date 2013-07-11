object Form1: TForm1
  Left = 244
  Top = 188
  Width = 457
  Height = 256
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
    Top = 32
    Width = 33
    Height = 13
    Caption = 'Código'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 80
    Top = 32
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 80
    Width = 46
    Height = 13
    Caption = 'Endereço'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 320
    Top = 80
    Width = 21
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 320
    Top = 128
    Width = 33
    Height = 13
    Caption = 'Estado'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 8
    Top = 176
    Width = 80
    Height = 13
    Caption = 'Fone Residência'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 96
    Top = 176
    Width = 32
    Height = 13
    Caption = 'Celular'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 8
    Top = 8
    Width = 132
    Height = 13
    Caption = 'CADASTRO DE CLIENTES'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 48
    Width = 64
    Height = 21
    DataField = 'Codigo_cli'
    DataSource = DataModule2.DS_Clientes
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 80
    Top = 48
    Width = 353
    Height = 21
    DataField = 'Nome_cli'
    DataSource = DataModule2.DS_Clientes
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 96
    Width = 304
    Height = 21
    DataField = 'Endereco_cli'
    DataSource = DataModule2.DS_Clientes
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 144
    Width = 304
    Height = 21
    DataField = 'Cidade_cli'
    DataSource = DataModule2.DS_Clientes
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 320
    Top = 96
    Width = 113
    Height = 21
    DataField = 'Cep_cli'
    DataSource = DataModule2.DS_Clientes
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 320
    Top = 144
    Width = 113
    Height = 21
    DataField = 'Estado_cli'
    DataSource = DataModule2.DS_Clientes
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 192
    Width = 81
    Height = 21
    DataField = 'FoneRes_cli'
    DataSource = DataModule2.DS_Clientes
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 96
    Top = 192
    Width = 81
    Height = 21
    DataField = 'FoneCel_cli'
    DataSource = DataModule2.DS_Clientes
    TabOrder = 7
  end
  object N_Clientes: TDBNavigator
    Left = 192
    Top = 192
    Width = 240
    Height = 25
    DataSource = DataModule2.DS_Clientes
    TabOrder = 8
  end
end
