
//////////////////////////////////////////////////
//  Data Access Components for MySQL
//  Copyright © 1998-2012 Devart. All right reserved.
//  SQLMonitor supports
//////////////////////////////////////////////////

{$IFNDEF CLR}

{$I MyDac.inc}

unit MyDacMonitor;
{$ENDIF}

interface
uses
{$IFDEF UNIX}
  Unix, Types,
{$ENDIF}
  SysUtils, Classes, DB, CRTypes, DBAccess, DASQLMonitor;

type
{ TCustomMySQLMonitor }

  TCustomMySQLMonitorClass = class of TCustomMySQLMonitor;

  TCustomMySQLMonitor = class(TCustomDASQLMonitor)
  private
  protected
    FObject: TObject;
    class function GetMonitor: TCustomDASQLMonitor; override;
    procedure SetMonitor; override;
    procedure InternalSQLExecute(Obj: TObject; const SQL: _string; Params: TDAParams; const Caption: _string; BeforeEvent: boolean; var MessageID: Cardinal); override;
    procedure OnExecuteNative(const SQL: _string);
    
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    class function GetCaption: string; override;
  published
    property Active;
    property Options;
    property DBMonitorOptions;
    property TraceFlags;
    property OnSQL;
  end;

implementation

uses
  MyAccess, MyClasses;

var
  MyMonitor: TCustomMySQLMonitor;

{ TCustomMySQLMonitor }

class function TCustomMySQLMonitor.GetMonitor: TCustomDASQLMonitor;
begin
  Result := MyMonitor;
end;

procedure TCustomMySQLMonitor.SetMonitor;
begin
  if MyMonitor = nil then
    MyMonitor := Self;
end;

class function TCustomMySQLMonitor.GetCaption: string;
begin
  Result := 'MyDAC';
end;

constructor TCustomMySQLMonitor.Create(AOwner: TComponent);
begin
  inherited;
end;

destructor TCustomMySQLMonitor.Destroy;
begin
  if MyMonitor = Self then
    MyMonitor := nil;

  inherited;
end;

procedure TCustomMySQLMonitor.InternalSQLExecute(Obj: TObject; const SQL: _string; Params: TDAParams; const Caption: _string; BeforeEvent: boolean; var MessageID: Cardinal);

  procedure ProcessMySQLCommand(MySQLCommand: TMySQLCommand);
  begin
    if MySQLCommand <> nil then
      if BeforeEvent then begin
        FObject := Obj;
        MySQLCommand.OnExecute := OnExecuteNative
      end
      else begin
        FObject := nil;
        MySQLCommand.OnExecute := nil;
      end;
  end;

var
  UpdateQuery: TCustomMyDataSet;

begin
  if Active and (tfMisc in TraceFlags) then begin
    if Obj is TMyCommand then
      ProcessMySQLCommand(TMyAccessUtils.FICommand(TMyCommand(Obj)))
    else
    if Obj is TCustomMyDataSet then begin
      ProcessMySQLCommand(TMyAccessUtils.FICommand(TCustomMyDataSet(Obj)));
      UpdateQuery := TCustomMyDataSet(TDBAccessUtils.GetUpdateQuery(TCustomMyDataSet(Obj)));
      if UpdateQuery <> nil then
        ProcessMySQLCommand(TMyAccessUtils.FICommand(UpdateQuery));
    end;
  end;
  inherited;
end;

procedure TCustomMySQLMonitor.OnExecuteNative(const SQL: _string);
begin
  if Assigned(FOnSQLEvent) then
    FOnSQLEvent(FObject, SQL, tfMisc);
end;


end.
