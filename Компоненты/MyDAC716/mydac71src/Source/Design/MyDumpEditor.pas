
//////////////////////////////////////////////////
//  Data Access Components for MySQL
//  Copyright © 1998-2012 Devart. All right reserved.
//////////////////////////////////////////////////

{$IFNDEF CLR}

{$I MyDac.inc}

unit MyDumpEditor;
{$ENDIF}

interface

uses
{$IFDEF MSWINDOWS}
  Windows, Messages, Registry,
{$ENDIF}
  Dialogs, Controls, StdCtrls, Buttons, Graphics, ExtCtrls,
  Classes, SysUtils, Forms, DacVcl, ComCtrls, Grids, DBGrids, DBCtrls,
{$IFDEF FPC}
  LResources,
{$ENDIF}
  DBAccess, CREditor, DB, MyAccess, MyDump, {$IFDEF FPC}MemDataSet{$ELSE}MemDS{$ENDIF},
  DADesignUtils, DADumpEditor;

type
  TMyDumpEditorForm = class(TDADumpEditorForm)
    cbDatabase: TCheckBox;
    cbUsers: TCheckBox;
    cbTables: TCheckBox;
    cbData: TCheckBox;
    cbAddDrop: TCheckBox;
    cbAddLock: TCheckBox;
    cbCompleteInsert: TCheckBox;
    cbUseExtSyntax: TCheckBox;
    cbDisableKeys: TCheckBox;
    cbDelayedIns: TCheckBox;
    cbStoredProcs: TCheckBox;
    cbStoredProcNames: TComboBox;
    Label1: TLabel;
    cbViews: TCheckBox;
    cbTriggers: TCheckBox;
    Label2: TLabel;
    cbInsertType: TComboBox;
    procedure cbTablesClick(Sender: TObject);
    procedure cbStoredProcNamesChange(Sender: TObject);
  private
    function GetLocalDump: TMyDump;
    procedure SetLocalDump(const Value: TMyDump);
  protected
    procedure EditTableNames(Sender: TObject); override;
    procedure DoInit; override;

    procedure GetButtons; override;
    procedure SetButtons; override;

    property LocalDump: TMyDump read GetLocalDump write SetLocalDump;
  end;

implementation

{$IFNDEF FPC}
{$IFDEF IDE}
{$R *.dfm}
{$ELSE}
{$R MyDumpEditor.dfm}
{$ENDIF}
{$ELSE}
{$R *.lfm}
{$ENDIF}

uses
  MyClasses, DAConsts, MyConsts, MyNamesEditor;

function TMyDumpEditorForm.GetLocalDump: TMyDump;
begin
  Result := TMyDump(FLocalDump);
end;

procedure TMyDumpEditorForm.SetLocalDump(const Value: TMyDump);
begin
  FLocalDump := Value;
end;

procedure TMyDumpEditorForm.DoInit;
begin
  inherited;

  cbInsertType.Clear;
  cbInsertType.Items.Add('INSERT');
  cbInsertType.Items.Add('INSERT IGNORE');
  cbInsertType.Items.Add('REPLACE INTO');

  LocalDump := TMyDump.Create(Self);
  LocalDump.Assign(Dump);

  SetMemoText(meSQL, FLocalDump.SQL.Text);

  cbDatabase.Checked := doDatabase in LocalDump.Objects;
  cbUsers.Checked := doUsers in LocalDump.Objects;
  cbStoredProcs.Checked := doStoredProcs in LocalDump.Objects;
  cbTables.Checked := doTables in LocalDump.Objects;
  cbViews.Checked := doViews in LocalDump.Objects;
  cbTriggers.Checked := doTriggers in LocalDump.Objects;
  cbData.Checked := doData in LocalDump.Objects;

  cbTableNames.Text := LocalDump.TableNames;
  cbStoredProcNames.Text := LocalDump.StoredProcNames;

  cbAddDrop.Checked := LocalDump.Options.AddDrop;
  cbAddLock.Checked := LocalDump.Options.AddLock;
  cbCompleteInsert.Checked := LocalDump.Options.CompleteInsert;
  cbDelayedIns.Checked := LocalDump.Options.UseDelayedIns;
  cbDisableKeys.Checked := LocalDump.Options.DisableKeys;
  cbUseExtSyntax.Checked := LocalDump.Options.UseExtSyntax;
  cbGenerateHeader.Checked := LocalDump.Options.GenerateHeader;
  cbInsertType.ItemIndex := Integer(LocalDump.Options.InsertType);
{$IFNDEF MSWINDOWS}
  btBackup.SetFocus;
{$ENDIF}
end;

