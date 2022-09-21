inherited ViewCaixa: TViewCaixa
  Caption = 'ViewCaixa'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Caption = 'Caixa'
      ExplicitWidth = 47
    end
  end
  inherited pnlLinhaFundo: TPanel
    inherited CardPanel_listas: TCardPanel
      ActiveCard = card_pesquisa
      inherited card_pesquisa: TCard
        TabOrder = 1
        inherited DBG_dados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'CAI_CODIGO'
              Title.Caption = 'Num. Lanc.'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAI_IDVENDA'
              Title.Caption = 'Num. Venda'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAI_DATAHORA'
              Title.Caption = 'Data'
              Width = 176
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAI_TIPO'
              Title.Caption = 'Tipo'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAI_VALOR'
              Title.Caption = 'Valor'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAI_DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FOR_DESCRICAO'
              Title.Caption = 'Forma PGTO'
              Width = 120
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
    DataSet = ServiceCadastro.QRY_cadCaixa
  end
end
