object mdCep: TmdCep
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 363
  Width = 764
  object RESTClient: TRESTClient
    BaseURL = 'https://viacep.com.br/ws'
    Params = <>
    Left = 24
    Top = 16
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'CEP'
        Options = [poAutoCreated]
      end>
    Resource = '{CEP}/json/'
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 88
    Top = 16
  end
  object RESTResponse: TRESTResponse
    ContentType = 'text/html'
    Left = 152
    Top = 16
  end
  object DataCEP: TDataSource
    DataSet = QueryCEP
    Left = 248
    Top = 289
  end
  object QueryCEP: TFDQuery
    Active = True
    Connection = fd
    SQL.Strings = (
      'select * from endereco')
    Left = 320
    Top = 289
  end
  object fd: TFDConnection
    Params.Strings = (
      'Database=cep'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 672
    Top = 297
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'D:\Arquivos\libmySQL.dll'
    Left = 663
    Top = 17
  end
  object FDTable: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = fd
    UpdateOptions.UpdateTableName = 'cep.endereco'
    TableName = 'cep.endereco'
    Left = 192
    Top = 288
    object FDTableid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTablecep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Required = True
      Size = 24
    end
    object FDTableestado: TStringField
      FieldName = 'estado'
      Origin = 'estado'
      Required = True
      Size = 24
    end
    object FDTablebairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
      Size = 25
    end
    object FDTablecidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 50
    end
  end
end
