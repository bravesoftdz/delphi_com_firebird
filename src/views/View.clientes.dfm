inherited ViewClientes: TViewClientes
  Caption = 'ViewClientes'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Caption = 'Clientes'
      ExplicitWidth = 68
    end
  end
  inherited pnlLinhaFundo: TPanel
    inherited CardPanel_listas: TCardPanel
      inherited card_pesquisa: TCard
        inherited DBG_dados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'Nome do Cliente'
              Width = 470
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Width = 143
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CNPJCPF'
              Title.Caption = 'CNPJ / CPF'
              Width = 189
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        ExplicitTop = -3
        object lbl1: TLabel [0]
          Left = 16
          Top = 88
          Width = 54
          Height = 21
          Caption = 'C'#243'digo'
          FocusControl = edtPES_CODIGO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl2: TLabel [1]
          Left = 263
          Top = 88
          Width = 124
          Height = 21
          Caption = 'Nome do Cliente'
          FocusControl = edtPES_RAZAO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl3: TLabel [2]
          Left = 669
          Top = 88
          Width = 106
          Height = 21
          Caption = 'Nome Fantasia'
          FocusControl = edtPES_FANTASIA
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl4: TLabel [3]
          Left = 208
          Top = 152
          Width = 63
          Height = 21
          Caption = 'Telefone'
          FocusControl = edtPES_TELEFONE
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl5: TLabel [4]
          Left = 100
          Top = 88
          Width = 78
          Height = 21
          Caption = 'CNPJ / CPF'
          FocusControl = edtPES_CNPJCPF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl6: TLabel [5]
          Left = 16
          Top = 152
          Width = 34
          Height = 21
          Caption = 'IERG'
          FocusControl = edtPES_IERG
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl7: TLabel [6]
          Left = 16
          Top = 217
          Width = 87
          Height = 21
          Caption = 'Observa'#231#227'o'
          FocusControl = edtPES_OBSERVACAO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited pnlTituloCadastro: TPanel
          inherited lblTituloCadastro: TLabel
            Width = 251
            Caption = '[ CADASTRO DE CLIENTES ]'
            ExplicitWidth = 251
          end
        end
        object edtPES_CODIGO: TDBEdit
          Left = 16
          Top = 115
          Width = 78
          Height = 23
          DataField = 'PES_CODIGO'
          DataSource = dsDados
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtPES_RAZAO: TDBEdit
          Left = 263
          Top = 115
          Width = 400
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_RAZAO'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtPES_FANTASIA: TDBEdit
          Left = 669
          Top = 115
          Width = 300
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_FANTASIA'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtPES_TELEFONE: TDBEdit
          Left = 208
          Top = 179
          Width = 273
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_TELEFONE'
          DataSource = dsDados
          TabOrder = 6
        end
        object edtPES_CNPJCPF: TDBEdit
          Left = 100
          Top = 115
          Width = 157
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_CNPJCPF'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtPES_IERG: TDBEdit
          Left = 16
          Top = 179
          Width = 186
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_IERG'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtPES_OBSERVACAO: TDBEdit
          Left = 16
          Top = 244
          Width = 953
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_OBSERVACAO'
          DataSource = dsDados
          TabOrder = 7
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
    Left = 905
    Top = 51
  end
end
