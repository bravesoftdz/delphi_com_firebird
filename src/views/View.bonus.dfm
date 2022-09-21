object ViewBonus: TViewBonus
  Left = 0
  Top = 0
  Caption = 'B'#244'nus'
  ClientHeight = 435
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object lbl1: TLabel
    Left = 16
    Top = 104
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
  object lbl2: TLabel
    Left = 263
    Top = 104
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
  object lbl3: TLabel
    Left = 669
    Top = 104
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
  object lbl4: TLabel
    Left = 208
    Top = 168
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
  object lbl5: TLabel
    Left = 100
    Top = 104
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
  object lbl6: TLabel
    Left = 16
    Top = 168
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
  object lbl7: TLabel
    Left = 16
    Top = 233
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
  object lblEditar: TLabel
    Left = 16
    Top = 14
    Width = 190
    Height = 30
    Caption = 'Cadastro de Clientes'
    Font.Charset = ANSI_CHARSET
    Font.Color = 8816262
    Font.Height = -21
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    ParentFont = False
  end
  object pnlTituloCadCliente: TPanel
    Left = 0
    Top = 0
    Width = 953
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Color = 15461355
    ParentBackground = False
    TabOrder = 0
    object lblTituloCadastro: TLabel
      Left = 16
      Top = 17
      Width = 413
      Height = 30
      Caption = 'Cadastro de Clientes - COM EDITS [ B'#212'NUS ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = 8816262
      Font.Height = -21
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
    end
  end
  object edtPES_CODIGO: TEdit
    Left = 16
    Top = 131
    Width = 78
    Height = 23
    ReadOnly = True
    TabOrder = 1
  end
  object edtPES_RAZAO: TEdit
    Left = 263
    Top = 131
    Width = 400
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object edtPES_FANTASIA: TEdit
    Left = 669
    Top = 131
    Width = 244
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object edtPES_TELEFONE: TEdit
    Left = 208
    Top = 195
    Width = 273
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 6
  end
  object edtPES_CNPJCPF: TEdit
    Left = 100
    Top = 131
    Width = 157
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object edtPES_IERG: TEdit
    Left = 16
    Top = 195
    Width = 186
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 5
  end
  object edtPES_OBSERVACAO: TEdit
    Left = 16
    Top = 260
    Width = 897
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 7
  end
  object btnNovo: TButton
    Left = 131
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 8
    OnClick = btnNovoClick
  end
  object btnEditar: TButton
    Left = 235
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 9
    OnClick = btnEditarClick
  end
  object btnSalvar: TButton
    Left = 339
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 10
    OnClick = btnSalvarClick
  end
end
