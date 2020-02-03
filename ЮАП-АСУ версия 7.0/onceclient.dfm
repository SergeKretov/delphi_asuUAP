object onceclientform: Tonceclientform
  Left = 421
  Top = 49
  BorderStyle = bsDialog
  Caption = #1056#1072#1079#1086#1074#1099#1077' '#1082#1083#1080#1077#1085#1090#1099
  ClientHeight = 452
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 232
    Width = 86
    Height = 13
    Caption = #1044#1072#1090#1072' '#1086#1073#1088#1072#1097#1077#1085#1080#1103
  end
  object Label2: TLabel
    Left = 240
    Top = 232
    Width = 36
    Height = 13
    Caption = #1050#1083#1080#1077#1085#1090
  end
  object Label3: TLabel
    Left = 616
    Top = 232
    Width = 62
    Height = 13
    Caption = #1062#1077#1085#1072' '#1091#1089#1083#1091#1075#1080
  end
  object Label4: TLabel
    Left = 8
    Top = 256
    Width = 45
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Label5: TLabel
    Left = 208
    Top = 256
    Width = 36
    Height = 13
    Caption = #1059#1089#1083#1091#1075#1072
  end
  object Label6: TLabel
    Left = 616
    Top = 256
    Width = 49
    Height = 13
    Caption = #1054#1087#1083#1072#1095#1077#1085#1086
  end
  object Label7: TLabel
    Left = 8
    Top = 280
    Width = 53
    Height = 13
    Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
  end
  object Label8: TLabel
    Left = 8
    Top = 304
    Width = 28
    Height = 13
    Caption = #1054#1092#1080#1089
  end
  object Label9: TLabel
    Left = 8
    Top = 328
    Width = 89
    Height = 13
    Caption = #1044#1072#1090#1072' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
  end
  object Label10: TLabel
    Left = 360
    Top = 280
    Width = 66
    Height = 13
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
  end
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 400
    Width = 137
    Height = 22
    Caption = #1059#1073#1088#1072#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 152
    Top = 400
    Width = 153
    Height = 22
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1084#1086#1080
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 312
    Top = 400
    Width = 249
    Height = 22
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1084#1086#1080' '#1085#1077' '#1079#1072#1074#1077#1088#1096#1077#1085#1085#1099#1077
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 568
    Top = 400
    Width = 201
    Height = 22
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1085#1077' '#1079#1072#1074#1077#1088#1096#1077#1085#1085#1099#1077
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton4Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 775
    Height = 225
    Align = alTop
    DataSource = SQLData.onceclientds
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
        FieldName = 'odata'
        Title.Caption = #1044#1072#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sort_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'client'
        Title.Caption = #1050#1083#1080#1077#1085#1090
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usluga'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'phone'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'office_num'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'price'
        Title.Caption = #1062#1077#1085#1072' '#1091#1089#1083#1091#1075#1080
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'payd'
        Title.Caption = #1054#1087#1083#1072#1095#1077#1085#1086
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cdate'
        Title.Caption = #1044#1072#1090#1072' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ended'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'info'
        Visible = False
      end>
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 232
    Width = 121
    Height = 21
    DataField = 'odata'
    DataSource = SQLData.onceclientds
    TabOrder = 1
  end
  object DBCheckBox1: TDBCheckBox
    Left = 240
    Top = 328
    Width = 113
    Height = 17
    Caption = #1059#1089#1083#1091#1075#1072' '#1086#1082#1072#1079#1072#1085#1072
    DataField = 'ended'
    DataSource = SQLData.onceclientds
    TabOrder = 10
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 64
    Top = 280
    Width = 289
    Height = 21
    DataField = 'sort_id'
    DataSource = SQLData.onceclientds
    KeyField = 'sotr_id'
    ListField = 'sotr_name'
    ListSource = SQLData.sotrudnikDS
    TabOrder = 7
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 40
    Top = 304
    Width = 313
    Height = 21
    DataField = 'office_num'
    DataSource = SQLData.onceclientds
    KeyField = 'office_num'
    ListField = 'office_name'
    ListSource = SQLData.officesDS
    TabOrder = 8
  end
  object DBMemo1: TDBMemo
    Left = 360
    Top = 296
    Width = 409
    Height = 89
    DataField = 'info'
    DataSource = SQLData.onceclientds
    TabOrder = 11
  end
  object DBEdit2: TDBEdit
    Left = 280
    Top = 232
    Width = 329
    Height = 21
    DataField = 'client'
    DataSource = SQLData.onceclientds
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 688
    Top = 232
    Width = 81
    Height = 21
    DataField = 'price'
    DataSource = SQLData.onceclientds
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 64
    Top = 256
    Width = 137
    Height = 21
    DataField = 'phone'
    DataSource = SQLData.onceclientds
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 248
    Top = 256
    Width = 361
    Height = 21
    DataField = 'usluga'
    DataSource = SQLData.onceclientds
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 672
    Top = 256
    Width = 97
    Height = 21
    DataField = 'payd'
    DataSource = SQLData.onceclientds
    TabOrder = 4
  end
  object DBEdit7: TDBEdit
    Left = 104
    Top = 328
    Width = 121
    Height = 21
    DataField = 'cdate'
    DataSource = SQLData.onceclientds
    TabOrder = 9
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 360
    Width = 342
    Height = 25
    DataSource = SQLData.onceclientds
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
      #1054#1090#1084#1077#1085#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077)
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    TabStop = True
    OnClick = DBNavigator1Click
  end
  object Button1: TButton
    Left = 696
    Top = 424
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
    TabOrder = 13
    OnClick = Button1Click
  end
end
