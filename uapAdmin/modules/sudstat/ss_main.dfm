object Form1: TForm1
  Left = 263
  Top = 130
  BorderStyle = bsDialog
  Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1089#1091#1076#1077#1073#1085#1099#1093' '#1076#1077#1083
  ClientHeight = 503
  ClientWidth = 833
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
  object Label1: TLabel
    Left = 248
    Top = 128
    Width = 185
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1080#1090#1086#1075#1086'/'#1074' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1080
  end
  object Shape1: TShape
    Left = 8
    Top = 176
    Width = 817
    Height = 9
  end
  object Label2: TLabel
    Left = 8
    Top = 384
    Width = 77
    Height = 13
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1077#1083#1072
  end
  object Label3: TLabel
    Left = 64
    Top = 408
    Width = 22
    Height = 13
    Caption = 'URL'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 425
    Height = 105
    DataSource = sudstatds
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'pd'
        Title.Caption = #1055#1088#1086#1095#1080#1077
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gd'
        Title.Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1082#1080#1077
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ad'
        Title.Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1080#1074#1085#1099#1077
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ard'
        Title.Caption = #1040#1088#1073#1080#1090#1088#1072#1078#1085#1099#1077
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bd'
        Title.Caption = #1041#1072#1085#1082#1088#1086#1090#1085#1099#1077
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 120
    Width = 240
    Height = 25
    DataSource = sudstatds
    Flat = True
    TabOrder = 1
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 152
    Width = 425
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = #1055#1077#1088#1074#1072#1103' '#1089#1090#1088#1086#1082#1072' '#1074' '#1090#1072#1073#1083#1080#1094#1077' '#1080#1090#1086#1075#1086', '#1074#1090#1086#1088#1072#1103' '#1089#1090#1088#1086#1082#1072' - '#1074' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1080'.'
    TabOrder = 2
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 192
    Width = 817
    Height = 185
    DataSource = linkds
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1077#1083#1072
        Width = 770
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 384
    Width = 729
    Height = 21
    DataField = 'name'
    DataSource = linkds
    TabOrder = 4
  end
  object DBMemo1: TDBMemo
    Left = 96
    Top = 408
    Width = 729
    Height = 49
    DataField = 'link'
    DataSource = linkds
    TabOrder = 5
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 464
    Width = 240
    Height = 25
    DataSource = linkds
    Flat = True
    TabOrder = 6
  end
  object Button1: TButton
    Left = 752
    Top = 472
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button1Click
  end
  object StaticText2: TStaticText
    Left = 440
    Top = 8
    Width = 385
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = '('#1089') 2019 '#1057#1077#1088#1075#1077#1081' '#1057'. '#1041#1072#1088#1089#1091#1082#1086#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object SQLConnection: TMyConnection
    Database = 'srv56074_clientcard'
    Options.Charset = 'cp1251'
    Username = 'srv56074_admin'
    Password = 'Bd14071978'
    Server = 'mysql-56074.srv.hoster.ru'
    Connected = True
    Left = 16
    Top = 72
  end
  object sudstat: TMyTable
    TableName = 'sud_stat'
    Connection = SQLConnection
    Active = True
    Left = 48
    Top = 72
  end
  object sudstatds: TMyDataSource
    DataSet = sudstat
    Left = 80
    Top = 72
  end
  object links: TMyTable
    TableName = 'rlink'
    Connection = SQLConnection
    Active = True
    Left = 152
    Top = 248
  end
  object linkds: TMyDataSource
    DataSet = links
    Left = 184
    Top = 248
  end
end
