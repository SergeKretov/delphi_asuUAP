object apay: Tapay
  Left = 389
  Top = 124
  BorderStyle = bsDialog
  Caption = #1042#1099#1087#1083#1072#1090#1099' '#1072#1075#1077#1085#1090#1072#1084
  ClientHeight = 346
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 280
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Label2: TLabel
    Left = 144
    Top = 280
    Width = 34
    Height = 13
    Caption = #1057#1091#1084#1084#1072
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 454
    Height = 241
    Align = alTop
    DataSource = SQLData.AgentPayDS
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
        FieldName = 'agent_id'
        Title.Caption = #1040#1075#1077#1085#1090
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pdate'
        Title.Caption = #1044#1072#1090#1072' '#1074#1099#1087#1083#1072#1090#1099
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'summ'
        Title.Caption = #1057#1091#1084#1084#1072
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 248
    Width = 441
    Height = 21
    DataField = 'agent_id'
    DataSource = SQLData.AgentPayDS
    KeyField = 'idAgents'
    ListField = 'fio'
    ListSource = SQLData.AgentsDS
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 40
    Top = 280
    Width = 89
    Height = 21
    DataField = 'pdate'
    DataSource = SQLData.AgentPayDS
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 184
    Top = 280
    Width = 89
    Height = 21
    DataField = 'summ'
    DataSource = SQLData.AgentPayDS
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 312
    Width = 261
    Height = 25
    DataSource = SQLData.AgentPayDS
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Flat = True
    Hints.Strings = (
      #1055#1077#1088#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
      #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077)
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = True
    OnClick = DBNavigator1Click
  end
  object Button1: TButton
    Left = 368
    Top = 312
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
    TabOrder = 5
    OnClick = Button1Click
  end
end
