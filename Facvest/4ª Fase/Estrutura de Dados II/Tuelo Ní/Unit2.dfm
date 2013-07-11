object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 0
  Width = 0
  object DS_Clientes: TDataSource
    DataSet = TB_Clientes
    Left = 128
    Top = 8
  end
  object TB_Clientes: TTable
    Active = True
    DatabaseName = 'tuelo'
    TableName = 'Clientes.db'
    Left = 32
    Top = 8
    object TB_ClientesCodigo_cli: TAutoIncField
      FieldName = 'Codigo_cli'
      ReadOnly = True
    end
    object TB_ClientesNome_cli: TStringField
      FieldName = 'Nome_cli'
      Size = 50
    end
    object TB_ClientesEndereco_cli: TStringField
      FieldName = 'Endereco_cli'
      Size = 50
    end
    object TB_ClientesCidade_cli: TStringField
      FieldName = 'Cidade_cli'
      Size = 50
    end
    object TB_ClientesCep_cli: TStringField
      FieldName = 'Cep_cli'
      Size = 10
    end
    object TB_ClientesEstado_cli: TStringField
      FieldName = 'Estado_cli'
      Size = 50
    end
    object TB_ClientesFoneRes_cli: TStringField
      FieldName = 'FoneRes_cli'
      Size = 10
    end
    object TB_ClientesFoneCel_cli: TStringField
      FieldName = 'FoneCel_cli'
      Size = 10
    end
  end
  object DS_Fornecedor: TDataSource
    DataSet = TB_Fornecedor
    Left = 128
    Top = 56
  end
  object TB_Fornecedor: TTable
    Active = True
    DatabaseName = 'tuelo'
    TableName = 'Fornecedor.db'
    Left = 32
    Top = 56
    object TB_FornecedorCodigo_forn: TAutoIncField
      FieldName = 'Codigo_forn'
      ReadOnly = True
    end
    object TB_FornecedorNome_forn: TStringField
      FieldName = 'Nome_forn'
      Size = 50
    end
    object TB_FornecedorContato_forn: TStringField
      FieldName = 'Contato_forn'
      Size = 50
    end
    object TB_FornecedorFone_forn: TStringField
      FieldName = 'Fone_forn'
      Size = 10
    end
  end
  object DS_Tipo: TDataSource
    DataSet = TB_Tipo
    Left = 128
    Top = 104
  end
  object TB_Tipo: TTable
    Active = True
    DatabaseName = 'tuelo'
    TableName = 'Tipo.db'
    Left = 32
    Top = 104
    object TB_TipoCodigo_tipo2: TAutoIncField
      FieldName = 'Codigo_tipo'
      ReadOnly = True
    end
    object TB_TipoDescricao_tipo2: TStringField
      FieldName = 'Descricao_tipo'
      Size = 50
    end
    object TB_TipoPreco_tipo2: TCurrencyField
      FieldName = 'Preco_tipo'
    end
  end
  object DS_Filmes: TDataSource
    DataSet = TB_Filmes
    Left = 128
    Top = 152
  end
  object TB_Filmes: TTable
    Active = True
    DatabaseName = 'tuelo'
    TableName = 'Filmes.db'
    Left = 32
    Top = 152
    object TB_FilmesCodigo_filme: TAutoIncField
      FieldName = 'Codigo_filme'
      ReadOnly = True
    end
    object TB_FilmesTitulo_filme: TStringField
      FieldName = 'Titulo_filme'
      Size = 50
    end
    object TB_FilmesAno_filme: TStringField
      FieldName = 'Ano_filme'
      Size = 50
    end
    object TB_FilmesNacionalidade_filme: TStringField
      FieldName = 'Nacionalidade_filme'
      Size = 50
    end
    object TB_FilmesCategoria_filme: TStringField
      FieldName = 'Categoria_filme'
      Size = 50
    end
    object TB_FilmesCodigo_tipo: TFloatField
      FieldName = 'Codigo_tipo'
    end
  end
  object TB_Emprestimo: TTable
    Active = True
    DatabaseName = 'tuelo'
    TableName = 'Emprestimo.db'
    Left = 32
    Top = 200
    object TB_EmprestimoCodigo_emp: TAutoIncField
      FieldName = 'Codigo_emp'
      ReadOnly = True
    end
    object TB_EmprestimoDataPeg_emp: TDateField
      FieldName = 'DataPeg_emp'
    end
    object TB_EmprestimoDataDev_emp: TDateField
      FieldName = 'DataDev_emp'
    end
    object TB_EmprestimoTempo_emp: TStringField
      FieldName = 'Tempo_emp'
      Size = 10
    end
    object TB_EmprestimoValor_emp: TCurrencyField
      FieldName = 'Valor_emp'
    end
    object TB_EmprestimoCodigo_filme: TFloatField
      FieldName = 'Codigo_filme'
    end
    object TB_EmprestimoCodigo_cliente: TFloatField
      FieldName = 'Codigo_cliente'
    end
  end
  object DS_Emprestimo: TDataSource
    DataSet = TB_Emprestimo
    Left = 128
    Top = 200
  end
  object TB_Compras: TTable
    Active = True
    DatabaseName = 'tuelo'
    TableName = 'Compras.db'
    Left = 32
    Top = 248
    object TB_ComprasCodigo_compras: TAutoIncField
      FieldName = 'Codigo_compras'
      ReadOnly = True
    end
    object TB_ComprasData_compras: TDateField
      FieldName = 'Data_compras'
    end
    object TB_ComprasQtd_compras: TStringField
      FieldName = 'Qtd_compras'
      Size = 10
    end
    object TB_ComprasCodigo_filme: TFloatField
      FieldName = 'Codigo_filme'
    end
    object TB_ComprasCodigo_forn: TFloatField
      FieldName = 'Codigo_forn'
    end
  end
  object DS_Compras: TDataSource
    DataSet = TB_Compras
    Left = 128
    Top = 248
  end
end
