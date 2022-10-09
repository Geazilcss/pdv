inherited ServiceCadastro: TServiceCadastro
  Height = 445
  Width = 923
  object QRY_filial: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from filial where fil_codigo = :codigo')
    Left = 536
    Top = 24
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
    Left = 808
    Top = 16
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
      'select'
      ' mi.*,'
      ' p1.pr1_nomecompleto'
      'from movestoque_item mi'
      ' inner join produto1 p1'
      'on ( mi.mvi_coditem = p1.pr1_codigo )'
      'where mi.mvi_codigomovestoque = :codigoVenda')
    Left = 808
    Top = 72
    ParamData = <
      item
        Name = 'CODIGOVENDA'
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
    object QRY_vendaItemPR1_NOMECOMPLETO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PR1_NOMECOMPLETO'
      Origin = 'PR1_NOMECOMPLETO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object QRY_formasPGTO: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from formaspagamentos order by for_codigo')
    Left = 816
    Top = 137
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
    Left = 296
    Top = 32
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
  object QRY_receber1: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from receber1 where rc1_codigo = :codigo')
    Left = 208
    Top = 248
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
      Precision = 18
      Size = 2
    end
  end
  object QRY_receber2: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from receber2 where rc2_codigo = :codigo')
    Left = 208
    Top = 312
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
      FieldName = 'RC2_VALORPARCELA'
      Origin = 'RC2_VALORPARCELA'
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
      FieldName = 'RC2_VALORHAVER'
      Origin = 'RC2_VALORHAVER'
      Precision = 18
      Size = 2
    end
    object QRY_receber2RC2_VALORSALDO: TFMTBCDField
      FieldName = 'RC2_VALORSALDO'
      Origin = 'RC2_VALORSALDO'
      Precision = 18
      Size = 2
    end
  end
  object frxReport: TfrxReport
    Version = '2022.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44840.813128726900000000
    ReportOptions.LastChange = 44841.791587002310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 600
    Top = 112
    Datasets = <
      item
        DataSet = frxDBDataset_venda
        DataSetName = 'frxDBDataset_venda'
      end
      item
        DataSet = frxDBDataset_vendaItem
        DataSetName = 'frxDBDataset_vendaItem'
      end
      item
        DataSet = frxDBDataset_filial
        DataSetName = 'frxDBDataset_filial'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 100.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 302.362400000000000000
        object frxDBDataset_filialFIL_CODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 287.244280000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset_filial
          DataSetName = 'frxDBDataset_filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset_filial."FIL_CODIGO"] - [frxDBDataset_filial."FIL_R' +
              'AZAO"]')
          ParentFont = False
        end
        object frxDBDataset_filialFIL_CNPJ: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 18.897650000000000000
          Width = 287.244280000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset_filial
          DataSetName = 'frxDBDataset_filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ: [frxDBDataset_filial."FIL_CNPJ"] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object frxDBDataset_vendaMOV_DATA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 49.133890000000000000
          Width = 287.244280000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Dta. Venda: [frxDBDataset_venda."MOV_DATA"] - Hra. Venda: [frxDB' +
              'Dataset_venda."MOV_HORA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 33.015770000000000000
          Width = 287.244280000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone: [frxDBDataset_filial."FIL_TELEFONE"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 207.874150000000000000
        Width = 302.362400000000000000
        DataSet = frxDBDataset_vendaItem
        DataSetName = 'frxDBDataset_vendaItem'
        RowCount = 0
        object frxDBDataset_vendaItemMVI_CODITEM: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."MVI_CODITEM"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 41.574830000000000000
          Width = 143.622140000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."PR1_NOMECOMPLETO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 185.196970000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."MVI_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 215.433210000000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."MVI_VLRUNITARIO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 253.228510000000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."MVI_VLRTOTAL"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 151.181200000000000000
        Width = 302.362400000000000000
        object Memo1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 7.559060000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 7.559060000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtd')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 7.559060000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '$ Unit.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 7.559060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '$ Total')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 245.669450000000000000
        Width = 302.362400000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 30.236240000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              'Total da Venda: [SUM(<frxDBDataset_vendaItem."MVI_VLRTOTAL">,Mas' +
              'terData1)]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 56.692950000000000000
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000BA0000
            00BA08030000002ED0A7C300000063504C5445FFFFFF2E34362B31332F3537EC
            EDEDCDCECE1F272A1B23266F71738A8D8E141D21D8D9D9B7B8B922292BAAACAD
            7E8081000D12E7E7E73B404307151861656600000054585AC7C8C8A4A6A6F5F5
            F5696C6D84868716202293959675787900010A474C4EB437D69F0000101A4944
            415478DAED9D0977DABA1280BD02C66631842434B7BCF7FF7FD5BDBD4D48C9C6
            6ECC623F6B46C6922D6F2C09ED43E7342EA0E543D8A3D1CC4892A5DF36C95F0D
            7045FFBDD215FD2BD1B592E57A43B6D896AD847E4453FF857DB51554C5E72890
            B61CBAD6DFBD972AAE2EE0F28D94EA7C6CA036AD3D27AFBC6736A3559B332FC6
            02767357AAE58E3ADC72E8B7EEAC4471B9B2DAC07FBA733F285CDF7D9017B636
            09FE36CC1F6CD6FBDDCADDBF686D3F9295E9B5B55FA2ED4675C4A36BFAD22B81
            2E2B885EDDF89252AF527425F80D94BA32E1D037E3A8E28E2742F7FC12E84A7D
            B38DA17B9B32BDCEA24B168B2E59E7459774E58F43CF97953E87FED71329DCA4
            E8FE94BC3262E81FFB62D9E805DB4E4197CD755EE9EA9C45EF1A8164B364141C
            B646D0ADF8634ADE942AF33C74CBCD63AF2CFC5474D9CC1733DFFDA117A16332
            7BE3E02BF79C11A2B43D27784FE564E4C3741EA1DBFA3AC86F282F11BAD297FF
            CD6DBB41D853D07537B7B821BB4974D39913648A7EF714B4D0D139F496C7A2AB
            EE3C6A0DD1ABBE93DB363C59674057EA4688FE18C8B0F615FD33D025AB0C7A30
            005E04BAAD935E57C37B1D94928E2B429FA0285297AA24B98DB7D3A3F7A78272
            EE56806E6225F557323219A892C9B54AF077AD71D26AA713F4870DC8484B0309
            BD7E15A06B5541DBCD615174B397649FA3648EA12B6DB850696D933F937B1C3D
            179C1E3D813765CCAE384DB80E05E8D6DA4A92BF2C0AA357378B78F1EF6F22F4
            3A2ABF742087CAF41A8EA6CD15ABE0B2394C63C1561F43EF26E4BBA9BB25D0C7
            71AD42696C45E850199F421DA6E9CF2571B232D1B5595C8595DB57F418BA2CC5
            5A62D015C11440F18201E012D0DB16D143FC2D93DD6A3E223AC814A9C24D6174
            D29ED578B900F401F4706BCEE40FC0E0DA4594AAC3CE4D3744F4B5FC39AB407E
            113A261C4DF72D81B0576BCFB4F30B4D352E039D525245A0E02CE982D0F73ACC
            15FD8A2E409F54A25730838CD0ABEFFB372F10DDB6A68CCEF406C6ACCA0D6DC0
            211FBDDFFDF02F129D4FA64DC62445BB272F962E2AA1DCB4FA62D16196448A90
            3F7519D1B959D2C5A323C915BD047AC21275D80DE345E8CBE06FBB107A3C835F
            067DD39F241A704A3EA66A1D8A512358AD410AE8DB7C742351736BA81746D76A
            A2CEFC10A07F87BF9B57A8AC3FBE219729DC1BBA81CE0A1F5BD571B6DC180A2A
            E6D06D519FD0B9E2498D197595F4CA8A5A7A9BD1E813B7C364A42FB2C308ECEB
            98AEE857F4CB462FE21A78CB4397C1991A730DE4A3778F720D4856FB35A7F48D
            4BCC8B996EB0C64B87BC7220476784199B0D700EFF42DFF08D0AAF1E237449BE
            A9E6B63D06A99BE2067BC8F559AF88E8CB440F8D190AF14B55E8EC7A3025AFCC
            6D9A43865859F39AC6AF9A86AEE4FE6868F62CE07C2426A4144580D8D783C18A
            B5AF176FFB13FCA668B813AA5F02AF46F1F447A1FB65D025B1CBB738FA94B4FE
            ED67885EA6695DDE26C21BCA946FCD10BD11DCCF92DFD991476C68BB4E51F477
            9928C4288AF5C6A44CD3F1F086FE34CF4D1D4B3E16D7E16FB545B4B0890B06D2
            02E8616BF8F5B592915015EA9E39490095D98310952A3A8AF2D14F934E83CE9A
            90AEE857F47CF457A8C7CB424F9D567F2DBAD385EB6B3AFA372A4D8607549F8D
            AEDD92F1ADE7BC51945A3027369A3F04051ED68C3BB8C985286A9574B94ED3ED
            DA49F89268BAF3484E95D77D07D320BFBAA27E700C1C4A44DCC1684AC73774F9
            7E9B89860AA31EFDE6FE0D879E359A86E8245E29E6F20DD1672BD2749B436F35
            9E18972F8CDDC9D1D4DB79BCF54BD16A4274324BA249E994470F9AB1C4E83AD1
            69AD18FA6AEBF1D62F45CD37DC9D07DD59A6A2CF1C11FABA80E1EECB7B5D8C1E
            EFF524FAED98895031575A25D015B622F4870513825BE31FD356815E87989F8D
            40468AD1B5A0D7D7DB5A16BA8E912DD4EEA712F5489971F3161A0F73EF318658
            EB6FB8F457A04EADF57C09437A5DBE91D7096DAFB273D70CBA8D19BC86079FE1
            88A788A6D592D6207F677F81EA5B7B03D75085D5A3EBCE2F266398B0F76C8C6F
            A983D3251F5D52BA829F9396A6E8DFF1D695B14FBA2B78F52A8A730C539BDC0D
            2DCF8791435722E7D6A29BF4EAEE137583A1AB2BFF86091DDA7CA2A5297A6B05
            A14C3877EBCB58E75CCA40AF3B2456B941D199D0F3BD6B408C9EABC370BD9E91
            4274F43D592B8A3E8B8224B2D083D1EE7CE819BF5D267A542C1D9DC4AB1C80BE
            F4C2E09782BDAE90028A170F9949EFF530671AFA7F865557D2EA7A59F40A8913
            A4B3A4D08494D1EB56F010562517FED162D9E881FE10806D84E85470E05C53F7
            92E8ED8D9A463E93558CA0030960D94FA4AED9CD086C5AB7AF8C489A75009D93
            309EF2C68ADBED064A9BA0DF5BFE8ABC5AD30842A184D1DAB2478211B9218645
            2713F7347445C621068724C942B9B4C6C25685CDFA015F8E1F92783B0C5FFA81
            3C7BBB9D874352F1486A1E3D3D898CD499F905B15F59A98CF3F18A7E45CFD51C
            89F2136A8E59E8960B4FFB827DB284E8FC604FF343E996C6070BD6DC4408B24B
            C30F215665AF39766741C64A6C82D7F72B642069E16CB48FFE85EE28D91BF2BD
            0CDFC7FEC184078AD02D4367BF38E6B76CD0019B5CB0A02958FF67E9909FB666
            2D313F8426B6D67286E1CE746C23B84C049DFEF08B06383E4796E1226E302E7E
            BD40323466481227317A3232635F650374DFBE7E187A613B0C379A5ED17F4B74
            98EE55F7E8D114355AF9388E721F8DBE24CE8393A02B2AE8308A82F3BC8113E9
            4C96F38EEE50DB63F31F853E40D1B2FA958BDEF7583777EB293948E8860157EA
            B7A9731F8ADE9C71060BDEAB314B3A1AEB6F5C07DF2198CB7D55D44F0D85138E
            9AA6B03AED22D9E9FB00AA6A70A7B81B2D19A2B9B346E95D14F325254D3CAAF9
            28E5251892765E49E72313B6E648D96BF08AA0BB8921C3382EBCA1187ADE42B6
            83D08F8DCCF8E3D1D36E182B131D0235CE838E8F69AA96BB47079B63E231CDBF
            D7616ADB9972E8348699088542F13042F45038A6AE25DAA3EB5D90842807F57F
            197479F00EEFFA9C2C36714A8BE2934A4F5D45BDB00E3272B3F621D0600D9FBE
            897E7D0BBFE448F2734C4899E834E19044235AA809498635788A115B5B0D19C7
            48F4DF0579E560508D8626519C6A2875984F5B2301417F6342E3A0671C8B4E15
            810E874E63A7138BF183113DD4956FC7A03F60508D201EC68B19A9696BF26CB9
            2F7602F44DE41A101AEE22742F52F3C1AB419330A8240DBD88E1EECCE8E3E856
            FE2C74A97530FA3B09C2FB2C7459EF258ABBBC8D76C0A1F7664437C3E0BA38FA
            8ECC99D527F68691B5DBE0FFEFBD7F288BDAD9677796C2C7740B224618B646A7
            D5125AFA0C596095A01130CD3664846972884EE35BAA1B72910720BB5B2ECA48
            1BBFF1CD90F63A71C80C5EB1BF45F130D607DB0C7D6F82F96B8B5463061D9242
            FBBA30513718864B77046E306AC5A8094334A9F37193ABB6B718EB6C8E1B8C55
            0432D1739D8FF42371602CDCEB62E763AC87A6D1FD59C4FAF509E8E92EDF8B47
            4F77F95E3EFAE96F18700D84CDFA7A06BA055A883A17A06BE9D3EA10BDE40DC3
            BB067AE4D955FCB1D02183692632AFD19D0D96E022911C62518CA1E3160861AA
            89BEBEA8D74D2339C9F650B1A70E99B02E9BA32B1E85F4DD1F4955B75E45710D
            5387387A7E12F53A6E9E5575E93FC92517B4F496B7C388D1C7B8EB0563FD3A00
            5DD0EB812220A7F8814F8ACE19EE4ED4EBE9AE81CBEAF5DD57A08FC834A6A251
            C3DD81E844555AB7F2D1519B587B05D033244C1F223A667D5081EAAFE815763C
            165D4BF5A9C604CD4021D31DED8559143CAB394974798093D98F0D5B3FAFF9C4
            4279302DDA6C7B3A58419525DD750C47246FCC688EB6A7A7A2AF385D192374D6
            7536BF92FCE994B68BAD61D0747F0C740A6F71E002A868DAB5B9D1F4CE23DD5E
            73189B634C7334CD4A5A08FA4E13ECF0831B0AED53D20AA1FCF5C4DE297D19E8
            D43197890B5BA3E5EABC227057FBE9C5AC5F614ED12C894FB1F08610DD4D35F8
            5074CE3A4DE3610C7E7540011DE622D04130FF79E8CC3213ED2676AF1347F07E
            2F2441606C0C1DEBF4F3D18592D917A1C35A5C9B7348F3E1C8FB9ED27974D27A
            93D289C2916D9DDB0406A408DDEEC612990229BA2C5AA5011B5DC5D13750CBFD
            3F22F44313B51CAC98AD77F4DE23ED00806EA11C545814BA2E49132D6DB97367
            5E1C9D6F8D46DF1C8B5E5D83C2CA6A4FB16D9CF0F30A372CF24BAAF8048BF153
            D0A1B5F8E29E83D10BEE40155ABF8E44DF64587AFFAFD1F79BDDFE56E8324487
            845B0C53747853361667433F74211B8B2EB777ADE0326A3F33E8F28D0B6FAAAC
            9ACBA3531159591C867EE8F24116DD32467DF8CF9041B7CCE77EF49E101D970F
            6A0AB3DD4739F4C3166DC6D0D92CC2E852213A2CDAB49707A31FB1541653DC6F
            5A063DBEC9CA27A31FD3EB2741CF5D9B1D5F161E8928B57D307A504931743939
            9A1EBA18BFC704A354DA7F1744D76E672CBA6291DD942B8FB9E8D05A6F3312A1
            97DE0281FBAA2D948A1AC449BF6B30BD0CD14D7647D2056CD3BA5F4A043F6487
            C6F765A1436B9D99198B87396CE30951D2DB20A155F49050F481CC9C08B08327
            A4FC90C4A793ECD31B434FDFC6896FFA8A7E45FFDDD19BA0CAD12552213A3813
            1712AB689E03BDF8E6595CEAA37C525A70D93DB3C2D1428F84CA0460CB665DE0
            97D979EBC4B45ABAC38CFC0F77CA2DCB6C084DD20D565F8F0D4937537635584B
            D043CED613580464A899374E9E72A3380C8CAD672FA962CB89B40EF86602C35D
            F04996F5EBC8EDF98A2E95CD4FE50D779F80EE143AEFE5CBD1494B75E10D43EF
            9470391E578BF715E8FC02E5FB1D89A05BF29E5F7C4C651B94B109EEDC68A9EC
            E3FAE2261F53A906CAE139D0E9B6AB738FDD1FC6A62BD2687C8B0CB40EA998C4
            C390E09DF76F3F3D1225C82DEEAB902347F6E8B4182E3A39077AB8D92DB73F0C
            9F687C0BE6083D78BDF7005DBFDFB0736E7E481A2C98E1ED3CE8E9B15F213AA3
            0894406FAD1823CBEF86BE8D24D2EF86FE99BDAE1BA7446F305AE8391F53483B
            BD38FA9B19E4BF11A1A3F3B1BFD4CEF698E286FDEB263BBBAE7660A9DC3BA7E7
            09D1EFA01835369A5DA84B075F8D55C5FA7700D4F11D14BB50536C0DDE51C724
            582ABFE0F8DB2E78B3295ADC1343E712BAACE871564A9DF476CF99728BF1E1A7
            35EAA3BC4D560AA1A351872EA90AD1EF1E9594255599E8E07B63C2B8A22555FB
            C058D2ED6213D28147825809F4B4856C99E8B364486C912D10FE20F452C7DFE8
            8D02E84C508E59001DB9CC109D590621D80BE9F043872677932693D323C7B329
            D526564D05DFC333A31E86870ED1344CA2D3D38926D84C5F7F8C4A4F1E9E4E78
            D4935565637FB6B0C9823CC07190865ADAACC3871EF584696D6C8771F4583C0C
            5FBAF2C1FE30479F0DC6C5C3202C8640E5C7C3541676129D8F8711A7131E6B26
            4CB991198A4A15011EFDB34C48470595E857F44B41EF2865D10F3DAEF23074DC
            0FB9F78B3EA61E23ECCDB2E8071E124A4FEF2C8B9EF91B3F7C90C03E4BE3BE41
            17954AA12FE9B0A359252995FC70F429F90D4C3E30163461F1685A38659DC876
            2A74C13E026773F97E19FAA1873FCB395B90A5A02F3DC53F005DF692873F1F73
            E47656D2521481A075D97A4B2FD78203C8B546EC31F505476E1F73D079666A09
            A49CA6DBE0BC7D4A2F760FA6D7CE84D38EF158F5D841E7471E2F9F9F31C68E97
            8CCD62E899F3DB8C6227D9ECF66BD215FD8A7E45BFF8F43F91F7E29CACE24208
            0000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxDBDataset_vendaMOV_CODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 7.559060000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'm. Venda: [frxDBDataset_venda."MOV_CODIGO"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset_venda: TfrxDBDataset
    UserName = 'frxDBDataset_venda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MOV_CODIGO=MOV_CODIGO'
      'MOV_TIPOESTOQUE=MOV_TIPOESTOQUE'
      'MOV_DATA=MOV_DATA'
      'MOV_HORA=MOV_HORA'
      'MOV_VLRDESCONTO=MOV_VLRDESCONTO'
      'MOV_VLRTOTAL=MOV_VLRTOTAL'
      'MOV_VENDEDOR=MOV_VENDEDOR'
      'MOV_CLIENTE=MOV_CLIENTE')
    DataSet = QRY_venda
    BCDToCurrency = False
    DataSetOptions = []
    Left = 600
    Top = 184
  end
  object frxDBDataset_vendaItem: TfrxDBDataset
    UserName = 'frxDBDataset_vendaItem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MVI_CODIGO=MVI_CODIGO'
      'MVI_CODIGOMOVESTOQUE=MVI_CODIGOMOVESTOQUE'
      'MVI_CODITEM=MVI_CODITEM'
      'MVI_QUANTIDADE=MVI_QUANTIDADE'
      'MVI_VLRUNITARIO=MVI_VLRUNITARIO'
      'MVI_VLRTOTAL=MVI_VLRTOTAL'
      'MVI_VLRDESCONTO=MVI_VLRDESCONTO'
      'PR1_NOMECOMPLETO=PR1_NOMECOMPLETO')
    DataSet = QRY_vendaItem
    BCDToCurrency = False
    DataSetOptions = []
    Left = 600
    Top = 248
  end
  object frxDBDataset_filial: TfrxDBDataset
    UserName = 'frxDBDataset_filial'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FIL_CODIGO=FIL_CODIGO'
      'FIL_RAZAO=FIL_RAZAO'
      'FIL_FANTASIA=FIL_FANTASIA'
      'FIL_CNPJ=FIL_CNPJ'
      'FIL_TELEFONE=FIL_TELEFONE')
    DataSet = QRY_filial
    BCDToCurrency = False
    DataSetOptions = []
    Left = 600
    Top = 304
  end
end
