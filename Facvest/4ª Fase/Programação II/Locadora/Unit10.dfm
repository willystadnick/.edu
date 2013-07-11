object frmLocLocacao: TfrmLocLocacao
  Left = 226
  Top = 104
  Width = 546
  Height = 503
  Caption = 'Menu de Locação'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 86
    Width = 41
    Height = 19
    Caption = 'Nome:'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 166
    Width = 50
    Height = 19
    Caption = 'Modelo:'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 230
    Width = 40
    Height = 19
    Caption = 'Preço:'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 286
    Width = 47
    Height = 19
    Caption = 'Status:'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 352
    Top = 86
    Width = 49
    Height = 19
    Caption = 'Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 352
    Top = 166
    Width = 51
    Height = 19
    Caption = 'Veículo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 24
    Width = 512
    Height = 45
    Caption = 'Cadastro de Locação de Veiculos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 40
    Top = 104
    Width = 281
    Height = 26
    DataField = 'Nome'
    DataSource = DMLocadora.DSLocacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 40
    Top = 184
    Width = 281
    Height = 26
    DataField = 'Modelo'
    DataSource = DMLocadora.DSLocacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 40
    Top = 248
    Width = 153
    Height = 26
    DataField = 'Preco'
    DataSource = DMLocadora.DSLocacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 40
    Top = 304
    Width = 449
    Height = 26
    DataField = 'Status'
    DataSource = DMLocadora.DSLocacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBLnomecli: TDBLookupComboBox
    Left = 352
    Top = 104
    Width = 145
    Height = 26
    DataField = 'Nome'
    DataSource = DMLocadora.DSLocacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    KeyField = 'Nome'
    ListField = 'Nome'
    ListSource = DMLocadora.DSClientes
    ParentFont = False
    TabOrder = 4
  end
  object DBLveiculo: TDBLookupComboBox
    Left = 352
    Top = 184
    Width = 145
    Height = 26
    DataField = 'Modelo'
    DataSource = DMLocadora.DSLocacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    KeyField = 'Modelo'
    ListField = 'Modelo'
    ListSource = DMLocadora.DSVeiculos
    ParentFont = False
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 40
    Top = 352
    Width = 450
    Height = 41
    DataSource = DMLocadora.DSLocacao
    TabOrder = 6
  end
  object voltar: TBitBtn
    Left = 336
    Top = 416
    Width = 153
    Height = 41
    Caption = 'Voltar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = voltarClick
  end
end
