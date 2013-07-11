object Form1: TForm1
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = 'Cadastro de Clientes'
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
    Top = 8
    Width = 97
    Height = 13
    Caption = 'Cadastro de Clientes'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 33
    Height = 13
    Caption = 'Codigo'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 8
    Top = 112
    Width = 24
    Height = 13
    Caption = 'Fone'
    FocusControl = DBEdit3
  end
  object Label5: TLabel
    Left = 8
    Top = 152
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit4
  end
  object Label6: TLabel
    Left = 8
    Top = 192
    Width = 21
    Height = 13
    Caption = 'Foto'
    FocusControl = DBImage1
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 48
    Width = 64
    Height = 21
    DataField = 'Cod_cli'
    DataSource = DataModule2.ds_cliente
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 88
    Width = 121
    Height = 21
    DataField = 'Nome_cli'
    DataSource = DataModule2.ds_cliente
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 128
    Width = 64
    Height = 21
    DataField = 'Fone_cli'
    DataSource = DataModule2.ds_cliente
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 168
    Width = 124
    Height = 21
    DataField = 'Cidade_cli'
    DataSource = DataModule2.ds_cliente
    TabOrder = 3
  end
  object DBImage1: TDBImage
    Left = 8
    Top = 208
    Width = 105
    Height = 105
    DataField = 'Foto_cli'
    DataSource = DataModule2.ds_cliente
    TabOrder = 4
  end
  object RadioGroup1: TRadioGroup
    Left = 152
    Top = 8
    Width = 185
    Height = 129
    Caption = 'Pesquisa'
    TabOrder = 5
  end
  object RadioButton1: TRadioButton
    Left = 160
    Top = 32
    Width = 113
    Height = 17
    Caption = 'Codigo'
    TabOrder = 6
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 160
    Top = 56
    Width = 113
    Height = 17
    Caption = 'Nome'
    TabOrder = 7
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 160
    Top = 80
    Width = 113
    Height = 17
    Caption = 'Cidade'
    TabOrder = 8
    OnClick = RadioButton3Click
  end
  object Edit1: TEdit
    Left = 160
    Top = 104
    Width = 169
    Height = 21
    TabOrder = 9
    OnChange = Edit1Change
  end
  object DBNavigator1: TDBNavigator
    Left = 120
    Top = 288
    Width = 240
    Height = 25
    DataSource = DataModule2.ds_cliente
    TabOrder = 10
  end
  object Button1: TButton
    Left = 200
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Procura'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 168
    Width = 105
    Height = 25
    Caption = 'Vai para Produtos'
    TabOrder = 12
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 168
    Width = 97
    Height = 25
    Caption = 'Vai para Vendas'
    TabOrder = 13
    OnClick = Button3Click
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 464
    Top = 272
  end
end
