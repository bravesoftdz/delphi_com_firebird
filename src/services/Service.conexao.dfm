object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 245
  Width = 418
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=E:\_DATA_BASE_\DB_SISTEMA(2.5)\DADOS.FDB'
      'User_Name=SYSDBA_2'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=Localhost'
      'Port=3050'
      'CharacterSet=win1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 56
    Top = 24
  end
  object FBDriverLink: TFDPhysFBDriverLink
    VendorLib = 
      'E:\Programa'#231#227'o\DelphiXE_B'#225'sico\git_ERPDelphi\trunk\install\dlls\' +
      'fbclient.dll'
    Left = 312
    Top = 88
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 312
    Top = 24
  end
  object QRY_filial: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from filial where fil_codigo = :codigo')
    Left = 56
    Top = 88
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_filialFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Origin = 'FIL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_filialFIL_RAZAO: TStringField
      FieldName = 'FIL_RAZAO'
      Origin = 'FIL_RAZAO'
      Size = 100
    end
    object QRY_filialFIL_FANTASIA: TStringField
      FieldName = 'FIL_FANTASIA'
      Origin = 'FIL_FANTASIA'
      Size = 100
    end
    object QRY_filialFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Origin = 'FIL_CNPJ'
      Size = 50
    end
    object QRY_filialFIL_TELEFONE: TStringField
      FieldName = 'FIL_TELEFONE'
      Origin = 'FIL_TELEFONE'
      Size = 50
    end
  end
end
