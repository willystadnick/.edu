object clocacao: Tclocacao
  Left = 192
  Top = 114
  Width = 544
  Height = 404
  Caption = 'Consulta locação'
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
    Left = 128
    Top = 16
    Width = 279
    Height = 45
    Caption = 'Consulta Locações'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 176
    Top = 72
    Width = 185
    Height = 97
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 37
      Top = 16
      Width = 110
      Height = 13
      Caption = 'Modelo do Veículo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 8
      Top = 32
      Width = 169
      Height = 24
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 56
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Localizar'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 184
    Width = 521
    Height = 120
    DataSource = DMLocadora.DSLocacao
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 220
    Top = 320
    Width = 105
    Height = 41
    Caption = 'Voltar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
end
