object agents: Tagents
  Left = 272
  Top = 230
  BorderStyle = bsDialog
  Caption = #1040#1075#1077#1085#1090#1099' '#1070#1040' '#1055#1056#1040#1042#1054
  ClientHeight = 380
  ClientWidth = 801
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 801
    Height = 233
    Align = alTop
    BorderStyle = bsNone
    DataSource = SQLData.AgentsDS
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idAgents'
        Title.Caption = 'id '#1040#1075#1077#1085#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fio'
        Title.Caption = #1060'.'#1048'.'#1054'. '#1072#1075#1077#1085#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idsheff'
        Title.Caption = 'id '#1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 8
    Top = 240
    Width = 233
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 272
    Width = 233
    Height = 25
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 304
    Width = 233
    Height = 25
    Caption = #1047#1072#1076#1072#1090#1100' '#1083#1086#1075#1080#1085' '#1080' '#1087#1072#1088#1086#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object GroupBox1: TGroupBox
    Left = 248
    Top = 240
    Width = 545
    Height = 89
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1072#1075#1077#1085#1090#1072
    TabOrder = 7
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 36
      Height = 13
      Caption = #1060'.'#1048'.'#1054'.'
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 71
      Height = 13
      Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 24
      Width = 489
      Height = 21
      DataField = 'fio'
      DataSource = SQLData.AgentsDS
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 56
      Width = 81
      Height = 21
      DataField = 'idsheff'
      DataSource = SQLData.AgentsDS
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 312
      Top = 56
      Width = 222
      Height = 25
      DataSource = SQLData.AgentsDS
      VisibleButtons = [nbPost, nbCancel]
      Flat = True
      TabOrder = 2
      OnClick = DBNavigator1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 248
    Top = 240
    Width = 545
    Height = 89
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1072#1075#1077#1085#1090#1072
    TabOrder = 8
    Visible = False
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 36
      Height = 13
      Caption = #1060'.'#1048'.'#1054'.'
    end
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 71
      Height = 13
      Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
    end
    object Label5: TLabel
      Left = 176
      Top = 56
      Width = 34
      Height = 13
      Caption = #1053#1086#1084#1077#1088
    end
    object DBEdit3: TDBEdit
      Left = 48
      Top = 24
      Width = 489
      Height = 21
      DataField = 'fio'
      DataSource = SQLData.AgentsDS
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 88
      Top = 56
      Width = 81
      Height = 21
      DataField = 'idsheff'
      DataSource = SQLData.AgentsDS
      TabOrder = 1
    end
    object DBNavigator2: TDBNavigator
      Left = 312
      Top = 56
      Width = 222
      Height = 25
      DataSource = SQLData.AgentsDS
      VisibleButtons = [nbPost, nbCancel]
      Flat = True
      TabOrder = 3
      TabStop = True
      OnClick = DBNavigator2Click
    end
    object DBEdit5: TDBEdit
      Left = 216
      Top = 56
      Width = 81
      Height = 21
      DataField = 'idAgents'
      DataSource = SQLData.AgentsDS
      TabOrder = 2
    end
  end
  object Button4: TButton
    Left = 8
    Top = 344
    Width = 233
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1072#1075#1077#1085#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 720
    Top = 344
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 248
    Top = 344
    Width = 185
    Height = 25
    Caption = #1042#1099#1087#1083#1072#1090#1099' '#1087#1086' '#1072#1075#1077#1085#1090#1072#1084
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button6Click
  end
end
