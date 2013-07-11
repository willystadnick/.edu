object frmManClientes: TfrmManClientes
  Left = 270
  Top = 158
  Width = 568
  Height = 418
  Caption = 'Menu Manutenção Clientes'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 24
    Top = 72
    Width = 513
    Height = 185
    DataSource = DMLocadora.DSClientes
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = [fsBold]
  end
  object DBNavigator1: TDBNavigator
    Left = 26
    Top = 274
    Width = 510
    Height = 49
    DataSource = DMLocadora.DSClientes
    TabOrder = 1
  end
  object voltar: TBitBtn
    Left = 384
    Top = 336
    Width = 153
    Height = 41
    Caption = 'Voltar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = voltarClick
  end
  object Titulo: TStaticText
    Left = 88
    Top = 8
    Width = 372
    Height = 49
    Caption = 'Manutenção de Clientes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
end
