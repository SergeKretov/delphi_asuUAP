object cardpay: Tcardpay
  Left = 292
  Top = 101
  BorderStyle = bsDialog
  Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103' '#1087#1086' '#1082#1072#1088#1090#1077
  ClientHeight = 391
  ClientWidth = 497
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 497
    Height = 217
    Align = alTop
    DataSource = SQLData.CardsGoDS
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
        FieldName = 'date_usl'
        Title.Caption = #1044#1072#1090#1072' '#1091#1089#1083#1091#1075#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cardnumber'
        Title.Caption = #1053#1086#1084#1077#1088' '#1082#1072#1088#1090#1099
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Title.Caption = #1062#1077#1085#1072' '#1091#1089#1083#1091#1075#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'discont'
        Title.Caption = #1057#1082#1080#1076#1082#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agent_pay'
        Title.Caption = #1040#1075#1077#1085#1090#1089#1082#1080#1077
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 8
    Top = 224
    Width = 129
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 256
    Width = 129
    Height = 25
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 288
    Width = 129
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 320
    Width = 129
    Height = 25
    Caption = #1060#1080#1083#1100#1090#1088
    TabOrder = 4
    OnClick = Button4Click
  end
  object GroupBox1: TGroupBox
    Left = 144
    Top = 224
    Width = 345
    Height = 121
    Caption = #1044#1072#1085#1085#1099#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 74
      Height = 13
      Caption = #1044#1072#1090#1072' '#1091#1089#1083#1091#1075#1080
    end
    object Label2: TLabel
      Left = 8
      Top = 40
      Width = 80
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1082#1072#1088#1090#1099
    end
    object Label3: TLabel
      Left = 176
      Top = 16
      Width = 74
      Height = 13
      Caption = #1062#1077#1085#1072' '#1091#1089#1083#1091#1075#1080
    end
    object Label4: TLabel
      Left = 200
      Top = 40
      Width = 44
      Height = 13
      Caption = #1057#1082#1080#1076#1082#1072
    end
    object Label5: TLabel
      Left = 8
      Top = 64
      Width = 63
      Height = 13
      Caption = #1040#1075#1077#1085#1090#1089#1082#1080#1077
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 16
      Width = 73
      Height = 21
      DataField = 'date_usl'
      DataSource = SQLData.CardsGoDS
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 256
      Top = 16
      Width = 81
      Height = 21
      DataField = 'price'
      DataSource = SQLData.CardsGoDS
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 96
      Top = 40
      Width = 89
      Height = 21
      DataField = 'cardnumber'
      DataSource = SQLData.CardsGoDS
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 256
      Top = 40
      Width = 81
      Height = 21
      DataField = 'discont'
      DataSource = SQLData.CardsGoDS
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 88
      Top = 64
      Width = 97
      Height = 21
      DataField = 'agent_pay'
      DataSource = SQLData.CardsGoDS
      TabOrder = 4
    end
    object DBNavigator1: TDBNavigator
      Left = 56
      Top = 88
      Width = 230
      Height = 25
      DataSource = SQLData.CardsGoDS
      VisibleButtons = [nbPost, nbCancel]
      Flat = True
      TabOrder = 5
      TabStop = True
      OnClick = DBNavigator1Click
    end
  end
  object Button5: TButton
    Left = 416
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
    TabOrder = 5
    OnClick = Button5Click
  end
end
