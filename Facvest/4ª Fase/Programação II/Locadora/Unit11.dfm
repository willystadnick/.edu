object frmDevlocacao: TfrmDevlocacao
  Left = 262
  Top = 115
  Width = 717
  Height = 400
  Caption = 'Menu de Devolução'
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
    Left = 184
    Top = 16
    Width = 296
    Height = 45
    Caption = 'Menu de Devolução'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 80
    Width = 657
    Height = 153
    DataSource = DMLocadora.DSLocacao
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 240
    Width = 660
    Height = 41
    DataSource = DMLocadora.DSLocacao
    TabOrder = 1
  end
  object voltar: TBitBtn
    Left = 516
    Top = 312
    Width = 165
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
end
