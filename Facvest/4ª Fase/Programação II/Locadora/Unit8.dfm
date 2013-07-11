object frmManVeiculos: TfrmManVeiculos
  Left = 314
  Top = 202
  Width = 573
  Height = 415
  Caption = 'Menu Manutenção de Veículos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 72
    Width = 529
    Height = 169
    DataSource = DMLocadora.DSVeiculos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 264
    Width = 520
    Height = 49
    DataSource = DMLocadora.DSVeiculos
    TabOrder = 1
  end
  object voltar: TBitBtn
    Left = 384
    Top = 328
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
    Width = 374
    Height = 49
    Caption = 'Manutenção de Veículos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
end
