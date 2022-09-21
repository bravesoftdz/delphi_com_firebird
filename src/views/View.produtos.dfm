inherited ViewProdutos: TViewProdutos
  Caption = 'ViewProdutos'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 900
      Height = 29
      Caption = 'Produtos'
      ExplicitWidth = 77
    end
  end
  inherited pnlRodape: TPanel
    ExplicitLeft = 0
  end
  inherited pnlLinhaFundo: TPanel
    inherited CardPanel_listas: TCardPanel
      inherited card_pesquisa: TCard
        inherited DBG_dados: TDBGrid
          Height = 215
          Columns = <
            item
              Expanded = False
              FieldName = 'PR1_CODIGO'
              Title.Caption = 'C'#243'digo'
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NOMECOMPLETO'
              Title.Caption = 'Nome completo'
              Width = 337
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NOMEPOPULAR'
              Title.Caption = 'Nome popular'
              Width = 304
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_CODIGOBARRA'
              Title.Caption = 'C'#243'digo Barras'
              Width = 153
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_REFERENCIA'
              Title.Caption = 'Refer'#234'ncias'
              Width = 193
              Visible = True
            end>
        end
        object pnlDetalhe: TPanel [1]
          Left = 0
          Top = 325
          Width = 1022
          Height = 150
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object DBG_detalhe: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 1012
            Height = 140
            Cursor = crHandPoint
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsProduto2
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'PR2_FILIAL'
                Title.Caption = 'Filial'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_CUSTOINI'
                Title.Caption = 'Custo Ini'
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_VENDAVISTA'
                Title.Caption = 'Venda Vista'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_VENDAPRAZO'
                Title.Caption = 'Venda Prazo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_ESTOQUE'
                Title.Caption = 'Estoque'
                Visible = True
              end>
          end
        end
      end
      inherited card_cadastro: TCard
        ExplicitTop = -3
        object lbl1: TLabel [0]
          Left = 4
          Top = 88
          Width = 54
          Height = 21
          Caption = 'C'#243'digo'
          FocusControl = edtPR1_CODIGO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl2: TLabel [1]
          Left = 95
          Top = 88
          Width = 208
          Height = 21
          Caption = 'Nome completo do Produto'
          FocusControl = edtPR1_NOMECOMPLETO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl3: TLabel [2]
          Left = 501
          Top = 88
          Width = 194
          Height = 21
          Caption = 'Nome popular do Produto'
          FocusControl = edtPR1_NOMEPOPULAR
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl4: TLabel [3]
          Left = 4
          Top = 163
          Width = 126
          Height = 21
          Caption = 'C'#243'digo de Barras'
          FocusControl = edtPR1_CODIGOBARRA
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl5: TLabel [4]
          Left = 164
          Top = 163
          Width = 85
          Height = 21
          Caption = 'Refer'#234'ncias'
          FocusControl = edtPR1_REFERENCIA
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl6: TLabel [5]
          Left = 501
          Top = 163
          Width = 37
          Height = 21
          Caption = 'NCM'
          FocusControl = edtPR1_NCM
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl7: TLabel [6]
          Left = 14
          Top = 276
          Width = 88
          Height = 21
          Caption = 'Custo Inicial'
          FocusControl = edtPR2_CUSTOINI
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl8: TLabel [7]
          Left = 14
          Top = 240
          Width = 243
          Height = 30
          Caption = '[ DETALHE DO PRODUTO ]'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8816262
          Font.Height = -21
          Font.Name = 'Segoe UI Semilight'
          Font.Style = []
          ParentFont = False
        end
        object lbl9: TLabel [8]
          Left = 151
          Top = 276
          Width = 84
          Height = 21
          Caption = 'Venda Vista'
          FocusControl = edtPR2_VENDAVISTA
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl10: TLabel [9]
          Left = 263
          Top = 276
          Width = 89
          Height = 21
          Caption = 'Venda Prazo'
          FocusControl = edtPR2_VENDAPRAZO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl11: TLabel [10]
          Left = 383
          Top = 276
          Width = 59
          Height = 21
          Caption = 'Estoque'
          FocusControl = edtPR2_ESTOQUE
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited pnlTituloCadastro: TPanel
          inherited lblTituloCadastro: TLabel
            Width = 269
            Height = 45
            Caption = '[ CADASTRO DE PRODUTOS ]'
            ExplicitWidth = 269
          end
        end
        object edtPR1_CODIGO: TDBEdit
          Left = 4
          Top = 115
          Width = 85
          Height = 23
          DataField = 'PR1_CODIGO'
          DataSource = dsDados
          Enabled = False
          TabOrder = 1
        end
        object edtPR1_NOMECOMPLETO: TDBEdit
          Left = 95
          Top = 115
          Width = 400
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NOMECOMPLETO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtPR1_NOMEPOPULAR: TDBEdit
          Left = 501
          Top = 115
          Width = 400
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NOMEPOPULAR'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtPR1_CODIGOBARRA: TDBEdit
          Left = 4
          Top = 190
          Width = 154
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_CODIGOBARRA'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtPR1_REFERENCIA: TDBEdit
          Left = 164
          Top = 190
          Width = 331
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_REFERENCIA'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtPR1_NCM: TDBEdit
          Left = 501
          Top = 190
          Width = 154
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NCM'
          DataSource = dsDados
          TabOrder = 6
        end
        object edtPR2_CUSTOINI: TDBEdit
          Left = 14
          Top = 303
          Width = 131
          Height = 23
          DataField = 'PR2_CUSTOINI'
          DataSource = dsProduto2
          TabOrder = 7
        end
        object edtPR2_VENDAVISTA: TDBEdit
          Left = 151
          Top = 303
          Width = 106
          Height = 23
          DataField = 'PR2_VENDAVISTA'
          DataSource = dsProduto2
          TabOrder = 8
        end
        object edtPR2_VENDAPRAZO: TDBEdit
          Left = 263
          Top = 303
          Width = 114
          Height = 23
          DataField = 'PR2_VENDAPRAZO'
          DataSource = dsProduto2
          TabOrder = 9
        end
        object edtPR2_ESTOQUE: TDBEdit
          Left = 383
          Top = 303
          Width = 112
          Height = 23
          DataField = 'PR2_ESTOQUE'
          DataSource = dsProduto2
          TabOrder = 10
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_produto1
    Left = 801
    Top = 227
  end
  object dsProduto2: TDataSource
    DataSet = ServiceCadastro.QRY_produto2
    Left = 800
    Top = 296
  end
end
