object SQLData: TSQLData
  OldCreateOrder = False
  Left = 515
  Top = 129
  Height = 278
  Width = 753
  object SQLConnection: TMyConnection
    Database = 'srv56074_clientcard'
    Options.Charset = 'cp1251'
    Username = 'srv56074_admin'
    Password = 'Bd14071978'
    Server = 'mysql-56074.srv.hoster.ru'
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 80
  end
  object sudstat: TMyTable
    TableName = 'sud_stat'
    Connection = SQLConnection
    Active = True
    Left = 112
    Top = 8
  end
  object sudstatds: TMyDataSource
    DataSet = sudstat
    Left = 112
    Top = 56
  end
  object Cards: TMyTable
    TableName = 'Cards'
    Connection = SQLConnection
    Left = 208
    Top = 8
  end
  object CardsDS: TMyDataSource
    DataSet = Cards
    Left = 208
    Top = 56
  end
end
