object frmcad_clientes: Tfrmcad_clientes
  Left = 315
  Top = 210
  Width = 552
  Height = 352
  Caption = 'Menu Cadastro de Clientes'
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
    Left = 24
    Top = 138
    Width = 76
    Height = 23
    Caption = 'Endereço:'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 390
    Top = 140
    Width = 42
    Height = 23
    Caption = 'Fone:'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 89
    Width = 49
    Height = 23
    Caption = 'Nome:'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 160
    Width = 321
    Height = 21
    DataField = 'End'
    DataSource = DMLocadora.DSClientes
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 390
    Top = 160
    Width = 124
    Height = 21
    DataField = 'Fone'
    DataSource = DMLocadora.DSClientes
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 112
    Width = 489
    Height = 21
    DataField = 'Nome'
    DataSource = DMLocadora.DSClientes
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 200
    Width = 490
    Height = 49
    DataSource = DMLocadora.DSClientes
    TabOrder = 3
  end
  object voltar: TBitBtn
    Left = 360
    Top = 264
    Width = 153
    Height = 41
    Caption = 'Voltar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = voltarClick
  end
  object Titulo: TStaticText
    Left = 112
    Top = 24
    Width = 329
    Height = 49
    Caption = 'Cadastro de Clientes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
end
