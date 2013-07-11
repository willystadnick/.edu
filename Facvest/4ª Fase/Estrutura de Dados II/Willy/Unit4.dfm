object Form4: TForm4
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = 'Cadastro de Vendas'
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
    Width = 33
    Height = 13
    Caption = 'Codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 23
    Height = 13
    Caption = 'Data'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 55
    Height = 13
    Caption = 'Quantidade'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 224
    Width = 24
    Height = 13
    Caption = 'Valor'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 136
    Width = 73
    Height = 13
    Caption = 'Codigo Produto'
  end
  object Label6: TLabel
    Left = 8
    Top = 176
    Width = 68
    Height = 13
    Caption = 'Codigo Cliente'
  end
  object Label7: TLabel
    Left = 176
    Top = 136
    Width = 28
    Height = 13
    Caption = 'Preço'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 64
    Height = 21
    DataField = 'Cod_ven'
    DataSource = DataModule2.ds_venda
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 64
    Height = 21
    DataField = 'Data_ven'
    DataSource = DataModule2.ds_venda
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 104
    Width = 64
    Height = 21
    DataField = 'Qtd_ven'
    DataSource = DataModule2.ds_venda
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 240
    Width = 64
    Height = 21
    DataField = 'Valor_ven'
    DataSource = DataModule2.ds_venda
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 152
    Width = 145
    Height = 21
    DataField = 'Cod_pro'
    DataSource = DataModule2.ds_venda
    KeyField = 'Cod_pro'
    ListField = 'Desc_pro'
    ListSource = DataModule2.ds_produto
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 8
    Top = 192
    Width = 145
    Height = 21
    DataField = 'Cod_cli'
    DataSource = DataModule2.ds_venda
    KeyField = 'Cod_cli'
    ListField = 'Nome_cli'
    ListSource = DataModule2.ds_cliente
    TabOrder = 5
  end
  object TDBEdit
    Left = 168
    Top = 152
    Width = 121
    Height = 21
    DataField = 'Preco_pro'
    DataSource = DataModule2.ds_produto
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 280
    Width = 240
    Height = 25
    DataSource = DataModule2.ds_venda
    TabOrder = 7
  end
  object Button1: TButton
    Left = 104
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Calcula'
    TabOrder = 8
    OnClick = Button1Click
  end
end
