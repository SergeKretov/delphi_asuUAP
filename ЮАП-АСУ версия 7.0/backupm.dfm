object Form1: TForm1
  Left = 191
  Top = 125
  BorderStyle = bsNone
  Caption = 'BackupDB'
  ClientHeight = 23
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object StaticText1: TStaticText
    Left = 0
    Top = 0
    Width = 598
    Height = 23
    Align = alClient
    Alignment = taCenter
    BorderStyle = sbsSingle
    Caption = #1057#1086#1079#1076#1072#1102' '#1072#1088#1093#1080#1074' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093'...'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
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
    Left = 56
    Top = 16
  end
  object Timer1: TTimer
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 88
    Top = 16
  end
end
