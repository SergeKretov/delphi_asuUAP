object Form1: TForm1
  Left = 426
  Top = 118
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1091#1076#1086#1074
  ClientHeight = 473
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 240
    Width = 38
    Height = 13
    Caption = 'ID '#1057#1091#1076#1072
  end
  object Label2: TLabel
    Left = 8
    Top = 264
    Width = 102
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1091#1076#1072
  end
  object Label3: TLabel
    Left = 8
    Top = 288
    Width = 57
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1089#1091#1076#1072
  end
  object Label4: TLabel
    Left = 8
    Top = 312
    Width = 182
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1099#1096#1077#1089#1090#1086#1103#1097#1077#1075#1086' '#1089#1091#1076#1072
  end
  object Label5: TLabel
    Left = 8
    Top = 336
    Width = 137
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1074#1099#1096#1077#1089#1090#1086#1103#1097#1077#1075#1086' '#1089#1091#1076#1072
  end
  object Label6: TLabel
    Left = 8
    Top = 360
    Width = 30
    Height = 13
    Caption = #1043#1086#1088#1086#1076
  end
  object Label7: TLabel
    Left = 8
    Top = 384
    Width = 32
    Height = 13
    Caption = #1059#1083#1080#1094#1072
  end
  object Label8: TLabel
    Left = 8
    Top = 408
    Width = 86
    Height = 13
    Caption = #1044#1080#1072#1087#1072#1079#1086#1085' '#1076#1086#1084#1086#1074
  end
  object Label9: TLabel
    Left = 264
    Top = 408
    Width = 15
    Height = 13
    Caption = '-----'
  end
  object Label10: TLabel
    Left = 160
    Top = 408
    Width = 36
    Height = 13
    Caption = #1095#1077#1090#1085#1099#1077
  end
  object Label11: TLabel
    Left = 360
    Top = 408
    Width = 48
    Height = 13
    Caption = #1085#1077#1095#1077#1090#1085#1099#1077
  end
  object Label12: TLabel
    Left = 480
    Top = 408
    Width = 15
    Height = 13
    Caption = '-----'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 699
    Height = 233
    Align = alTop
    DataSource = sudds
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
        FieldName = 'SUD_ID'
        Title.Caption = 'ID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUD_NAME'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1091#1076#1072
        Width = 600
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUD_ADR'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'HSUD_NAME'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'HSUD_ADR'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CITY_ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'STREET_ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'D1'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'D2'
        Visible = False
      end>
  end
  object Button1: TButton
    Left = 600
    Top = 240
    Width = 91
    Height = 25
    Caption = #1043#1086#1088#1086#1076#1072
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 600
    Top = 272
    Width = 91
    Height = 25
    Caption = #1059#1083#1080#1094#1099
    TabOrder = 11
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 616
    Top = 440
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
    TabOrder = 12
    OnClick = Button3Click
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 440
    Width = 585
    Height = 25
    DataSource = sudds
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
    TabOrder = 13
  end
  object DBEdit1: TDBEdit
    Left = 200
    Top = 240
    Width = 121
    Height = 21
    DataField = 'SUD_ID'
    DataSource = sudds
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 200
    Top = 264
    Width = 385
    Height = 21
    DataField = 'SUD_NAME'
    DataSource = sudds
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 200
    Top = 288
    Width = 385
    Height = 21
    DataField = 'SUD_ADR'
    DataSource = sudds
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 200
    Top = 312
    Width = 385
    Height = 21
    DataField = 'HSUD_NAME'
    DataSource = sudds
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 200
    Top = 336
    Width = 385
    Height = 21
    DataField = 'HSUD_ADR'
    DataSource = sudds
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 200
    Top = 360
    Width = 361
    Height = 21
    DataField = 'CITY_ID'
    DataSource = sudds
    KeyField = 'CITY_ID'
    ListField = 'CITY'
    ListSource = cityds
    TabOrder = 6
    OnExit = DBLookupComboBox1Exit
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 200
    Top = 384
    Width = 361
    Height = 21
    DataField = 'STREET_ID'
    DataSource = sudds
    KeyField = 'STREET_ID'
    ListField = 'STREET'
    ListSource = streetds
    TabOrder = 7
  end
  object DBEdit6: TDBEdit
    Left = 200
    Top = 408
    Width = 57
    Height = 21
    DataField = 'D1'
    DataSource = sudds
    TabOrder = 8
  end
  object DBEdit7: TDBEdit
    Left = 288
    Top = 408
    Width = 57
    Height = 21
    DataField = 'D2'
    DataSource = sudds
    TabOrder = 9
  end
  object DBEdit8: TDBEdit
    Left = 416
    Top = 408
    Width = 57
    Height = 21
    DataField = 'D3'
    DataSource = sudds
    TabOrder = 14
  end
  object DBEdit9: TDBEdit
    Left = 504
    Top = 408
    Width = 57
    Height = 21
    DataField = 'D4'
    DataSource = sudds
    TabOrder = 15
  end
  object Button4: TButton
    Left = 600
    Top = 304
    Width = 91
    Height = 25
    Caption = #1059#1073#1088#1072#1090#1100' '#1092#1080#1083#1100#1090#1088
    TabOrder = 16
    OnClick = Button4Click
  end
  object MainMenu1: TMainMenu
    Left = 248
    Top = 120
    object N1: TMenuItem
      Caption = #1040#1088#1073#1080#1090#1088#1072#1078#1085#1099#1077' '#1089#1091#1076#1099
      object N9: TMenuItem
        Caption = #1055#1086#1080#1089#1082' '#1089#1091#1076#1072
        OnClick = N9Click
      end
    end
    object N2: TMenuItem
      Caption = #1057#1091#1076#1099' '#1054#1070
      object N7: TMenuItem
        Caption = #1055#1086#1080#1089#1082' '#1089#1091#1076#1072
        OnClick = N7Click
      end
    end
    object N3: TMenuItem
      Caption = #1052#1080#1088#1086#1074#1099#1077' '#1089#1091#1076#1100#1080
      object N6: TMenuItem
        Caption = #1055#1086#1080#1089#1082' '#1057#1059
        OnClick = N6Click
      end
    end
    object N4: TMenuItem
      Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
      object N5: TMenuItem
        Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093' '#1089#1091#1076#1086#1074
        OnClick = N5Click
      end
    end
    object N8: TMenuItem
      Caption = '?'
      OnClick = N8Click
    end
  end
  object city: TTable
    TableName = 'base\cities.dbf'
    Left = 648
    Top = 40
  end
  object cityds: TDataSource
    DataSet = city
    Left = 616
    Top = 40
  end
  object streetds: TDataSource
    DataSet = streets
    Left = 616
    Top = 72
  end
  object streets: TTable
    TableName = 'base\streets.dbf'
    Left = 648
    Top = 72
  end
  object sudds: TDataSource
    DataSet = sud
    Left = 616
    Top = 104
  end
  object sud: TTable
    TableName = 'base\sud.dbf'
    Left = 648
    Top = 104
  end
end
