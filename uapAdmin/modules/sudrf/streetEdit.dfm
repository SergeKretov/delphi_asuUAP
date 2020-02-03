object Form3: TForm3
  Left = 191
  Top = 114
  BorderStyle = bsDialog
  Caption = #1059#1083#1080#1094#1099
  ClientHeight = 330
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 272
    Width = 45
    Height = 13
    Caption = 'ID '#1091#1083#1080#1094#1099
  end
  object Label2: TLabel
    Left = 8
    Top = 296
    Width = 32
    Height = 13
    Caption = #1059#1083#1080#1094#1072
  end
  object Label3: TLabel
    Left = 152
    Top = 272
    Width = 30
    Height = 13
    Caption = #1043#1086#1088#1086#1076
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 550
    Height = 233
    Align = alTop
    DataSource = Form1.streetds
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'STREET_ID'
        Title.Caption = 'ID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STREET'
        Title.Caption = #1059#1083#1080#1094#1072
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CITY_ID'
        Title.Caption = 'ID '#1043#1086#1088#1086#1076#1072
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 240
    Width = 234
    Height = 25
    DataSource = Form1.streetds
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
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 64
    Top = 272
    Width = 73
    Height = 21
    DataField = 'STREET_ID'
    DataSource = Form1.streetds
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 64
    Top = 296
    Width = 473
    Height = 21
    DataField = 'STREET'
    DataSource = Form1.streetds
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 192
    Top = 272
    Width = 345
    Height = 21
    DataField = 'CITY_ID'
    DataSource = Form1.streetds
    KeyField = 'CITY_ID'
    ListField = 'CITY'
    ListSource = Form1.cityds
    TabOrder = 4
  end
  object Button1: TButton
    Left = 464
    Top = 240
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
