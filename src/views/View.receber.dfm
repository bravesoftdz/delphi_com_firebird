inherited ViewReceber: TViewReceber
  Caption = 'Receber'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Caption = 'Receber'
      ExplicitWidth = 68
    end
  end
  inherited pnlLinhaFundo: TPanel
    inherited CardPanel_listas: TCardPanel
      ActiveCard = card_pesquisa
      inherited card_pesquisa: TCard
        TabOrder = 1
        inherited DBG_dados: TDBGrid
          Height = 173
          Columns = <
            item
              Expanded = False
              FieldName = 'RC1_NUMDOCTO'
              Title.Caption = 'Docto'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'Cliente'
              Width = 381
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RC1_VALOR'
              Title.Caption = 'Valor'
              Visible = True
            end>
        end
        object DBG_parcelas: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 288
          Width = 1012
          Height = 182
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alBottom
          BorderStyle = bsNone
          DataSource = dsParcelas
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = DBG_dadosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'RC2_DATA'
              Title.Caption = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RC2_VALORPARCELA'
              Title.Caption = 'Valor'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RC2_PARCELA'
              Title.Caption = 'Parcela'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RC2_VENCIMENTO'
              Title.Caption = 'Vencimento'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RC2_VALORHAVER'
              Title.Caption = 'Haver'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RC2_VALORSALDO'
              Title.Caption = 'Saldo'
              Width = 103
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        TabOrder = 0
        ExplicitTop = -3
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_receber1
  end
  object dsParcelas: TDataSource
    DataSet = ServiceCadastro.QRY_receber2
    Left = 576
    Top = 264
  end
end
