object Form6: TForm6
  Left = 191
  Top = 114
  BorderStyle = bsDialog
  Caption = #1055#1086#1080#1089#1082' '#1089#1091#1076#1077#1073#1085#1086#1075#1086' '#1091#1095#1072#1089#1090#1082#1072
  ClientHeight = 100
  ClientWidth = 265
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
    Top = 8
    Width = 30
    Height = 13
    Caption = #1043#1086#1088#1086#1076
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 32
    Height = 13
    Caption = #1059#1083#1080#1094#1072
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 48
    Top = 8
    Width = 209
    Height = 21
    KeyField = 'CITY_ID'
    ListField = 'CITY'
    ListSource = Form1.cityds
    TabOrder = 0
    OnClick = DBLookupComboBox1Click
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 48
    Top = 32
    Width = 209
    Height = 21
    KeyField = 'STREET_ID'
    ListField = 'STREET'
    ListSource = Form1.streetds
    TabOrder = 1
  end
  object Button1: TButton
    Left = 88
    Top = 64
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 2
    OnClick = Button1Click
  end
end
