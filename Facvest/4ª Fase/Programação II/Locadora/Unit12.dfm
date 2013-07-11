object frmclipesquisar: Tfrmclipesquisar
  Left = 225
  Top = 172
  Width = 550
  Height = 453
  Caption = 'Menu Pesquisa Clientes'
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
    Left = 112
    Top = 16
    Width = 315
    Height = 45
    Caption = 'Pesquisa de Clientes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 93
    Width = 111
    Height = 19
    Caption = 'Nome do Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 24
    Top = 112
    Width = 337
    Height = 21
    TabOrder = 0
  end
  object Pesquisar: TBitBtn
    Left = 376
    Top = 104
    Width = 137
    Height = 31
    Caption = 'Pesquisar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = PesquisarClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 176
    Width = 489
    Height = 169
    DataSource = DMLocadora.DSQclientes
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object voltar: TBitBtn
    Left = 344
    Top = 368
    Width = 153
    Height = 41
    Caption = 'Voltar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = voltarClick
  end
end
