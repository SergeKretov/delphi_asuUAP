
//////////////////////////////////////////////////
//  Data Access Components for MySQL
//  Copyright � 1998-2012 Devart. All right reserved.
//////////////////////////////////////////////////

{$IFNDEF CLR}

{$I MyDac.inc}

unit MyNamesEditor;
{$ENDIF}

interface

uses
{$IFDEF MSWINDOWS}
  Windows, Messages,
{$ENDIF}
  SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids, DBCtrls, Buttons, ExtCtrls, StdCtrls,
{$IFDEF FPC}
  LResources,
{$ENDIF}
  CRTypes, CRFunctions, DBAccess, MyClasses, DADualListEditor;

type
  TNamesMode = (nmTables, nmSProc);

  TMyNamesForm = class(TDADualListEditorForm)
  protected
    FMode: TNamesMode;
    FConnection: TCustomDAConnection;
    FNames: _string;

    function GetComponent: TComponent; override;
    procedure SetComponent(Value: TComponent); override;

    procedure DoInit; override;
    procedure DoSave; override;

    function GetSrcLabelCaption: string; override;
    procedure GetSrcListItems(Items: _TStrings); override;
    function GetDestLabelCaption: string; override;
    procedure GetDstListItems(Items: _TStrings); override;
  public
    { Public declarations }
    property Mode: TNamesMode read FMode write FMode;
    property Connection: TCustomDAConnection read FConnection write FConnection;
    property Names: _string read FNames write FNames;

  end;

implementation

{$IFNDEF FPC}
{$IFDEF IDE}
{$R *.dfm}
{$ELSE}
{$R MyNamesEditor.dfm}
{$ENDIF}
{$ELSE}
{$R *.lfm}
{$ENDIF}

function TMyNamesForm.GetComponent: TComponent;
begin
  Result := FConnection;
end;

procedure TMyNamesForm.SetComponent(Value: TComponent);
begin
  FConnection := Value as TCustomDAConnection;
end;

procedure TMyNamesForm.DoInit;
begin
  if Connection = nil then
    Abort;

  inherited;
end;

procedure TMyNamesForm.DoSave;
var
  List: _TStringList;
begin
  List := _TStringList.Create;
  try
    AssignStrings(DstList.Items, List);
    Names := MySQLInfo.NamesFromList(List);
  finally
    List.Free;
  end;
end;

function TMyNamesForm.GetDestLabelCaption: string;
begin
  case Mode of
    nmSProc:
      Result := 'Selected stored procedures';
    nmTables:
      Result := 'Selected tables';
    else
      Assert(False);
  end;
end;

procedure TMyNamesForm.GetDstListItems(Items: _TStrings);
begin
  MySQLInfo.NamesToList(Names, Items);
end;

function TMyNamesForm.GetSrcLabelCaption: string;
begin
  case Mode of
    nmSProc:
      Result := 'Available stored procedures';
    nmTables:
      Result := 'Available tables';
    else
      Assert(False);
  end;
end;

procedure TMyNamesForm.GetSrcListItems(Items: _TStrings);
begin
  case Mode of
    nmSProc:
      Connection.GetStoredProcNames(Items);
    nmTables:
      Connection.GetTableNames(Items);
    else
      Assert(False);
  end;
end;

end.
