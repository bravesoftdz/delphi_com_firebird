inherited ViewFormaPGTO: TViewFormaPGTO
  BorderStyle = bsNone
  Caption = 'ViewFormaPGTO'
  ClientHeight = 496
  ClientWidth = 768
  Position = poOwnerFormCenter
  OnShow = FormShow
  ExplicitWidth = 768
  ExplicitHeight = 496
  TextHeight = 15
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 38
      Top = 3
      Width = 644
      Height = 29
      Cursor = crHandPoint
      Align = alClient
      Caption = 'Faturamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 110
      ExplicitHeight = 25
    end
    object pnlIcone: TPanel
      Left = 0
      Top = 0
      Width = 35
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      Color = 4227327
      TabOrder = 0
      object imgIcone: TImage
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 25
        Height = 25
        Cursor = crHandPoint
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF80000000467414D410000B18F0BFC61050000000662
          4B4744000000000000F943BB7F0000000970485973000000600000006000F06B
          42CF000001BB4944415478DAC5943B4F024110806730DE111FB1A0B0A1F21534
          566A2BF00F008DA889FE0A51B0523B407E866FD11CFFC0A3562B63C4606C68B5
          509A3B13C611013D90DB05256E33B73B73F3CD6B17A1C30BFF154037A0C09312
          027404A044536CEDFE5440011C780D54D2C0656A380966CB00CA2AF34098E4CF
          2141880F40B4813EF35C0A4027D005836A823FD75AAC460ABC4614114AF6005D
          4DB5E1BCEA2D890C690AA89425DD96F39A470AA1D7D41A00E5863EABB7DCC0E1
          9FFFA4189BC725108FE0323CD5C67F01746591B7474D03F31948BA739B2DB784
          08A230FACD532BE0C279C8E92DD9012A8144C599D03E4FD54A5D06EA3D8B5111
          400A429043BFE1A907BCB2E8930148408A6CDFFF4B806D3F5ED87EA01E906331
          26572261B3EFD87EDC0AC83A0FB8FBCB2280D42411EDF114ADD665A084797B6C
          07901E53A405BE6C692B4078D17047CA39401E7A8D099C81370BA092C51C1F9D
          4938B18B3EC8D1676ADB86F2E9EA2E8B489BEE135CCA9885D700207080AEC659
          B3DE5AE49084596353F85CD7405925C82FEB47362302D7792E4BE47B59A40065
          C825744391410801369DE62377455560ED159F6BD06366AA0D6D19F017ABE380
          77733DB819BF86B3640000002574455874646174653A63726561746500323032
          322D30372D31395431353A33383A33322B30303A3030212A83FE000000257445
          5874646174653A6D6F6469667900323032322D30372D31395431353A33383A33
          322B30303A303050773B420000000049454E44AE426082}
        ExplicitLeft = -32
        ExplicitTop = -32
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
    object pnlFechar: TPanel
      Left = 685
      Top = 0
      Width = 83
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btnSair: TSpeedButton
        Left = 0
        Top = 0
        Width = 83
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Caption = '[ SAIR ]'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6711039
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnSairClick
        ExplicitLeft = 3
        ExplicitTop = -3
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 456
    Width = 768
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = 7500402
    ParentBackground = False
    TabOrder = 5
    object pnlBtnSalvar: TPanel
      AlignWithMargins = True
      Left = 632
      Top = 0
      Width = 136
      Height = 40
      Margins.Left = 50
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      BevelOuter = bvNone
      Color = 45056
      ParentBackground = False
      TabOrder = 0
      object btnSalvar: TSpeedButton
        Left = 0
        Top = 0
        Width = 136
        Height = 40
        Cursor = crHandPoint
        Align = alClient
        Caption = '[ SALVAR ]'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        OnClick = btnSalvarClick
        ExplicitTop = 3
      end
    end
  end
  object pnlFPagamentos: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 55
    Width = 253
    Height = 261
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object DBG_dados: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 243
      Height = 251
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsFPagamentos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4342338
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = 5395026
      TitleFont.Height = -16
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = DBG_dadosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'FOR_DESCRICAO'
          Title.Caption = '[ FORMAS DE PGTO ]'
          Width = 200
          Visible = True
        end>
    end
  end
  object pnlInfoPgto: TPanel
    AlignWithMargins = True
    Left = 293
    Top = 55
    Width = 455
    Height = 261
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object DBG_formasPagamentos: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 445
      Height = 251
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsFPagamentosEscolhidos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4342338
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = 5395026
      TitleFont.Height = -16
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'nome_formapagamento'
          Title.Caption = 'Forma Pagamento'
          Width = 285
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_pgto'
          Title.Caption = 'Valor'
          Width = 109
          Visible = True
        end>
    end
  end
  object pnlTotais: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 336
    Width = 728
    Height = 100
    Margins.Left = 20
    Margins.Top = 0
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alBottom
    BevelOuter = bvNone
    Color = 7500402
    ParentBackground = False
    TabOrder = 4
    object lbl3: TLabel
      AlignWithMargins = True
      Left = 49
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
    object lbl1: TLabel
      AlignWithMargins = True
      Left = 304
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
    object lbl2: TLabel
      AlignWithMargins = True
      Left = 577
      Top = 15
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
    object edtTotalVenda: TEdit
      Left = 18
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
      Text = '0'
    end
    object edtVlrFaturado: TEdit
      Left = 273
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
      TabOrder = 1
      Text = '0'
    end
    object edtVlrRestante: TEdit
      Left = 546
      Top = 48
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
      TabOrder = 2
      Text = '0'
    end
  end
  object pnlValor: TPanel
    Left = 256
    Top = 113
    Width = 297
    Height = 145
    BevelOuter = bvNone
    Color = 9737364
    ParentBackground = False
    TabOrder = 3
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
      object Label1: TLabel
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
        OnClick = btnOkClick
        ExplicitTop = -8
      end
    end
  end
  object dsFPagamentos: TDataSource
    DataSet = ServiceCadastro.QRY_formasPGTO
    Left = 120
    Top = 248
  end
  object TBL_formasPGTO: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 624
    Top = 112
    object TBL_formasPGTOid_formapgto: TIntegerField
      FieldName = 'id_formapgto'
    end
    object TBL_formasPGTOvalor_pgto: TCurrencyField
      FieldName = 'valor_pgto'
    end
    object TBL_formasPGTOnome_formapagamento: TStringField
      FieldName = 'nome_formapagamento'
      Size = 100
    end
    object TBL_formasPGTOgerar_receber: TStringField
      FieldName = 'gerar_receber'
      Size = 10
    end
    object TBL_formasPGTOid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object TBL_formasPGTOid_numdocto: TStringField
      FieldName = 'id_numdocto'
      Size = 50
    end
  end
  object dsFPagamentosEscolhidos: TDataSource
    DataSet = TBL_formasPGTO
    Left = 632
    Top = 192
  end
end
