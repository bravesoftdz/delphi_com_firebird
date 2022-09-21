inherited ViewBaseListas: TViewBaseListas
  Cursor = crHandPoint
  BorderStyle = bsNone
  Caption = 'ViewBaseListas'
  ClientHeight = 550
  ClientWidth = 1024
  Position = poDefault
  OnShow = FormShow
  ExplicitWidth = 1024
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 15
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = pnlTopoMouseDown
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 38
      Top = 3
      Width = 900
      Height = 29
      Cursor = crHandPoint
      Align = alClient
      Caption = 'lblTitulo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnMouseDown = pnlTopoMouseDown
      ExplicitWidth = 70
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
        OnMouseDown = pnlTopoMouseDown
        ExplicitLeft = -32
        ExplicitTop = -32
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
    object pnlFechar: TPanel
      Left = 941
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
        ExplicitLeft = -6
        ExplicitTop = 6
        ExplicitWidth = 210
        ExplicitHeight = 41
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 510
    Width = 1024
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = 7500402
    ParentBackground = False
    TabOrder = 2
    object btnNovo: TSpeedButton
      AlignWithMargins = True
      Left = 297
      Top = 3
      Width = 99
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Down = True
      Caption = '[ NOVO ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnNovoClick
      ExplicitLeft = 680
      ExplicitTop = 0
      ExplicitHeight = 35
    end
    object btnEditar: TSpeedButton
      AlignWithMargins = True
      Left = 402
      Top = 3
      Width = 99
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ EDITAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnEditarClick
      ExplicitLeft = 732
    end
    object btnCancelar: TSpeedButton
      AlignWithMargins = True
      Left = 507
      Top = 3
      Width = 118
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ CANCELAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCancelarClick
      ExplicitLeft = 448
    end
    object btnSalvar: TSpeedButton
      AlignWithMargins = True
      Left = 631
      Top = 3
      Width = 99
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ SALVAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSalvarClick
      ExplicitLeft = 708
      ExplicitTop = -5
    end
    object btnExcluir: TSpeedButton
      AlignWithMargins = True
      Left = 736
      Top = 3
      Width = 99
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ EXCLUIR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnExcluirClick
      ExplicitLeft = 708
    end
    object pnlBotaoSelecionar: TPanel
      AlignWithMargins = True
      Left = 888
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
      Visible = False
      object btnSelecionar: TSpeedButton
        Left = 0
        Top = 0
        Width = 136
        Height = 40
        Cursor = crHandPoint
        Align = alClient
        Caption = '[ SELECIONAR ]'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        OnClick = btnSelecionarClick
        ExplicitLeft = 3
      end
    end
  end
  object pnlLinhaFundo: TPanel
    Left = 0
    Top = 35
    Width = 1024
    Height = 475
    Align = alClient
    BevelOuter = bvNone
    Color = 7500402
    ParentBackground = False
    TabOrder = 1
    object CardPanel_listas: TCardPanel
      AlignWithMargins = True
      Left = 1
      Top = 0
      Width = 1022
      Height = 475
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alClient
      ActiveCard = card_pesquisa
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      OnCardChange = CardPanel_listasCardChange
      object card_pesquisa: TCard
        Left = 0
        Top = 0
        Width = 1022
        Height = 475
        Caption = 'card_pesquisa'
        CardIndex = 0
        TabOrder = 0
        object DBG_dados: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 105
          Width = 1012
          Height = 365
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsDados
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = DBG_dadosDblClick
        end
        object pnlTituloPesquisa: TPanel
          Left = 0
          Top = 0
          Width = 1022
          Height = 100
          Align = alTop
          BevelOuter = bvNone
          Color = 15461355
          ParentBackground = False
          TabOrder = 0
          object lblTituloPesquisa: TLabel
            Left = 3
            Top = 14
            Width = 80
            Height = 30
            Caption = 'Pesquisa'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object edtPesquisa: TSearchBox
            Left = 3
            Top = 50
            Width = 764
            Height = 29
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TextHint = 'Digite aqui sua pesquisa!'
          end
        end
      end
      object card_cadastro: TCard
        Left = 0
        Top = 0
        Width = 1022
        Height = 475
        Caption = 'card_cadastro'
        CardIndex = 1
        TabOrder = 1
        object pnlTituloCadastro: TPanel
          Left = 0
          Top = 0
          Width = 1022
          Height = 60
          Align = alTop
          BevelOuter = bvNone
          Color = 15461355
          ParentBackground = False
          TabOrder = 0
          object lblTituloCadastro: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 15
            Width = 199
            Height = 45
            Margins.Top = 15
            Margins.Bottom = 0
            Align = alLeft
            Caption = '[ CADASTRO DE XYZ ]'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 30
          end
          object pnlVoltar: TPanel
            Left = 816
            Top = 0
            Width = 206
            Height = 60
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object btnVoltarPessquisa: TSpeedButton
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 200
              Height = 54
              Cursor = crHandPoint
              Align = alClient
              Caption = 'Voltar para a Pesquisa'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 5395026
              Font.Height = -16
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
              OnClick = btnVoltarPessquisaClick
              ExplicitLeft = 835
              ExplicitWidth = 187
            end
          end
        end
      end
    end
  end
  object dsDados: TDataSource
    OnStateChange = dsDadosStateChange
    Left = 569
    Top = 195
  end
end
