object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 0
  Width = 0
  object tb_cliente: TTable
    Active = True
    DatabaseName = 'willy'
    TableName = 'Clientes.db'
    Left = 16
    Top = 8
    object tb_clienteCod_cli: TAutoIncField
      DisplayLabel = 'Codigo'
      FieldName = 'Cod_cli'
      ReadOnly = True
    end
    object tb_clienteNome_cli: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Nome_cli'
      Size = 50
    end
    object tb_clienteFone_cli: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'Fone_cli'
      Size = 10
    end
    object tb_clienteCidade_cli: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'Cidade_cli'
    end
    object tb_clienteFoto_cli: TGraphicField
      DisplayLabel = 'Foto'
      FieldName = 'Foto_cli'
      BlobType = ftGraphic
    end
  end
  object ds_cliente: TDataSource
    DataSet = tb_cliente
    Left = 88
    Top = 8
  end
  object tb_produto: TTable
    Active = True
    DatabaseName = 'willy'
    TableName = 'Produtos.db'
    Left = 16
    Top = 64
    object tb_produtoCod_pro: TAutoIncField
      DisplayLabel = 'Codigo'
      FieldName = 'Cod_pro'
      ReadOnly = True
    end
    object tb_produtoDesc_pro: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'Desc_pro'
      Size = 50
    end
    object tb_produtoPreco_pro: TCurrencyField
      DisplayLabel = 'Preço'
      FieldName = 'Preco_pro'
    end
  end
  object ds_produto: TDataSource
    DataSet = tb_produto
    Left = 88
    Top = 64
  end
  object ds_venda: TDataSource
    DataSet = tb_venda
    Left = 88
    Top = 120
  end
  object tb_venda: TTable
    Active = True
    DatabaseName = 'willy'
    TableName = 'Vendas.db'
    Left = 16
    Top = 120
    object tb_vendaCod_ven: TAutoIncField
      DisplayLabel = 'Codigo'
      FieldName = 'Cod_ven'
      ReadOnly = True
    end
    object tb_vendaData_ven: TDateField
      DisplayLabel = 'Data'
      FieldName = 'Data_ven'
    end
    object tb_vendaQtd_ven: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qtd_ven'
    end
    object tb_vendaValor_ven: TCurrencyField
      FieldName = 'Valor_ven'
    end
    object tb_vendaCod_pro: TFloatField
      DisplayLabel = 'Codigo Produto'
      FieldName = 'Cod_pro'
    end
    object tb_vendaCod_cli: TFloatField
      DisplayLabel = 'Codigo Cliente'
      FieldName = 'Cod_cli'
    end
  end
end
