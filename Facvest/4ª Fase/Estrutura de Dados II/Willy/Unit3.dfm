object Form3: TForm3
  Left = 204
  Top = 135
  Width = 544
  Height = 375
  Caption = 'Cadastro de Produtos'
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
    Caption = 'Codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 48
    Height = 13
    Caption = 'Descrição'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 112
    Width = 28
    Height = 13
    Caption = 'Preço'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 8
    Width = 102
    Height = 13
    Caption = 'Cadastro de Produtos'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 48
    Width = 64
    Height = 21
    DataField = 'Cod_pro'
    DataSource = DataModule2.ds_produto
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 88
    Width = 121
    Height = 21
    DataField = 'Desc_pro'
    DataSource = DataModule2.ds_produto
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 128
    Width = 64
    Height = 21
    DataField = 'Preco_pro'
    DataSource = DataModule2.ds_produto
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 40
    Top = 168
    Width = 240
    Height = 25
    DataSource = DataModule2.ds_produto
    TabOrder = 3
  end
end
