object ServiceCadastro: TServiceCadastro
  Height = 464
  Width = 701
  object QRY_pessoas: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from pessoas  where pes_codigo = :codigo')
    Left = 56
    Top = 32
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_pessoasPES_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PES_CODIGO'
      Origin = 'PES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_pessoasPES_RAZAO: TStringField
      FieldName = 'PES_RAZAO'
      Origin = 'PES_RAZAO'
      Size = 100
    end
    object QRY_pessoasPES_FANTASIA: TStringField
      FieldName = 'PES_FANTASIA'
      Origin = 'PES_FANTASIA'
      Size = 100
    end
    object QRY_pessoasPES_TELEFONE: TStringField
      FieldName = 'PES_TELEFONE'
      Origin = 'PES_TELEFONE'
      Size = 50
    end
    object QRY_pessoasPES_CNPJCPF: TStringField
      FieldName = 'PES_CNPJCPF'
      Origin = 'PES_CNPJCPF'
      Size = 50
    end
    object QRY_pessoasPES_IERG: TStringField
      FieldName = 'PES_IERG'
      Origin = 'PES_IERG'
      Size = 50
    end
    object QRY_pessoasPES_OBSERVACAO: TStringField
      FieldName = 'PES_OBSERVACAO'
      Origin = 'PES_OBSERVACAO'
      Size = 200
    end
    object QRY_pessoasPES_TIPOPESSOA: TIntegerField
      FieldName = 'PES_TIPOPESSOA'
      Origin = 'PES_TIPOPESSOA'
    end
  end
  object QRY_enderecos: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from endereco where end_codigo = :codigo')
    Left = 56
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_enderecosEND_CODIGO: TIntegerField
      FieldName = 'END_CODIGO'
      Origin = 'END_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_enderecosEND_PESSOA: TIntegerField
      FieldName = 'END_PESSOA'
      Origin = 'END_PESSOA'
    end
    object QRY_enderecosEND_CEP: TStringField
      FieldName = 'END_CEP'
      Origin = 'END_CEP'
    end
    object QRY_enderecosEND_CIDADE: TStringField
      FieldName = 'END_CIDADE'
      Origin = 'END_CIDADE'
      Size = 100
    end
    object QRY_enderecosEND_ENDERECO: TStringField
      FieldName = 'END_ENDERECO'
      Origin = 'END_ENDERECO'
      Size = 100
    end
    object QRY_enderecosEND_BAIRRO: TStringField
      FieldName = 'END_BAIRRO'
      Origin = 'END_BAIRRO'
      Size = 100
    end
    object QRY_enderecosEND_OBSERVACAO: TStringField
      FieldName = 'END_OBSERVACAO'
      Origin = 'END_OBSERVACAO'
      Size = 100
    end
    object QRY_enderecosEND_NUMERO: TStringField
      FieldName = 'END_NUMERO'
      Origin = 'END_NUMERO'
    end
  end
  object QRY_produto1: TFDQuery
    AfterScroll = QRY_produto1AfterScroll
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from produto1 where pr1_codigo = :codigo')
    Left = 48
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_produto1PR1_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PR1_CODIGO'
      Origin = 'PR1_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_produto1PR1_NOMECOMPLETO: TStringField
      FieldName = 'PR1_NOMECOMPLETO'
      Origin = 'PR1_NOMECOMPLETO'
      Size = 100
    end
    object QRY_produto1PR1_NOMEPOPULAR: TStringField
      FieldName = 'PR1_NOMEPOPULAR'
      Origin = 'PR1_NOMEPOPULAR'
      Size = 100
    end
    object QRY_produto1PR1_CODIGOBARRA: TStringField
      FieldName = 'PR1_CODIGOBARRA'
      Origin = 'PR1_CODIGOBARRA'
      Size = 50
    end
    object QRY_produto1PR1_REFERENCIA: TStringField
      FieldName = 'PR1_REFERENCIA'
      Origin = 'PR1_REFERENCIA'
      Size = 50
    end
    object QRY_produto1PR1_GRUPO: TIntegerField
      FieldName = 'PR1_GRUPO'
      Origin = 'PR1_GRUPO'
    end
    object QRY_produto1PR1_SUBGRUPO: TIntegerField
      FieldName = 'PR1_SUBGRUPO'
      Origin = 'PR1_SUBGRUPO'
    end
    object QRY_produto1PR1_NCM: TStringField
      FieldName = 'PR1_NCM'
      Origin = 'PR1_NCM'
      Size = 10
    end
  end
  object QRY_produto2: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from produto2 where pr2_codigo = :codigo')
    Left = 48
    Top = 224
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_produto2PR2_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PR2_CODIGO'
      Origin = 'PR2_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_produto2PR2_CODIGOPR1: TIntegerField
      FieldName = 'PR2_CODIGOPR1'
      Origin = 'PR2_CODIGOPR1'
    end
    object QRY_produto2PR2_FILIAL: TIntegerField
      FieldName = 'PR2_FILIAL'
      Origin = 'PR2_FILIAL'
    end
    object QRY_produto2PR2_CUSTOINI: TFMTBCDField
      FieldName = 'PR2_CUSTOINI'
      Origin = 'PR2_CUSTOINI'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PR2_VENDAVISTA: TFMTBCDField
      FieldName = 'PR2_VENDAVISTA'
      Origin = 'PR2_VENDAVISTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PR2_VENDAPRAZO: TFMTBCDField
      FieldName = 'PR2_VENDAPRAZO'
      Origin = 'PR2_VENDAPRAZO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PR2_SITRIBUTARIA: TIntegerField
      FieldName = 'PR2_SITRIBUTARIA'
      Origin = 'PR2_SITRIBUTARIA'
    end
    object QRY_produto2PR2_ESTOQUE: TFMTBCDField
      Alignment = taCenter
      FieldName = 'PR2_ESTOQUE'
      Origin = 'PR2_ESTOQUE'
      Precision = 18
      Size = 2
    end
  end
  object QRY_movestoque: TFDQuery
    AfterScroll = QRY_movestoqueAfterScroll
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from movestoque where mov_codigo = :codigo')
    Left = 224
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_movestoqueMOV_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'MOV_CODIGO'
      Origin = 'MOV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_movestoqueMOV_TIPOESTOQUE: TIntegerField
      FieldName = 'MOV_TIPOESTOQUE'
      Origin = 'MOV_TIPOESTOQUE'
    end
    object QRY_movestoqueMOV_DATA: TDateField
      FieldName = 'MOV_DATA'
      Origin = 'MOV_DATA'
    end
    object QRY_movestoqueMOV_HORA: TTimeField
      FieldName = 'MOV_HORA'
      Origin = 'MOV_HORA'
    end
    object QRY_movestoqueMOV_VLRDESCONTO: TFMTBCDField
      FieldName = 'MOV_VLRDESCONTO'
      Origin = 'MOV_VLRDESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_movestoqueMOV_VLRTOTAL: TFMTBCDField
      FieldName = 'MOV_VLRTOTAL'
      Origin = 'MOV_VLRTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_movestoqueMOV_VENDEDOR: TIntegerField
      FieldName = 'MOV_VENDEDOR'
      Origin = 'MOV_VENDEDOR'
    end
    object QRY_movestoqueMOV_CLIENTE: TIntegerField
      FieldName = 'MOV_CLIENTE'
      Origin = 'MOV_CLIENTE'
    end
  end
  object QRY_movestoqueitem: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from movestoque_item where mvi_codigo = :codigo')
    Left = 224
    Top = 128
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_movestoqueitemMVI_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'MVI_CODIGO'
      Origin = 'MVI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_movestoqueitemMVI_CODIGOMOVESTOQUE: TIntegerField
      FieldName = 'MVI_CODIGOMOVESTOQUE'
      Origin = 'MVI_CODIGOMOVESTOQUE'
    end
    object QRY_movestoqueitemMVI_CODITEM: TIntegerField
      FieldName = 'MVI_CODITEM'
      Origin = 'MVI_CODITEM'
    end
    object QRY_movestoqueitemMVI_QUANTIDADE: TFMTBCDField
      FieldName = 'MVI_QUANTIDADE'
      Origin = 'MVI_QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object QRY_movestoqueitemMVI_VLRUNITARIO: TFMTBCDField
      FieldName = 'MVI_VLRUNITARIO'
      Origin = 'MVI_VLRUNITARIO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_movestoqueitemMVI_VLRTOTAL: TFMTBCDField
      FieldName = 'MVI_VLRTOTAL'
      Origin = 'MVI_VLRTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_movestoqueitemMVI_VLRDESCONTO: TFMTBCDField
      FieldName = 'MVI_VLRDESCONTO'
      Origin = 'MVI_VLRDESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object QRY_cadCaixa: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select'
      '  cx.*,'
      '  fp.for_descricao'
      'from caixa cx'
      'inner join formaspagamentos fp'
      'on (cx.cai_idvenda = fp.for_codigo)'
      'order by cx.cai_codigo desc')
    Left = 216
    Top = 192
    object QRY_cadCaixaCAI_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CAI_CODIGO'
      Origin = 'CAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_cadCaixaCAI_DATAHORA: TSQLTimeStampField
      FieldName = 'CAI_DATAHORA'
      Origin = 'CAI_DATAHORA'
    end
    object QRY_cadCaixaCAI_TIPO: TStringField
      FieldName = 'CAI_TIPO'
      Origin = 'CAI_TIPO'
      Size = 1
    end
    object QRY_cadCaixaCAI_VALOR: TFMTBCDField
      FieldName = 'CAI_VALOR'
      Origin = 'CAI_VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_cadCaixaCAI_DESCRICAO: TStringField
      FieldName = 'CAI_DESCRICAO'
      Origin = 'CAI_DESCRICAO'
      Size = 200
    end
    object QRY_cadCaixaCAI_IDFORMAPGTO: TIntegerField
      FieldName = 'CAI_IDFORMAPGTO'
      Origin = 'CAI_IDFORMAPGTO'
    end
    object QRY_cadCaixaCAI_IDVENDA: TIntegerField
      FieldName = 'CAI_IDVENDA'
      Origin = 'CAI_IDVENDA'
    end
    object QRY_cadCaixaFOR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_DESCRICAO'
      Origin = 'FOR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object QRY_formasPGTO: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from formaspagamentos order by 1')
    Left = 216
    Top = 256
    object QRY_formasPGTOFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_formasPGTOFOR_DESCRICAO: TStringField
      FieldName = 'FOR_DESCRICAO'
      Origin = 'FOR_DESCRICAO'
      Size = 100
    end
    object QRY_formasPGTOFOR_GERARECEBER: TStringField
      FieldName = 'FOR_GERARECEBER'
      Origin = 'FOR_GERARECEBER'
      Size = 10
    end
  end
  object QRY_receber1: TFDQuery
    AfterScroll = QRY_receber1AfterScroll
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select r1.*, ps.pes_razao from receber1 r1'
      ' inner join pessoas ps '
      'on (r1.rc1_cliente = ps.pes_codigo)'
      'where r1.rc1_codigo = :codigo')
    Left = 440
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_receber1RC1_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'RC1_CODIGO'
      Origin = 'RC1_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_receber1RC1_NUMDOCTO: TStringField
      FieldName = 'RC1_NUMDOCTO'
      Origin = 'RC1_NUMDOCTO'
      Size = 50
    end
    object QRY_receber1RC1_CLIENTE: TIntegerField
      FieldName = 'RC1_CLIENTE'
      Origin = 'RC1_CLIENTE'
    end
    object QRY_receber1RC1_VALOR: TFMTBCDField
      FieldName = 'RC1_VALOR'
      Origin = 'RC1_VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_receber1PES_RAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PES_RAZAO'
      Origin = 'PES_RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object QRY_receber2: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from receber2 where rc2_codigo = :codigo')
    Left = 440
    Top = 168
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_receber2RC2_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'RC2_CODIGO'
      Origin = 'RC2_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_receber2RC2_NUMDOCTO: TStringField
      FieldName = 'RC2_NUMDOCTO'
      Origin = 'RC2_NUMDOCTO'
      Size = 50
    end
    object QRY_receber2RC2_DATA: TDateField
      FieldName = 'RC2_DATA'
      Origin = 'RC2_DATA'
    end
    object QRY_receber2RC2_VALORPARCELA: TFMTBCDField
      AutoGenerateValue = arAutoInc
      FieldName = 'RC2_VALORPARCELA'
      Origin = 'RC2_VALORPARCELA'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_receber2RC2_PARCELA: TStringField
      FieldName = 'RC2_PARCELA'
      Origin = 'RC2_PARCELA'
    end
    object QRY_receber2RC2_VENCIMENTO: TDateField
      FieldName = 'RC2_VENCIMENTO'
      Origin = 'RC2_VENCIMENTO'
    end
    object QRY_receber2RC2_VALORHAVER: TFMTBCDField
      AutoGenerateValue = arAutoInc
      FieldName = 'RC2_VALORHAVER'
      Origin = 'RC2_VALORHAVER'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_receber2RC2_VALORSALDO: TFMTBCDField
      AutoGenerateValue = arAutoInc
      FieldName = 'RC2_VALORSALDO'
      Origin = 'RC2_VALORSALDO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
end
