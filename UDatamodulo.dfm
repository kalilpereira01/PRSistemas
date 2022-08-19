object DataModulo: TDataModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 403
  Width = 730
  object FDConexao: TFDConnection
    Params.Strings = (
      'SERVER=localhost'
      'User_Name=sa'
      'Password=6446588'
      'ApplicationName=Architect'
      'Workstation=K8LIL'
      'MARS=yes'
      'Database=PRSistemas'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 392
    Top = 128
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Timeout = 300000
    SynchronizedEvents = False
    Left = 344
    Top = 200
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 432
    Top = 208
  end
end
