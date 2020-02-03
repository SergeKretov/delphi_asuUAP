object SQLData: TSQLData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 519
  Top = 115
  Height = 278
  Width = 753
  object SQLConnection: TMyConnection
    Database = 'srv56074_clientcard'
    Options.Charset = 'cp1251'
    Username = 'srv56074_admin'
    Password = 'Bd14071978'
    Server = 'mysql-56074.srv.hoster.ru'
    AfterConnect = SQLConnectionAfterConnect
    OnConnectionLost = SQLConnectionConnectionLost
    Left = 32
    Top = 8
  end
  object Agents: TMyTable
    TableName = 'Agents'
    Connection = SQLConnection
    Left = 112
    Top = 8
  end
  object AgentsDS: TMyDataSource
    DataSet = Agents
    Left = 112
    Top = 56
  end
  object Cards: TMyTable
    TableName = 'Cards'
    Connection = SQLConnection
    Left = 176
    Top = 8
  end
  object CardsDS: TMyDataSource
    DataSet = Cards
    Left = 176
    Top = 56
  end
  object CardsGo: TMyTable
    TableName = 'Cards_go'
    Connection = SQLConnection
    Left = 240
    Top = 8
  end
  object CardsGoDS: TMyDataSource
    DataSet = CardsGo
    Left = 240
    Top = 56
  end
  object AdmLogin: TMyTable
    TableName = 'admlogin'
    Connection = SQLConnection
    Left = 304
    Top = 8
  end
  object AgentPay: TMyTable
    TableName = 'agent_pay'
    Connection = SQLConnection
    Left = 360
    Top = 8
  end
  object AgentLogin: TMyTable
    TableName = 'agentlogin'
    Connection = SQLConnection
    Left = 424
    Top = 8
  end
  object AltairMSG: TMyTable
    TableName = 'altairmsg'
    Connection = SQLConnection
    Left = 488
    Top = 8
  end
  object BWayMSG: TMyTable
    TableName = 'bwaymsg'
    Connection = SQLConnection
    Left = 552
    Top = 8
  end
  object SotrLogin: TMyTable
    TableName = 'sotrlogin'
    Connection = SQLConnection
    Left = 616
    Top = 8
  end
  object StatusMSG: TMyTable
    TableName = 'statusmsg'
    Connection = SQLConnection
    Left = 680
    Top = 8
  end
  object ADMLoginDS: TMyDataSource
    DataSet = AdmLogin
    Left = 304
    Top = 56
  end
  object AgentPayDS: TMyDataSource
    DataSet = AgentPay
    Left = 360
    Top = 56
  end
  object AgentLoginDS: TMyDataSource
    DataSet = AgentLogin
    Left = 424
    Top = 56
  end
  object AltairMSGDS: TMyDataSource
    DataSet = AltairMSG
    Left = 488
    Top = 56
  end
  object BWayMSGDS: TMyDataSource
    DataSet = BWayMSG
    Left = 552
    Top = 56
  end
  object SotrLoginDS: TMyDataSource
    DataSet = SotrLogin
    Left = 616
    Top = 56
  end
  object StatusMSGDS: TMyDataSource
    DataSet = StatusMSG
    Left = 680
    Top = 56
  end
  object dela: TMyTable
    TableName = 'dela'
    Connection = SQLConnection
    BeforeEdit = delaBeforeEdit
    BeforeDelete = delaBeforeDelete
    OnNewRecord = delaNewRecord
    Left = 112
    Top = 120
  end
  object offices: TMyTable
    TableName = 'offices'
    Connection = SQLConnection
    Left = 176
    Top = 120
  end
  object sotrudnik: TMyTable
    TableName = 'sotrudnik'
    Connection = SQLConnection
    Left = 240
    Top = 120
  end
  object delaDS: TMyDataSource
    DataSet = dela
    Left = 112
    Top = 168
  end
  object officesDS: TMyDataSource
    DataSet = offices
    Left = 176
    Top = 168
  end
  object sotrudnikDS: TMyDataSource
    DataSet = sotrudnik
    Left = 240
    Top = 168
  end
  object offadmlogin: TMyTable
    TableName = 'offadmlogin'
    Connection = SQLConnection
    Left = 296
    Top = 120
  end
  object offadmloginDS: TMyDataSource
    DataSet = offadmlogin
    Left = 296
    Top = 168
  end
  object onceclient: TMyTable
    TableName = 'onceclient'
    Connection = SQLConnection
    BeforeEdit = onceclientBeforeEdit
    BeforeDelete = onceclientBeforeDelete
    Left = 352
    Top = 120
  end
  object onceclientds: TMyDataSource
    DataSet = onceclient
    Left = 352
    Top = 168
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 40
    Top = 56
  end
end
