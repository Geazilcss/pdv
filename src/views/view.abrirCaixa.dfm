inherited ViewAbrirCaixa: TViewAbrirCaixa
  Caption = 'ViewAbrirCaixa'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 95
      Caption = 'Abrir Caixa'
      ExplicitWidth = 95
    end
  end
  inherited pnlLinhaFundo: TPanel
    inherited CardPanel_conteudo: TCardPanel
      inherited card_pesquisa: TCard
        inherited pnlFiltroPesquisa: TPanel
          inherited pnlFiltro: TPanel
            ExplicitTop = 0
          end
        end
        inherited DBG_listas: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ABR_CODIGO'
              Title.Caption = 'N'#250'm. Caixa'
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_DATAABERTURA'
              Title.Caption = 'Dta. Abertura'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_HRAABERTURA'
              Title.Caption = 'Hra. Abertura'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_VLRINICIAL'
              Title.Caption = 'Vlr. Inicial'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_STATUS'
              Title.Caption = 'Status'
              Width = 96
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        object lblVlrInicial: TLabel [0]
          Left = 39
          Top = 96
          Width = 103
          Height = 25
          Caption = 'Saldo Inicial'
          FocusControl = edtVlrInicial
          Font.Charset = ANSI_CHARSET
          Font.Color = 5395026
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblObservacao: TLabel [1]
          Left = 214
          Top = 96
          Width = 101
          Height = 25
          Caption = 'Observa'#231#227'o'
          FocusControl = edtObservacao
          Font.Charset = ANSI_CHARSET
          Font.Color = 5395026
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtVlrInicial: TDBEdit
          Left = 39
          Top = 127
          Width = 169
          Height = 33
          DataField = 'ABR_VLRINICIAL'
          DataSource = dsPadrao
          Font.Charset = ANSI_CHARSET
          Font.Color = 5395026
          Font.Height = -19
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtObservacao: TDBEdit
          Left = 214
          Top = 127
          Width = 443
          Height = 33
          CharCase = ecUpperCase
          DataField = 'ABR_OBSERVACAO'
          DataSource = dsPadrao
          Font.Charset = ANSI_CHARSET
          Font.Color = 5395026
          Font.Height = -19
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object cbxStatus: TDBComboBox
          Left = 663
          Top = 127
          Width = 210
          Height = 33
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'ABR_STATUS'
          DataSource = dsPadrao
          Font.Charset = ANSI_CHARSET
          Font.Color = 5395026
          Font.Height = -19
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          Items.Strings = (
            'ABERTO'
            'FECHADO')
          ParentFont = False
          TabOrder = 3
        end
      end
    end
  end
  inherited ImageList_24: TImageList
    Left = 482
    Top = 316
  end
  inherited dsPadrao: TDataSource
    Left = 648
    Top = 304
  end
end
