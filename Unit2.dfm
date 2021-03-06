object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 573
  Width = 530
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=bd.md' +
      'b;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:Sys' +
      'tem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Pa' +
      'ssword="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mod' +
      'e=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Tr' +
      'ansactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create' +
      ' System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLED' +
      'B:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without R' +
      'eplica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 16
  end
  object ADOTSlave: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Slave'
    Left = 160
    Top = 152
  end
  object DataSSlave: TDataSource
    DataSet = ADOTSlave
    Left = 304
    Top = 152
  end
  object ADOTCustomers: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Customers'
    Left = 160
    Top = 345
  end
  object DataSCustomers: TDataSource
    DataSet = ADOTCustomers
    Left = 304
    Top = 344
  end
  object ADOQConnnectInfo: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSCustomers
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    ConnectInfo.ID,'
      '    ConnectInfo.['#1044#1072#1090#1072'],'
      '    Service.['#1053#1072#1079#1074#1072'],'
      '    (Customers.['#1055#1088#1110#1079#1074#1080#1097#1077'] & " " + Customers.['#1030#1084#1103']) AS '#1050#1083#1110#1108#1085#1090','
      '    ConnectInfo.['#1058#1077#1088#1084#1110#1085#1044#1110#1111'],'
      '    ConnectInfo.['#1062#1110#1085#1072']'
      'FROM'
      '    ConnectInfo,'
      '    Customers,'
      '    Service'
      'WHERE ('
      '    ConnectInfo.['#1058#1072#1088#1080#1092'_ID] = Service.ID'
      '    AND ConnectInfo.['#1050#1083#1110#1108#1085#1090'_ID] = Customers.ID'
      ')')
    Left = 160
    Top = 408
  end
  object DataSConnectInfo: TDataSource
    DataSet = ADOQConnnectInfo
    Left = 304
    Top = 408
  end
  object ADOQService: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '  Service.ID, '
      '  Service.'#1053#1072#1079#1074#1072', '
      '  Service.'#1058#1080#1087', '
      '  Service.'#1062#1110#1085#1072', '
      '  Service.'#1054#1073#1089#1103#1075', '
      '  Service.'#1052#1086#1078#1083#1080#1074#1110#1089#1090#1100'_'#1088#1086#1079#1096#1080#1088#1077#1085#1085#1103', '
      '  Server.'#1055#1088#1080#1079#1085#1072#1095#1077#1085#1085#1103'_'#1053#1072#1079#1074#1072' AS '#1057#1077#1088#1074#1077#1088' '
      'FROM '
      '  Server, '
      '  Service '
      'WHERE '
      '  Service.'#1057#1077#1088#1074#1077#1088'_'#1048#1044' = Server.ID')
    Left = 160
    Top = 224
  end
  object DataSService: TDataSource
    DataSet = ADOQService
    Left = 304
    Top = 224
  end
  object ADOTServer: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Server'
    Left = 160
    Top = 96
  end
  object DataSServer: TDataSource
    DataSet = ADOTServer
    Left = 304
    Top = 96
  end
  object ADOQCustomers: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Customers.ID,  Customers.['#1055#1088#1110#1079#1074#1080#1097#1077'], Customers.['#1030#1084#1103'], Cus' +
        'tomers.['#1058#1077#1083#1077#1092#1086#1085'], Customers.[e-mail]'
      'FROM Customers  ')
    Left = 160
    Top = 288
  end
  object DataSCustomersQ: TDataSource
    DataSet = ADOQCustomers
    Left = 304
    Top = 288
  end
  object ADOQTest: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      'Customers.ID,'
      'Customers.['#1055#1088#1110#1079#1074#1080#1097#1077'], '
      'Customers.['#1030#1084#1103'], '
      'Service.ID, '
      'Service.['#1053#1072#1079#1074#1072'],'
      'Service.['#1057#1077#1088#1074#1077#1088'_'#1048#1044'],'
      'Server.ID'
      'FROM Customers,Server,Service')
    Left = 160
    Top = 472
  end
  object DataSTest: TDataSource
    DataSet = ADOQTest
    Left = 304
    Top = 472
  end
  object ADOQSlave: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    (Slave.['#1055#1088#1110#1079#1074#1080#1097#1077'] & " " + Slave.['#1030#1084#1103']) AS '#1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082', '
      '    Slave.['#1055#1086#1089#1072#1076#1072'], '
      '    Slave.['#1058#1077#1083#1077#1092#1086#1085'] '
      'FROM '
      '    Slave ')
    Left = 376
    Top = 152
  end
  object DataSQSlave: TDataSource
    DataSet = ADOQSlave
    Left = 448
    Top = 152
  end
  object ADOQTested: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Slave.['#1055#1086#1089#1072#1076#1072']'
      'FROM Slave'
      'GROUP BY Slave.['#1055#1086#1089#1072#1076#1072']')
    Left = 376
    Top = 224
  end
  object DataSTested: TDataSource
    DataSet = ADOQTested
    Left = 440
    Top = 224
  end
end