procedure TMyDumpEditorForm.EditTableNames(Sender: TObject);
var
  SP: boolean;
begin
  if FLocalDump.Connection = nil then
    DatabaseError(SConnectionNotDefined);

  SP := Sender = cbStoredProcNames;
  with TMyNamesForm.Create(nil, DADesignUtilsClass) do
    try
      Connection := FLocalDump.Connection;
      if SP then begin
        Mode := nmSProc;
        Names := LocalDump.StoredProcNames
      end
      else begin
        Mode := nmTables;
        Names := LocalDump.TableNames;
      end;
      ShowModal;
      if ModalResult = mrOk then
        if SP then
          LocalDump.StoredProcNames := Names
        else
          LocalDump.TableNames := Names;
    finally
      Free;
    end;

  cbTableNames.Text := LocalDump.TableNames;
  cbTableNames.Update;
  cbStoredProcNames.Text := LocalDump.StoredProcNames;
  cbStoredProcNames.Update;
end;

procedure TMyDumpEditorForm.GetButtons;
begin
  inherited;
  LocalDump.Objects := [];
  if cbDatabase.Checked then
    LocalDump.Objects := LocalDump.Objects + [doDatabase];
  if cbUsers.Checked then
    LocalDump.Objects := LocalDump.Objects + [doUsers];
  if cbStoredProcs.Checked then
    LocalDump.Objects := LocalDump.Objects + [doStoredProcs];
  if cbTables.Checked then
    LocalDump.Objects := LocalDump.Objects + [doTables];
  if cbViews.Checked then
    LocalDump.Objects := LocalDump.Objects + [doViews];
  if cbTriggers.Checked then
    LocalDump.Objects := LocalDump.Objects + [doTriggers];
  if cbData.Checked then
    LocalDump.Objects := LocalDump.Objects + [doData];

  LocalDump.TableNames := cbTableNames.Text;
  LocalDump.StoredProcNames := cbStoredProcNames.Text;

  LocalDump.Options.AddDrop := cbAddDrop.Checked;
  LocalDump.Options.AddLock := cbAddLock.Checked;
  LocalDump.Options.CompleteInsert := cbCompleteInsert.Checked;
  LocalDump.Options.DisableKeys := cbDisableKeys.Checked;
  LocalDump.Options.UseDelayedIns := cbDelayedIns.Checked;
  LocalDump.Options.UseExtSyntax := cbUseExtSyntax.Checked;
  LocalDump.Options.GenerateHeader := cbGenerateHeader.Checked;
  LocalDump.Options.InsertType := TMyInsertType(cbInsertType.ItemIndex);
end;

procedure TMyDumpEditorForm.SetButtons;
begin
  inherited;
  cbAddLock.Enabled := cbData.Checked;
  cbCompleteInsert.Enabled := cbData.Checked;
  cbDisableKeys.Enabled := cbData.Checked;
  cbDelayedIns.Enabled := cbData.Checked;
  cbUseExtSyntax.Enabled := cbData.Checked;
  cbInsertType.Enabled := cbData.Checked;

  btBackup.Enabled := cbDatabase.Checked or cbUsers.Checked or cbStoredProcs.Checked or
    cbTables.Checked or cbViews.Checked or cbTriggers.Checked or cbData.Checked;
  btRestore.Enabled := Length(Trim(GetMemoText(meSQL))) > 0;
end;

procedure TMyDumpEditorForm.cbTablesClick(Sender: TObject);
begin
  SetButtons;
end;

procedure TMyDumpEditorForm.cbStoredProcNamesChange(Sender: TObject);
begin
  LocalDump.StoredProcNames := cbStoredProcNames.Text;
end;

end.
