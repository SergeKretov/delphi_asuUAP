object Form1: TForm1
  Left = 291
  Top = 130
  BorderStyle = bsDialog
  Caption = #1057#1080#1089#1090#1077#1084#1085#1099#1077' '#1091#1089#1090#1072#1085#1086#1074#1082#1080
  ClientHeight = 261
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 281
    Height = 25
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103' '#1089' '#1041#1044
    TabOrder = 0
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 40
    Width = 273
    Height = 17
    Caption = #1057#1086#1079#1076#1072#1074#1072#1090#1100' '#1083#1086#1082#1072#1083#1100#1085#1086' '#1072#1088#1093#1080#1074#1085#1091#1102' '#1041#1044' '#1087#1088#1080' '#1079#1072#1087#1091#1089#1082#1077
    TabOrder = 1
  end
  object Button2: TButton
    Left = 8
    Top = 224
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
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
    Left = 216
    Top = 224
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object CheckBox2: TCheckBox
    Left = 8
    Top = 64
    Width = 97
    Height = 17
    Caption = #1056#1077#1079#1077#1088#1074
    TabOrder = 4
  end
  object CheckBox3: TCheckBox
    Left = 8
    Top = 88
    Width = 97
    Height = 17
    Caption = #1056#1077#1079#1077#1088#1074
    TabOrder = 5
  end
  object CheckBox4: TCheckBox
    Left = 8
    Top = 112
    Width = 97
    Height = 17
    Caption = #1056#1077#1079#1077#1088#1074
    TabOrder = 6
  end
  object CheckBox5: TCheckBox
    Left = 8
    Top = 136
    Width = 97
    Height = 17
    Caption = #1056#1077#1079#1077#1088#1074
    TabOrder = 7
  end
  object CheckBox6: TCheckBox
    Left = 8
    Top = 160
    Width = 97
    Height = 17
    Caption = #1056#1077#1079#1077#1088#1074
    TabOrder = 8
  end
  object CheckBox7: TCheckBox
    Left = 8
    Top = 184
    Width = 97
    Height = 17
    Caption = #1056#1077#1079#1077#1088#1074
    TabOrder = 9
  end
  object MyConnectDialog1: TMyConnectDialog
    DatabaseLabel = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
    PortLabel = #1055#1086#1088#1090
    SavePassword = True
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
    UsernameLabel = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
    PasswordLabel = #1055#1072#1088#1086#1083#1100
    ServerLabel = #1057#1077#1088#1074#1077#1088
    ConnectButton = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    CancelButton = #1054#1090#1084#1077#1085#1072
    LabelSet = lsCustom
    Left = 216
    Top = 16
  end
  object MyConnection1: TMyConnection
    ConnectDialog = MyConnectDialog1
    Left = 248
    Top = 16
  end
end
