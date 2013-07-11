object DMLocadora: TDMLocadora
  OldCreateOrder = False
  Left = 252
  Top = 329
  Height = 640
  Width = 870
  object clientes: TTable
    Active = True
    DatabaseName = 'Roger'
    TableName = 'clientes.db'
    Left = 32
    Top = 24
    object clientesCod_cliente: TAutoIncField
      DisplayWidth = 12
      FieldName = 'Cod_cliente'
      ReadOnly = True
    end
    object clientesNome: TStringField
      DisplayWidth = 33
      FieldName = 'Nome'
    end
    object clientesFone: TStringField
      DisplayWidth = 24
      FieldName = 'Fone'
    end
    object clientesEnd: TStringField
      DisplayWidth = 24
      FieldName = 'End'
    end
  end
  object DSClientes: TDataSource
    DataSet = clientes
    Left = 120
    Top = 24
  end
  object Veiculos: TTable
    Active = True
    DatabaseName = 'Roger'
    TableName = 'veiculos.db'
    Left = 32
    Top = 96
    object VeiculosCod_veiculo: TAutoIncField
      FieldName = 'Cod_veiculo'
      ReadOnly = True
    end
    object VeiculosModelo: TStringField
      FieldName = 'Modelo'
    end
    object VeiculosPreco: TStringField
      FieldName = 'Preco'
      Size = 10
    end
    object VeiculosStatus: TStringField
      FieldName = 'Status'
      Size = 30
    end
  end
  object DSVeiculos: TDataSource
    DataSet = Veiculos
    Left = 120
    Top = 96
  end
  object DSLocacao: TDataSource
    DataSet = Locacao
    Left = 120
    Top = 168
  end
  object Locacao: TTable
    Active = True
    DatabaseName = 'Roger'
    IndexName = 'indexmodelo'
    TableName = 'locacao.db'
    Left = 32
    Top = 168
    object LocacaoCod_locacao: TAutoIncField
      FieldName = 'Cod_locacao'
      ReadOnly = True
    end
    object LocacaoNome: TStringField
      FieldName = 'Nome'
    end
    object LocacaoModelo: TStringField
      FieldName = 'Modelo'
    end
    object LocacaoPreco: TStringField
      FieldName = 'Preco'
    end
    object LocacaoStatus: TStringField
      FieldName = 'Status'
      Size = 30
    end
  end
  object QVeiculos: TQuery
    Active = True
    DatabaseName = 'Roger'
    DataSource = DSVeiculos
    SQL.Strings = (
      'select * from veiculos')
    Left = 208
    Top = 96
  end
  object Qclientes: TQuery
    Active = True
    DatabaseName = 'Roger'
    DataSource = DSClientes
    SQL.Strings = (
      'select * from clientes')
    Left = 208
    Top = 24
  end
  object DSQclientes: TDataSource
    DataSet = Qclientes
    Left = 296
    Top = 24
  end
  object DSQveiculos: TDataSource
    DataSet = QVeiculos
    Left = 296
    Top = 96
  end
end
