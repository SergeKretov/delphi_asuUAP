object cardedit: Tcardedit
  Left = 819
  Top = 138
  BorderStyle = bsDialog
  Caption = 'cardedit'
  ClientHeight = 317
  ClientWidth = 328
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
    Top = 8
    Width = 86
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1088#1086#1076#1072#1078#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 97
    Height = 13
    Caption = #1044#1072#1090#1072' '#1072#1082#1090#1080#1074#1072#1094#1080#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 120
    Width = 35
    Height = 13
    Caption = #1040#1075#1077#1085#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 216
    Width = 80
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1082#1072#1088#1090#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 240
    Width = 37
    Height = 13
    Caption = #1057#1082#1083#1072#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 176
    Width = 102
    Height = 13
    Caption = #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100' '#1076#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 288
    Width = 54
    Height = 13
    Caption = #1053#1086#1084#1080#1085#1072#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 152
    Top = 288
    Width = 63
    Height = 13
    Caption = #1040#1075#1077#1085#1090#1089#1082#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 8
    Width = 105
    Height = 21
    DataField = 'saled_date'
    DataSource = SQLData.CardsDS
    TabOrder = 0
  end
  object DBCheckBox1: TDBCheckBox
    Left = 216
    Top = 8
    Width = 105
    Height = 17
    Caption = #1082#1072#1088#1090#1072' '#1087#1088#1086#1076#1072#1085#1072
    DataField = 'saled'
    DataSource = SQLData.CardsDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBNavigator1: TDBNavigator
    Left = 208
    Top = 176
    Width = 112
    Height = 25
    DataSource = SQLData.CardsDS
    VisibleButtons = [nbPost, nbCancel]
    Flat = True
    TabOrder = 14
    TabStop = True
    OnClick = DBNavigator1Click
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 40
    Width = 105
    Height = 21
    DataField = 'active_date'
    DataSource = SQLData.CardsDS
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 216
    Top = 40
    Width = 105
    Height = 21
    DataField = 'active_date_end'
    DataSource = SQLData.CardsDS
    TabOrder = 3
  end
  object DBCheckBox2: TDBCheckBox
    Left = 8
    Top = 72
    Width = 145
    Height = 17
    Caption = #1082#1072#1088#1090#1072' '#1072#1082#1090#1080#1074#1080#1088#1086#1074#1072#1085#1072
    DataField = 'active'
    DataSource = SQLData.CardsDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBCheckBox3: TDBCheckBox
    Left = 8
    Top = 96
    Width = 113
    Height = 17
    Caption = #1082#1072#1088#1090#1072' '#1086#1087#1083#1072#1095#1077#1085#1072
    DataField = 'payed'
    DataSource = SQLData.CardsDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object GroupBox1: TGroupBox
    Left = 160
    Top = 72
    Width = 161
    Height = 41
    Caption = #1050#1086#1085#1089#1091#1083#1100#1090#1072#1094#1080#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    object DBEdit4: TDBEdit
      Left = 16
      Top = 16
      Width = 129
      Height = 21
      DataField = 'nfc'
      DataSource = SQLData.CardsDS
      TabOrder = 0
      OnClick = DBEdit4Click
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 48
    Top = 120
    Width = 273
    Height = 21
    DataField = 'agent_id'
    DataSource = SQLData.CardsDS
    KeyField = 'idAgents'
    ListField = 'fio'
    ListSource = SQLData.AgentsDS
    TabOrder = 6
    OnClick = DBLookupComboBox1Click
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 144
    Width = 313
    Height = 21
    DataField = 'agentfio'
    DataSource = SQLData.CardsDS
    TabOrder = 7
  end
  object DBEdit6: TDBEdit
    Left = 96
    Top = 216
    Width = 225
    Height = 21
    DataField = 'cardnumber'
    DataSource = SQLData.CardsDS
    ReadOnly = True
    TabOrder = 9
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 256
    Width = 313
    Height = 21
    DataField = 'sclad'
    DataSource = SQLData.CardsDS
    TabOrder = 10
  end
  object DBEdit8: TDBEdit
    Left = 112
    Top = 176
    Width = 89
    Height = 21
    DataField = 'active_date_control'
    DataSource = SQLData.CardsDS
    TabOrder = 8
  end
  object DBEdit9: TDBEdit
    Left = 72
    Top = 288
    Width = 73
    Height = 21
    DataField = 'price1'
    DataSource = SQLData.CardsDS
    TabOrder = 11
  end
  object DBEdit10: TDBEdit
    Left = 224
    Top = 288
    Width = 97
    Height = 21
    DataField = 'Price2'
    DataSource = SQLData.CardsDS
    TabOrder = 12
  end
end
