object officeform: Tofficeform
  Left = 294
  Top = 123
  BorderStyle = bsDialog
  Caption = #1054#1092#1080#1089#1099
  ClientHeight = 370
  ClientWidth = 912
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
  object Label1: TLabel
    Left = 8
    Top = 280
    Width = 81
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1086#1092#1080#1089#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 256
    Width = 89
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 240
    Top = 280
    Width = 36
    Height = 13
    Caption = #1043#1086#1088#1086#1076
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
    Width = 912
    Height = 249
    Align = alTop
    DataSource = SQLData.officesDS
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
        FieldName = 'office_num'
        Title.Caption = #1053#1086#1084#1077#1088' '#1086#1092#1080#1089#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'office_name'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1092#1080#1089#1072
        Width = 600
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'city'
        Title.Caption = #1043#1086#1088#1086#1076
        Width = 170
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 280
    Width = 121
    Height = 21
    DataField = 'office_num'
    DataSource = SQLData.officesDS
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 104
    Top = 256
    Width = 801
    Height = 21
    DataField = 'office_name'
    DataSource = SQLData.officesDS
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 280
    Top = 280
    Width = 209
    Height = 21
    DataField = 'city'
    DataSource = SQLData.officesDS
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 496
    Top = 280
    Width = 405
    Height = 25
    DataSource = SQLData.officesDS
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
    Left = 832
    Top = 336
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
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 336
    Width = 297
    Height = 25
    Caption = #1047#1072#1076#1072#1090#1100' '#1083#1086#1075#1080#1085' '#1080' '#1087#1072#1088#1086#1083#1100' '#1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1072' '#1086#1092#1080#1089#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
end
