inherited MyDumpEditorForm: TMyDumpEditorForm
  Left = 305
  Top = 251
  Height = 540
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'MyDumpForm'
  Constraints.MinHeight = 540
  Constraints.MinWidth = 511
  PixelsPerInch = 96
  TextHeight = 13
  inherited BtnPanel: TPanel
    Top = 465
    TabOrder = 1
  end
  inherited ClientPanel: TPanel
    Height = 465
    TabOrder = 0
    inherited meSQL: TMemo
      Height = 463
    end
    inherited LeftPanel: TPanel
      Height = 463
      inherited gbBackupOptions: TGroupBox
        Height = 385
        object Label1: TLabel [1]
          Left = 8
          Top = 68
          Width = 88
          Height = 13
          Caption = 'StoredProc Names'
        end
        object Label2: TLabel [2]
          Left = 24
          Top = 358
          Width = 54
          Height = 13
          Caption = 'Insert type'
        end
        inherited cbTableNames: TComboBox
          TabOrder = 0
        end
        inherited cbGenerateHeader: TCheckBox
          TabOrder = 2
        end
        object cbDatabase: TCheckBox
          Left = 8
          Top = 160
          Width = 185
          Height = 17
          Caption = 'Backup Database'
          TabOrder = 4
          OnClick = cbTablesClick
        end
        object cbUsers: TCheckBox
          Left = 8
          Top = 176
          Width = 193
          Height = 17
          Caption = 'Backup Users'
          TabOrder = 5
          OnClick = cbTablesClick
        end
        object cbTables: TCheckBox
          Left = 8
          Top = 208
          Width = 193
          Height = 17
          Caption = 'Backup Tables'
          TabOrder = 7
          OnClick = cbTablesClick
        end
        object cbData: TCheckBox
          Left = 8
          Top = 256
          Width = 201
          Height = 17
          Caption = 'Backup Data'
          TabOrder = 10
          OnClick = cbTablesClick
        end
        object cbAddDrop: TCheckBox
          Left = 8
          Top = 144
          Width = 193
          Height = 17
          Caption = 'Add DROP statements'
          TabOrder = 3
          OnClick = cbTablesClick
        end
        object cbAddLock: TCheckBox
          Left = 24
          Top = 272
          Width = 169
          Height = 17
          Caption = 'Add LOCK statements'
          TabOrder = 11
          OnClick = cbTablesClick
        end
        object cbUseExtSyntax: TCheckBox
          Left = 24
          Top = 304
          Width = 169
          Height = 17
          Caption = 'Use Extended Insert syntax'
          TabOrder = 13
          OnClick = cbTablesClick
        end
        object cbDisableKeys: TCheckBox
          Left = 24
          Top = 320
          Width = 169
          Height = 17
          Caption = 'Use DISABLE KEYS'
          TabOrder = 14
          OnClick = cbTablesClick
        end
        object cbDelayedIns: TCheckBox
          Left = 24
          Top = 336
          Width = 169
          Height = 17
          Caption = 'Use DELAYED Insert'
          TabOrder = 15
          OnClick = cbTablesClick
        end
        object cbStoredProcs: TCheckBox
          Left = 8
          Top = 192
          Width = 193
          Height = 17
          Caption = 'Backup StoredProcs'
          TabOrder = 6
          OnClick = cbTablesClick
        end
        object cbStoredProcNames: TComboBox
          Left = 8
          Top = 88
          Width = 201
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DropDownCount = 16
          ItemHeight = 13
          TabOrder = 1
          OnChange = cbStoredProcNamesChange
          OnDropDown = cbTableNamesDropDown
        end
        object cbCompleteInsert: TCheckBox
          Left = 24
          Top = 288
          Width = 169
          Height = 17
          Caption = 'Complete insert'
          TabOrder = 12
          OnClick = cbTablesClick
        end
        object cbViews: TCheckBox
          Left = 8
          Top = 224
          Width = 193
          Height = 17
          Caption = 'Backup Views'
          TabOrder = 8
          OnClick = cbTablesClick
        end
        object cbTriggers: TCheckBox
          Left = 8
          Top = 240
          Width = 193
          Height = 17
          Caption = 'Backup Triggers'
          TabOrder = 9
          OnClick = cbTablesClick
        end
        object cbInsertType: TComboBox
          Left = 88
          Top = 354
          Width = 121
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 16
        end
      end
      inherited btBackup: TBitBtn
        Top = 400
      end
      inherited btRestore: TBitBtn
        Top = 400
      end
      inherited btImport: TBitBtn
        Top = 431
      end
      inherited btExport: TBitBtn
        Top = 431
      end
    end
  end
end
