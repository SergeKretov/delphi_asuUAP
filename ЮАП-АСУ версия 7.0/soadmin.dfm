object soadm: Tsoadm
  Left = 191
  Top = 124
  BorderStyle = bsDialog
  Caption = #1051#1086#1075#1080#1085' '#1080' '#1087#1072#1088#1086#1083#1100' '#1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1072' '#1086#1092#1080#1089#1072
  ClientHeight = 306
  ClientWidth = 470
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
    Top = 192
    Width = 37
    Height = 13
    Caption = #1051#1086#1075#1080#1085
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 216
    Width = 45
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 240
    Width = 33
    Height = 13
    Caption = #1054#1092#1080#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 470
    Height = 185
    Align = alTop
    DataSource = SQLData.offadmloginDS
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
        FieldName = 'login'
        Title.Caption = #1051#1086#1075#1080#1085
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Title.Caption = #1055#1072#1088#1086#1083#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'officeid'
        Title.Caption = #1054#1092#1080#1089
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 272
    Width = 234
    Height = 25
    DataSource = SQLData.offadmloginDS
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
  object DBEdit1: TDBEdit
    Left = 56
    Top = 192
    Width = 273
    Height = 21
    DataField = 'login'
    DataSource = SQLData.offadmloginDS
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 216
    Width = 273
    Height = 21
    DataField = 'password'
    DataSource = SQLData.offadmloginDS
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 56
    Top = 240
    Width = 409
    Height = 21
    DataField = 'officeid'
    DataSource = SQLData.offadmloginDS
    KeyField = 'office_num'
    ListField = 'office_name'
    ListSource = SQLData.officesDS
    TabOrder = 3
  end
  object Button1: TButton
    Left = 392
    Top = 272
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
