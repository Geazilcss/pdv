inherited ViewFormaPGTO: TViewFormaPGTO
  BorderStyle = bsNone
  Caption = 'ViewFormaPGTO'
  ClientHeight = 550
  ClientWidth = 900
  Position = poOwnerFormCenter
  OnShow = FormShow
  ExplicitWidth = 900
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 15
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 900
    Height = 36
    Cursor = crHandPoint
    Align = alTop
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = lblTituloMouseDown
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 41
      Top = 1
      Width = 111
      Height = 34
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Faturamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnMouseDown = lblTituloMouseDown
      ExplicitHeight = 28
    end
    object pnlImgLogo: TPanel
      Left = 0
      Top = 0
      Width = 36
      Height = 36
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object imgLogoCinza: TImage
        Left = 0
        Top = 0
        Width = 36
        Height = 36
        Cursor = crHandPoint
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF80000000467414D410000B18F0BFC61050000000662
          4B4744000000000000F943BB7F0000000970485973000000600000006000F06B
          42CF0000016B4944415478DAED94BF4BC34014C773193A69972C528B7F85B89A
          1F5328EA94B16B775D54AA0E0AA52EEEBAEA9645684087FC38C8D83FA316A70C
          52973424F17B92218414D22BB7F5C1F1EEBD77BCCFBB773F8824584893459AA6
          9D1142CE313D64769EE753D84FBEEF4F3606E8BA3E86BAAC8B01340A8260C80D
          282A7FC774097D2BCBF21BF3A769DA87BAC768C17FE2799EC30540F514EA18E3
          0AED78ACC4D8AED8EE02C4745EC0026A2749924E1886DFE598AAAA7BD811F32D
          00683702A0253D6CF919D37D894FBE3006007ED40250F10CAACB99FC5F70F033
          1CFCC12A405EB6B32CDBA594FEC23F87D9A9E49AA3D2AE699AED388E7FCA01F8
          4923007AACB9AE4B575CD531125D23C60ED8E3024026587C6A59562B8A22762D
          FB85FF5551943BDBB697866138684B8F1720E1D087B8E7A3BA7E63FD0DD443D5
          BF16A010877D0D7860D3A27547B02FAA956F02584BB6802D402C40F8676742BD
          F04258723CC2015EFE672D40840807FC019AF3BB190A8DE74500000025744558
          74646174653A63726561746500323032322D30392D30395432333A31333A3537
          2B30303A3030DAAEC03B0000002574455874646174653A6D6F64696679003230
          32322D30392D30395432333A31333A35372B30303A3030ABF378870000000049
          454E44AE426082}
        ExplicitLeft = 40
        ExplicitTop = -32
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object imgLogoAzul: TImage
        Left = 0
        Top = 0
        Width = 36
        Height = 36
        Cursor = crHandPoint
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF80000000467414D410000B18F0BFC61050000000662
          4B4744000000000000F943BB7F0000000970485973000000600000006000F06B
          42CF000001744944415478DAED94314FC25010C7EFAA65526683C4C9413A1B57
          239B21EA277065D7C44041256A2C7561D7553F800924BA18D9D9DBEE95381B5C
          ACB1E71FED40490778A41B9734EFEEDEDDFDEE5E5F1E53CAC29304191539108D
          8EA06E46AE1EEC9677CDED9901859AD8245449DA1322CB6B725D191075FE0835
          C07716FED0C3D0AF697488CC4BA81940F600E928010AA674B16CA3D5AA6BF34D
          6CAF2A1564DB28F0EA34B9A80A1860594254CEB5F83D36DD89ACC8220D7D03B7
          C9D9890038EF12BABD85BA4A0A82E37AD398CA8EC54F89800D537C38F22AC547
          C4C7446BC9139822B1F132B4EC5CF027FC7D98B9B1427D14CAAF3724AB07F431
          BA013F4F0480B5E3D9DC4DBAAA48B4F1734DA32A45617A5102B050DBB179DF68
          4846BE712D05D7F33FEB9E753AC774016E53077649091005D4D1A99574D8883F
          C57235EE9F0A104927646A2DE8D4FBB3BE680B81C7E39DCF02984AE680392045
          40EA8F9D5193DD50E86E06888FE7A58CE7E539119086A40EF805EF25AF19EA81
          3F500000002574455874646174653A63726561746500323032322D30392D3039
          5432333A31333A34352B30303A3030819BD18C0000002574455874646174653A
          6D6F6469667900323032322D30392D30395432333A31333A34352B30303A3030
          F0C669300000000049454E44AE426082}
        OnMouseDown = lblTituloMouseDown
        ExplicitLeft = -3
        ExplicitTop = -3
      end
    end
    object pnlFechar: TPanel
      Left = 832
      Top = 0
      Width = 68
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      Color = 46079
      ParentBackground = False
      TabOrder = 1
      object btnFechar: TSpeedButton
        Left = 0
        Top = 0
        Width = 68
        Height = 36
        Cursor = crHandPoint
        Align = alClient
        Caption = '[ SAIR ]'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnFecharClick
        ExplicitTop = -3
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 509
    Width = 900
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 1
    object pnlBtnSalvar: TPanel
      Left = 760
      Top = 0
      Width = 140
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      Color = 45056
      ParentBackground = False
      TabOrder = 0
      object btnSalvar: TSpeedButton
        Left = 0
        Top = 0
        Width = 140
        Height = 41
        Cursor = crHandPoint
        Align = alClient
        Caption = '[ SALVAR ]'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 3
      end
    end
  end
  object pnlTotais: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 389
    Width = 860
    Height = 100
    Margins.Left = 20
    Margins.Top = 0
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alBottom
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 2
    object lblVlrVenda: TLabel
      AlignWithMargins = True
      Left = 105
      Top = 12
      Width = 139
      Height = 30
      Margins.Top = 15
      Margins.Bottom = 0
      Caption = 'Valor da Venda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
    end
    object lblVlrFaturado: TLabel
      AlignWithMargins = True
      Left = 360
      Top = 12
      Width = 133
      Height = 30
      Margins.Top = 15
      Margins.Bottom = 0
      Caption = 'Valor Faturado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
    end
    object lblVlrRestante: TLabel
      AlignWithMargins = True
      Left = 641
      Top = 12
      Width = 131
      Height = 30
      Margins.Top = 15
      Margins.Bottom = 0
      Caption = 'Valor Restante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
    end
    object edtVlrVenda: TEdit
      Left = 74
      Top = 45
      Width = 170
      Height = 45
      Alignment = taRightJustify
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '0'
    end
    object edtVlrFaturado: TEdit
      Left = 329
      Top = 45
      Width = 170
      Height = 45
      Alignment = taRightJustify
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object edtVlrRestante: TEdit
      Left = 602
      Top = 45
      Width = 170
      Height = 45
      Alignment = taRightJustify
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = '0'
    end
  end
  object pnlFormasPGTO: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 56
    Width = 245
    Height = 313
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object DBG_formasPGTO: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 235
      Height = 303
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsFormasPGTO
      DrawingStyle = gdsGradient
      FixedColor = 5395026
      GradientEndColor = 5395026
      GradientStartColor = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = 5460819
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -16
      TitleFont.Name = 'Segoe UI Semilight'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FOR_DESCRICAO'
          Title.Caption = '[ FORMAS DE PGTO ]'
          Width = 232
          Visible = True
        end>
    end
  end
  object pnlFormasEscolhidas: TPanel
    AlignWithMargins = True
    Left = 285
    Top = 56
    Width = 595
    Height = 313
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    object DBG_FormasPGTOEscolhidas: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 585
      Height = 303
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BorderStyle = bsNone
      DrawingStyle = gdsGradient
      FixedColor = 5395026
      GradientEndColor = 5395026
      GradientStartColor = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = 5460819
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -16
      TitleFont.Name = 'Segoe UI Semilight'
      TitleFont.Style = []
    end
  end
  object pnlValor: TPanel
    Left = 333
    Top = 149
    Width = 297
    Height = 145
    BevelOuter = bvNone
    Color = 9737364
    ParentBackground = False
    TabOrder = 5
    Visible = False
    object pnlTitValor: TPanel
      Left = 0
      Top = 0
      Width = 297
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      Color = 7566195
      ParentBackground = False
      TabOrder = 0
      object lblTituloValor: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 0
        Width = 291
        Height = 33
        Cursor = crHandPoint
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alClient
        Alignment = taCenter
        Caption = '[ VALOR PARA FATURAR ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 228
        ExplicitHeight = 30
      end
    end
    object edtVlrFaturar: TEdit
      AlignWithMargins = True
      Left = 5
      Top = 43
      Width = 287
      Height = 45
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Alignment = taRightJustify
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 9737364
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '0.00'
    end
    object pnlBtnOk: TPanel
      AlignWithMargins = True
      Left = 216
      Top = 104
      Width = 73
      Height = 33
      Margins.Left = 50
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      BevelOuter = bvNone
      Color = 45056
      ParentBackground = False
      TabOrder = 2
      object btnOk: TSpeedButton
        Left = 0
        Top = 0
        Width = 73
        Height = 33
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Ok'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        ExplicitTop = -8
      end
    end
  end
  object dsFormasPGTO: TDataSource
    Left = 96
    Top = 136
  end
end
