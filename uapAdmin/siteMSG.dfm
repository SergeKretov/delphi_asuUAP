object sitesmsg: Tsitesmsg
  Left = 192
  Top = 130
  BorderStyle = bsDialog
  Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1103' '#1089' '#1089#1072#1081#1090#1086#1074' '#1043#1050' '#1053#1054#1042#1040#1058#1054#1056
  ClientHeight = 394
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
  PixelsPerInch = 96
  TextHeight = 13
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 912
    Height = 353
    Align = alTop
    TabOrder = 0
    Tabs.Strings = (
      #1070#1040' '#1055#1056#1040#1042#1054
      #1040#1053' '#1040#1051#1068#1058#1040#1048#1056
      #1046#1050' BestWay'
      #1041#1040' '#1057#1058#1040#1058#1059#1057)
    TabIndex = 3
    OnChange = TabControl1Change
    object DBText1: TDBText
      Left = 8
      Top = 216
      Width = 897
      Height = 89
      DataField = 'msg'
      DataSource = SQLData.StatusMSGDS
      WordWrap = True
    end
    object Label1: TLabel
      Left = 8
      Top = 200
      Width = 90
      Height = 13
      Caption = #1058#1077#1082#1089#1090' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
    end
    object DBGrid1: TDBGrid
      Left = 4
      Top = 24
      Width = 904
      Height = 169
      Align = alTop
      DataSource = SQLData.StatusMSGDS
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
          FieldName = 'rd'
          Title.Caption = #1055#1063
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Caption = #1048#1084#1103
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mail'
          Title.Caption = 'e-mail'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'subject'
          Title.Caption = #1058#1077#1084#1072
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'msg'
          Visible = False
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 312
      Width = 234
      Height = 25
      DataSource = SQLData.StatusMSGDS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 1
      TabStop = True
    end
    object DBCheckBox1: TDBCheckBox
      Left = 256
      Top = 312
      Width = 169
      Height = 17
      Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1077' '#1087#1088#1086#1095#1080#1090#1072#1085#1086
      DataField = 'rd'
      DataSource = SQLData.StatusMSGDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object Button1: TButton
    Left = 832
    Top = 360
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
end
