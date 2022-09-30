inherited ServiceCadastro: TServiceCadastro
  Height = 445
  Width = 923
  object QRY_filial: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from filial where fil_codigo = :codigo')
    Left = 168
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_filialFIL_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'FIL_CODIGO'
      Origin = 'FIL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_filialFIL_RAZAO: TStringField
      FieldName = 'FIL_RAZAO'
      Origin = 'FIL_RAZAO'
      Size = 100
    end
    object QRY_filialFIL_FANTASIA: TStringField
      FieldName = 'FIL_FANTASIA'
      Origin = 'FIL_FANTASIA'
      Size = 100
    end
    object QRY_filialFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Origin = 'FIL_CNPJ'
      Size = 50
    end
    object QRY_filialFIL_TELEFONE: TStringField
      FieldName = 'FIL_TELEFONE'
      Origin = 'FIL_TELEFONE'
      Size = 50
    end
  end
  object QRY_abreCaixa: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from abrecaixa where abr_status = '#39'ABERTO'#39)
    Left = 168
    Top = 104
    object QRY_abreCaixaABR_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ABR_CODIGO'
      Origin = 'ABR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_abreCaixaABR_DATAABERTURA: TDateField
      FieldName = 'ABR_DATAABERTURA'
      Origin = 'ABR_DATAABERTURA'
    end
    object QRY_abreCaixaABR_HRAABERTURA: TTimeField
      FieldName = 'ABR_HRAABERTURA'
      Origin = 'ABR_HRAABERTURA'
    end
    object QRY_abreCaixaABR_DTAFECHAMENTO: TDateField
      FieldName = 'ABR_DTAFECHAMENTO'
      Origin = 'ABR_DTAFECHAMENTO'
    end
    object QRY_abreCaixaABR_HRAFECHAMENTO: TTimeField
      FieldName = 'ABR_HRAFECHAMENTO'
      Origin = 'ABR_HRAFECHAMENTO'
    end
    object QRY_abreCaixaABR_VLRINICIAL: TFMTBCDField
      FieldName = 'ABR_VLRINICIAL'
      Origin = 'ABR_VLRINICIAL'
      Precision = 18
      Size = 2
    end
    object QRY_abreCaixaABR_VLRFINAL: TFMTBCDField
      FieldName = 'ABR_VLRFINAL'
      Origin = 'ABR_VLRFINAL'
      Precision = 18
      Size = 2
    end
    object QRY_abreCaixaABR_CODIGOUSUARIO: TIntegerField
      FieldName = 'ABR_CODIGOUSUARIO'
      Origin = 'ABR_CODIGOUSUARIO'
    end
    object QRY_abreCaixaABR_STATUS: TStringField
      FieldName = 'ABR_STATUS'
      Origin = 'ABR_STATUS'
    end
    object QRY_abreCaixaABR_OBSERVACAO: TStringField
      FieldName = 'ABR_OBSERVACAO'
      Origin = 'ABR_OBSERVACAO'
      Size = 200
    end
  end
  object QRY_produto: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select'
      ' p1.pr1_codigo,'
      ' p1.pr1_nomecompleto,'
      ' p1.pr1_codigobarra,'
      ' p2.pr2_vendavista,'
      ' p2.pr2_vendaprazo'
      'from produto1 p1'
      ' join produto2 p2 on (p2.pr2_codigopr1 = p1.pr1_codigo)'
      'where p1.pr1_codigobarra = :codBarra')
    Left = 176
    Top = 168
    ParamData = <
      item
        Name = 'CODBARRA'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
    object QRY_produtoPR1_NOMECOMPLETO: TStringField
      FieldName = 'PR1_NOMECOMPLETO'
      Origin = 'PR1_NOMECOMPLETO'
      Size = 100
    end
    object QRY_produtoPR1_CODIGOBARRA: TStringField
      FieldName = 'PR1_CODIGOBARRA'
      Origin = 'PR1_CODIGOBARRA'
      Size = 50
    end
    object QRY_produtoPR2_VENDAVISTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PR2_VENDAVISTA'
      Origin = 'PR2_VENDAVISTA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produtoPR2_VENDAPRAZO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PR2_VENDAPRAZO'
      Origin = 'PR2_VENDAPRAZO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produtoPR1_CODIGO: TIntegerField
      FieldName = 'PR1_CODIGO'
      Origin = 'PR1_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QRY_venda: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from movestoque where mov_codigo = :codigo')
    Left = 576
    Top = 56
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_vendaMOV_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'MOV_CODIGO'
      Origin = 'MOV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_vendaMOV_TIPOESTOQUE: TIntegerField
      FieldName = 'MOV_TIPOESTOQUE'
      Origin = 'MOV_TIPOESTOQUE'
    end
    object QRY_vendaMOV_DATA: TDateField
      FieldName = 'MOV_DATA'
      Origin = 'MOV_DATA'
    end
    object QRY_vendaMOV_HORA: TTimeField
      FieldName = 'MOV_HORA'
      Origin = 'MOV_HORA'
    end
    object QRY_vendaMOV_VLRDESCONTO: TFMTBCDField
      FieldName = 'MOV_VLRDESCONTO'
      Origin = 'MOV_VLRDESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_vendaMOV_VLRTOTAL: TFMTBCDField
      FieldName = 'MOV_VLRTOTAL'
      Origin = 'MOV_VLRTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_vendaMOV_VENDEDOR: TIntegerField
      FieldName = 'MOV_VENDEDOR'
      Origin = 'MOV_VENDEDOR'
    end
    object QRY_vendaMOV_CLIENTE: TIntegerField
      FieldName = 'MOV_CLIENTE'
      Origin = 'MOV_CLIENTE'
    end
  end
  object QRY_vendaItem: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from movestoque_item where mvi_codigo = :codigo')
    Left = 576
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_vendaItemMVI_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'MVI_CODIGO'
      Origin = 'MVI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_vendaItemMVI_CODIGOMOVESTOQUE: TIntegerField
      FieldName = 'MVI_CODIGOMOVESTOQUE'
      Origin = 'MVI_CODIGOMOVESTOQUE'
    end
    object QRY_vendaItemMVI_CODITEM: TIntegerField
      FieldName = 'MVI_CODITEM'
      Origin = 'MVI_CODITEM'
    end
    object QRY_vendaItemMVI_QUANTIDADE: TFMTBCDField
      FieldName = 'MVI_QUANTIDADE'
      Origin = 'MVI_QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object QRY_vendaItemMVI_VLRUNITARIO: TFMTBCDField
      FieldName = 'MVI_VLRUNITARIO'
      Origin = 'MVI_VLRUNITARIO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_vendaItemMVI_VLRTOTAL: TFMTBCDField
      FieldName = 'MVI_VLRTOTAL'
      Origin = 'MVI_VLRTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_vendaItemMVI_VLRDESCONTO: TFMTBCDField
      FieldName = 'MVI_VLRDESCONTO'
      Origin = 'MVI_VLRDESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object QRY_formasPGTO: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from formaspagamentos order by for_codigo')
    Left = 576
    Top = 192
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
  object QRY_cadCaixa: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from caixa where cai_codigo = :codigo')
    Left = 376
    Top = 256
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_cadCaixaCAI_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CAI_CODIGO'
      Origin = 'CAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  end
end
