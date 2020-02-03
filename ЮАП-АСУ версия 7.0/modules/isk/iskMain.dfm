object Form1: TForm1
  Left = 191
  Top = 114
  Width = 1069
  Height = 450
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1050#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088' '#1080#1089#1082#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 313
    Height = 283
    Align = alLeft
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 145
      Height = 25
      Caption = #1056#1072#1073#1086#1095#1072#1103' '#1087#1072#1087#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 160
      Top = 8
      Width = 145
      Height = 25
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1096#1072#1073#1083#1086#1085' -->'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 283
    Width = 1061
    Height = 121
    Align = alBottom
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 312
      Top = 8
      Width = 745
      Height = 105
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      TabOrder = 0
      Visible = False
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 19
        Height = 13
        Caption = #1058#1080#1087
      end
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 37
        Height = 13
        Caption = #1055#1086#1076#1090#1080#1087
      end
      object Label3: TLabel
        Left = 8
        Top = 72
        Width = 76
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      end
      object Label4: TLabel
        Left = 304
        Top = 48
        Width = 29
        Height = 13
        Caption = #1060#1072#1081#1083
      end
      object SpeedButton1: TSpeedButton
        Left = 712
        Top = 16
        Width = 23
        Height = 22
        Caption = '#'
        OnClick = SpeedButton1Click
      end
      object DBNavigator1: TDBNavigator
        Left = 496
        Top = 40
        Width = 240
        Height = 25
        DataSource = DocsDS
        TabOrder = 4
        TabStop = True
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 24
        Width = 121
        Height = 21
        DataField = 'TYPE'
        DataSource = DocsDS
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 48
        Width = 193
        Height = 21
        DataField = 'SOTYPE'
        DataSource = DocsDS
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 88
        Top = 72
        Width = 649
        Height = 21
        DataField = 'NAME'
        DataSource = DocsDS
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 336
        Top = 48
        Width = 121
        Height = 21
        DataField = 'FILE'
        DataSource = DocsDS
        TabOrder = 3
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 313
    Top = 0
    Width = 748
    Height = 283
    Align = alClient
    DataSource = DocsDS
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'TYPE'
        Title.Caption = #1058#1080#1087
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOTYPE'
        Title.Caption = #1055#1086#1076#1090#1080#1087
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 600
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FILE'
        Title.Caption = #1060#1072#1081#1083
        Width = 60
        Visible = True
      end>
  end
  object MainMenu1: TMainMenu
    Left = 832
    Top = 32
    object N1: TMenuItem
      Caption = #1048#1089#1082#1080
      object N5: TMenuItem
        Caption = #1059#1090#1088#1072#1090#1072' '#1087#1088#1072#1074#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1103' '#1046#1055
        Enabled = False
        object N6: TMenuItem
          Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1086#1089#1090#1100
        end
        object N7: TMenuItem
          Caption = #1057#1086#1094#1080#1072#1083#1100#1085#1099#1081' '#1085#1072#1081#1084
        end
      end
      object N8: TMenuItem
        Caption = #1056#1072#1089#1090#1086#1088#1078#1077#1085#1080#1077' '#1073#1088#1072#1082#1072
        Enabled = False
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #1042#1079#1099#1089#1082#1072#1085#1080#1077' '#1072#1083#1080#1084#1077#1085#1090#1086#1074
        Enabled = False
      end
      object N10: TMenuItem
        Caption = #1042#1079#1099#1089#1082#1072#1085#1080#1077' '#1076#1086#1083#1075#1072
        Enabled = False
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object N17: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N17Click
      end
    end
    object N2: TMenuItem
      Caption = #1047#1072#1103#1074#1083#1077#1085#1080#1103
      Enabled = False
      object N11: TMenuItem
        Caption = #1054#1090#1084#1077#1085#1072' '#1057#1055
      end
      object N12: TMenuItem
        Caption = #1054#1090#1084#1077#1085#1072' '#1047#1056
      end
      object N13: TMenuItem
        Caption = #1057#1091#1076#1077#1073#1085#1099#1081' '#1087#1088#1080#1082#1072#1079' '#1072#1083#1080#1084#1077#1085#1090#1099
      end
      object N14: TMenuItem
        Caption = #1057#1091#1076#1077#1073#1085#1099#1081' '#1087#1088#1080#1082#1072#1079' '#1076#1086#1083#1075#1080
      end
    end
    object N3: TMenuItem
      Caption = #1061#1086#1076#1072#1090#1072#1081#1089#1090#1074#1072
      Enabled = False
      object N15: TMenuItem
        Caption = #1059#1095#1072#1089#1090#1080#1077' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1103
      end
    end
    object N4: TMenuItem
      Caption = '?'
      OnClick = N4Click
    end
  end
  object Docs: TTable
    TableName = 'base\docs.dbf'
    TableType = ttDBase
    Left = 800
    Top = 64
  end
  object DocsDS: TDataSource
    DataSet = Docs
    Left = 832
    Top = 64
  end
  object OpenDialog1: TOpenDialog
    Left = 832
    Top = 96
  end
end
