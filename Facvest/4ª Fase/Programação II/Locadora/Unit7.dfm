object frmcad_veiculos: Tfrmcad_veiculos
  Left = 316
  Top = 209
  Width = 551
  Height = 351
  Caption = 'Menu Cadastro de Veiculos'
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
    Left = 16
    Top = 72
    Width = 52
    Height = 23
    Caption = 'Modelo'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 130
    Width = 42
    Height = 23
    Caption = 'Preco'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 168
    Top = 127
    Width = 52
    Height = 23
    Caption = 'Status'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 96
    Width = 513
    Height = 21
    DataField = 'Modelo'
    DataSource = DMLocadora.DSVeiculos
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 152
    Width = 129
    Height = 21
    DataField = 'Preco'
    DataSource = DMLocadora.DSVeiculos
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 168
    Top = 152
    Width = 361
    Height = 21
    DataField = 'Status'
    DataSource = DMLocadora.DSVeiculos
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 45
    Top = 192
    Width = 480
    Height = 41
    DataSource = DMLocadora.DSVeiculos
    TabOrder = 3
  end
  object voltar: TBitBtn
    Left = 368
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
    Left = 109
    Top = 16
    Width = 331
    Height = 49
    Caption = 'Cadastro de Veículos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
end
