inherited ViewVendas: TViewVendas
  Caption = 'ViewVendas'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 900
      Height = 29
      Caption = 'Vendas'
      ExplicitWidth = 61
    end
    inherited pnlFechar: TPanel
      inherited btnSair: TSpeedButton
        ExplicitLeft = 3
        ExplicitTop = -3
        ExplicitWidth = 83
        ExplicitHeight = 35
      end
    end
  end
  inherited pnlRodape: TPanel
    inherited btnNovo: TSpeedButton
      Left = 402
      ExplicitLeft = 588
    end
    inherited btnEditar: TSpeedButton
      Left = 507
      ExplicitLeft = 693
    end
    inherited btnCancelar: TSpeedButton
      Left = 612
      ExplicitLeft = 798
    end
    inherited btnSalvar: TSpeedButton
      Left = 736
      ExplicitLeft = 922
    end
    inherited btnExcluir: TSpeedButton
      Left = -5000
      Align = alNone
      ExplicitLeft = -5000
    end
  end
  inherited pnlLinhaFundo: TPanel
    inherited CardPanel_listas: TCardPanel
      inherited card_pesquisa: TCard
        inherited DBG_dados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'MOV_CODIGO'
              Width = 102
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_TIPOESTOQUE'
              Width = 139
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_DATA'
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_HORA'
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_VLRDESCONTO'
              Width = 164
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_VLRTOTAL'
              Width = 158
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        inherited pnlTituloCadastro: TPanel
          Height = 177
          ExplicitHeight = 177
          inherited lblTituloCadastro: TLabel
            Left = 16
            Width = 66
            Align = alNone
            Caption = 'C'#243'digo'
            ExplicitLeft = 16
            ExplicitWidth = 66
          end
          object lblNomeVendedor: TLabel [1]
            AlignWithMargins = True
            Left = 128
            Top = 43
            Width = 232
            Height = 30
            Margins.Top = 15
            Margins.Bottom = 0
            Caption = '[ NOME DO VENDEDOR ]'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object lblProdutos: TLabel [2]
            AlignWithMargins = True
            Left = 16
            Top = 101
            Width = 186
            Height = 30
            Margins.Top = 15
            Margins.Bottom = 0
            Caption = 'Escolha um Produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object lblQTD: TLabel [3]
            AlignWithMargins = True
            Left = 415
            Top = 101
            Width = 40
            Height = 30
            Margins.Top = 15
            Margins.Bottom = 0
            Caption = 'QTD'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object lbl1: TLabel [4]
            AlignWithMargins = True
            Left = 481
            Top = 101
            Width = 72
            Height = 30
            Margins.Top = 15
            Margins.Bottom = 0
            Caption = 'Vlr. Unit'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object lbl2: TLabel [5]
            AlignWithMargins = True
            Left = 594
            Top = 101
            Width = 90
            Height = 30
            Margins.Top = 15
            Margins.Bottom = 0
            Caption = 'Sub. Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object btnSalvarProduto: TSpeedButton [6]
            Left = 707
            Top = 134
            Width = 86
            Height = 23
            Caption = 'Salvar'
            Flat = True
            OnClick = btnSalvarProdutoClick
          end
          object edtCodigoVendedor: TSearchBox [7]
            Left = 16
            Top = 50
            Width = 89
            Height = 23
            BevelInner = bvNone
            BevelOuter = bvNone
            NumbersOnly = True
            TabOrder = 1
            OnExit = edtCodigoVendedorExit
          end
          inherited pnlVoltar: TPanel
            Height = 177
            ExplicitHeight = 177
            inherited btnVoltarPessquisa: TSpeedButton
              Align = alTop
              ExplicitLeft = 3
              ExplicitWidth = 200
            end
          end
          object edtProduto: TSearchBox
            Left = 16
            Top = 134
            Width = 393
            Height = 23
            BevelInner = bvNone
            BevelOuter = bvNone
            TabOrder = 2
            OnInvokeSearch = edtProdutoInvokeSearch
          end
          object edtQtd: TEdit
            Left = 415
            Top = 134
            Width = 60
            Height = 23
            NumbersOnly = True
            TabOrder = 3
            OnExit = edtQtdExit
          end
          object edtVlrUnitario: TEdit
            Left = 481
            Top = 134
            Width = 107
            Height = 23
            NumbersOnly = True
            TabOrder = 4
            OnExit = edtQtdExit
          end
          object edtVlrSubTotal: TEdit
            Left = 594
            Top = 134
            Width = 107
            Height = 23
            NumbersOnly = True
            ReadOnly = True
            TabOrder = 5
          end
        end
        object DBG_itensVendas: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 182
          Width = 1012
          Height = 180
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsItens
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = DBG_dadosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'MVI_CODITEM'
              Title.Caption = 'C'#243'd. '#205'tem'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_QUANTIDADE'
              Title.Caption = 'Quantidade'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_VLRUNITARIO'
              Title.Caption = 'Valor Unit'#225'rio'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_VLRDESCONTO'
              Title.Caption = 'Valor Desconto'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_VLRTOTAL'
              Title.Caption = 'Sub. Total'
              Visible = True
            end>
        end
        object pnlTotais: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 367
          Width = 1022
          Height = 107
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          Align = alBottom
          BevelOuter = bvNone
          Color = 7500402
          ParentBackground = False
          TabOrder = 2
          object lbl3: TLabel
            AlignWithMargins = True
            Left = 912
            Top = 12
            Width = 90
            Height = 30
            Margins.Top = 15
            Margins.Bottom = 0
            Caption = 'Sub. Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object edtTotalVenda: TEdit
            Left = 832
            Top = 45
            Width = 170
            Height = 45
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 7500402
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -27
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = 'R$ 150,00'
          end
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_movestoque
    Left = 809
    Top = 243
  end
  object dsItens: TDataSource
    DataSet = ServiceCadastro.QRY_movestoqueitem
    Left = 808
    Top = 304
  end
  object TBL_itensMemoria: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 929
    Top = 139
    object TBL_itensMemoriaCOD_MOVESTOQUE: TIntegerField
      FieldName = 'COD_MOVESTOQUE'
    end
    object TBL_itensMemoriaCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
    end
    object TBL_itensMemoriaQTD_ITEM: TCurrencyField
      FieldName = 'QTD_ITEM'
    end
    object TBL_itensMemoriaVLR_UNITARIO: TCurrencyField
      FieldName = 'VLR_UNITARIO'
    end
    object TBL_itensMemoriaVLR_DESCONTO: TCurrencyField
      FieldName = 'VLR_DESCONTO'
    end
    object TBL_itensMemoriaVLR_SUBTOTAL: TCurrencyField
      FieldName = 'VLR_SUBTOTAL'
    end
  end
end
