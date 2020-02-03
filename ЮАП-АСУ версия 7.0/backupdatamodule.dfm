object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 723
  Top = 208
  Height = 269
  Width = 483
  object MyConnection1: TMyConnection
    Database = 'srv56074_clientcard'
    Username = 'srv56074_admin'
    Password = 'Bd14071978'
    Server = 'mysql-56074.srv.hoster.ru'
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object MyDump1: TMyDump
    TableNames = 
      'admlogin, agent_pay, agentlogin, Agents, altairmsg, bwaymsg, Car' +
      'ds, Cards_go, dela, offadmlogin, offices, onceclient, rlink, sot' +
      'rlogin, sotrudnik, statusmsg, sud_stat'
    Connection = MyConnection1
    Objects = [doDatabase, doTables, doData, doViews]
    Left = 104
    Top = 16
  end
end
