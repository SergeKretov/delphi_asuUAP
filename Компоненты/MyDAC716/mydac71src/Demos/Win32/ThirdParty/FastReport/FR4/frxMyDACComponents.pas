{******************************************}
{                                          }
{             FastReport v4.0              }
{         MyDAC enduser components         }
{                                          }

// Created by: Devart
// E-mail: mydac@devart.com

{                                          }
{******************************************}

unit frxMYDACComponents;

interface

{$I frx.inc}
{$I MyDac.inc}

uses
  Windows, SysUtils, Classes, frxClass, frxCustomDB, DB, MyClasses, MyCall, MydacVcl, MyAccess,
  Graphics, frxDACComponents
{$IFDEF Delphi6}
, Variants
{$ENDIF}
 {$IFDEF QBUILDER}
, fqbClass
 {$ENDIF}
;

type
  TMYDACTable = class(TMyTable)
  protected
    procedure InitFieldDefs; override;
  end;

  TMYDACQuery = class(TMyQuery)
  protected
    procedure InitFieldDefs; override;
  end;

  TfrxMYDACComponents = class(TfrxDACComponents)
    FOldComponents: TfrxDACComponents;
    function GetDefaultDatabase: TMyConnection;
    procedure SetDefaultDatabase(Value: TMyConnection);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    
    function GetDescription: string; override;

    class function GetComponentsBitmap: TBitmap; override;
    class function GetComponentsName: string; override;
    class function ResourceName: string; override;
    class function GetDatabaseClass: TfrxDACDatabaseClass; override;
    class function GetTableClass: TfrxDACTableClass; override;
    class function GetQueryClass: TfrxDACQueryClass; override;
  published
    property DefaultDatabase: TMyConnection read GetDefaultDatabase write SetDefaultDatabase;  
  end;

  TfrxMYDACDatabase = class(TfrxDACDatabase)
  private
  protected
    function GetPort: integer;
    procedure SetPort(Value: integer);
    function GetDatabaseName: string; override;
    procedure SetDatabaseName(const Value: string); override;
{$IFDEF HAVE_DIRECT}
    function GetDirect: boolean;
    procedure SetDirect(Value: boolean);
{$ENDIF}
  public
    constructor Create(AOwner: TComponent); override;
    class function GetDescription: string; override;

  published
    property LoginPrompt;
    property DatabaseName;
    property Username;
    property Password;
    property Server;
    property Port: integer read GetPort write SetPort default MYSQL_PORT;
    property Connected;
    property Params;
{$IFDEF HAVE_DIRECT}
    property Direct: boolean read GetDirect write SetDirect default True;
{$ENDIF}
  end;

  TfrxMYDACTable = class(TfrxDACTable)
  private
    FTable: TMYDACTable;
  protected
    procedure SetDatabase(const Value: TfrxDACDatabase); override;
    procedure SetMaster(const Value: TDataSource); override;
    procedure SetMasterFields(const Value: string); override;
    procedure SetIndexFieldNames(const Value: string); override;
    function GetIndexFieldNames: string; override;
    function GetTableName: string; override;
    procedure SetTableName(const Value: string); override;
    function GetLocalMasterDetail: boolean;
    procedure SetLocalMasterDetail(const Value: boolean);
  public
    constructor Create(AOwner: TComponent); override;
    class function GetDescription: string; override;

    property Table: TMYDACTable read FTable;
  published
    property Database;
    Property TableName: string read GetTableName write setTableName;
    property LocalMasterDetail: boolean read GetLocalMasterDetail write SetLocalMasterDetail;
  end;

  TfrxMYDACQuery = class(TfrxDACQuery)
  protected
    procedure SetDatabase(const Value: TfrxDACDatabase); override;
    function GetLocalMasterDetail: boolean;
    procedure SetLocalMasterDetail(const Value: boolean);
  public
    constructor Create(AOwner: TComponent); override;
    class function GetDescription: string; override;
{$IFDEF QBUILDER}
    function QBEngine: TfqbEngine; override;
{$ENDIF}
  published
    property Database;
    property IndexName;
    property MasterFields;
    property LocalMasterDetail: boolean read GetLocalMasterDetail write SetLocalMasterDetail;
  end;

 {$IFDEF QBUILDER}
  TfrxEngineMYDAC = class(TfrxEngineDAC)
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure ReadFieldList(const ATableName: string; var AFieldList: TfqbFieldList); override;
  end;
 {$ENDIF}

var
  CatBmp: TBitmap;
  MyDACComponents: TfrxDACComponents;

implementation

{$R *.res}

uses
  frxMYDACRTTI,
{$IFNDEF NO_EDITORS}
  frxMYDACEditor,
{$ENDIF}
  frxDsgnIntf, frxRes;

{ TMYDACTable }

procedure TMYDACTable.InitFieldDefs;
begin
  if (TableName <> '') and (Assigned(Connection)) then
    inherited;
end;

{ TMYDACQuery }

procedure TMYDACQuery.InitFieldDefs;
begin
  if (SQL.Text <> '') and Assigned(Connection) then
    inherited;
end;

{ TfrxMYDACComponents }

constructor TfrxMYDACComponents.Create(AOwner: TComponent);
begin
  inherited;

  FOldComponents := MyDACComponents;
  MyDACComponents := Self;
end;

destructor TfrxMYDACComponents.Destroy;
begin
  if MyDACComponents = Self then
    MyDACComponents := FOldComponents;

  inherited;
end;

function TfrxMYDACComponents.GetDefaultDatabase: TMyConnection;
begin
  Result := TMyConnection(FDefaultDatabase);
end;

procedure TfrxMYDACComponents.SetDefaultDatabase(Value: TMyConnection);
begin
  FDefaultDatabase := Value;
end;

class function TfrxMYDACComponents.GetComponentsBitmap: TBitmap;
begin
  Result := CatBmp;
end;

class function TfrxMYDACComponents.GetComponentsName: string;
begin
  Result := 'MyDAC';
end;

class function TfrxMYDACComponents.GetDatabaseClass: TfrxDACDatabaseClass;
begin
  Result := TfrxMYDACDatabase;
end;

class function TfrxMYDACComponents.GetTableClass: TfrxDACTableClass;
begin
  Result := TfrxMYDACTable;
end;

class function TfrxMYDACComponents.GetQueryClass: TfrxDACQueryClass;
begin
  Result := TfrxMYDACQuery;
end;

class function TfrxMYDACComponents.ResourceName: string;
begin
  Result := 'FRXMYDACOBJECTS';
end;

function TfrxMYDACComponents.GetDescription: string;
begin
  Result := 'MyDAC';
end;

{ TfrxMYDACDatabase }

constructor TfrxMYDACDatabase.Create(AOwner: TComponent);
begin
  inherited;
  FDatabase := TMyConnection.Create(nil);
  Component := FDatabase;
end;

class function TfrxMYDACDatabase.GetDescription: string;
begin
  Result := 'MyDAC Database';
end;

function TfrxMYDACDatabase.GetPort: integer;
begin
  Result := TMyConnection(FDatabase).Port;
end;

procedure TfrxMYDACDatabase.SetPort(Value: integer);
begin
  TMyConnection(FDatabase).Port := Value;
end;

function TfrxMYDACDatabase.GetDatabaseName: string;
begin
  Result := TMyConnection(FDatabase).Database;
end;

procedure TfrxMYDACDatabase.SetDatabaseName(const Value: string);
begin
  TMyConnection(FDatabase).Database := Value;
end;

{$IFDEF HAVE_DIRECT}
function TfrxMYDACDatabase.GetDirect: boolean;
begin
  Result := TMyConnection(FDatabase).Options.Direct;
end;

procedure TfrxMYDACDatabase.SetDirect(Value: boolean);
begin
  TMyConnection(FDatabase).Options.Direct := Value;
end;
{$ENDIF}

{ TfrxMYDACTable }

constructor TfrxMYDACTable.Create(AOwner: TComponent);
begin
  FTable := TMYDACTable.Create(nil);
  DataSet := FTable;
  SetDatabase(nil);
  inherited;
end;

class function TfrxMYDACTable.GetDescription: string;
begin
  Result := 'MyDAC Table';
end;

procedure TfrxMYDACTable.SetDatabase(const Value: TfrxDACDatabase);
begin
  inherited;
  if Value <> nil then
    FTable.Connection := TMyConnection(Value.Database)
  else
    if MyDACComponents <> nil then
      FTable.Connection := TMyConnection(MyDACComponents.DefaultDatabase)
    else
      FTable.Connection := nil;
end;

function TfrxMYDACTable.GetIndexFieldNames: string;
begin
  Result := FTable.IndexFieldNames;
end;

function TfrxMYDACTable.GetTableName: string;
begin
  Result := FTable.TableName;
end;

procedure TfrxMYDACTable.SetIndexFieldNames(const Value: string);
begin
  FTable.IndexFieldNames := Value;
end;

procedure TfrxMYDACTable.SetTableName(const Value: string);
begin
  FTable.TableName := Value;
  if Assigned(FTable.Connection) then
    FTable.InitFieldDefs;
end;

procedure TfrxMYDACTable.SetMaster(const Value: TDataSource);
begin
  FTable.MasterSource := Value;
end;

procedure TfrxMYDACTable.SetMasterFields(const Value: string);
var
  MasterNames: string;
  DetailNames: string;
begin
  GetMasterDetailNames(MasterFields, MasterNames, DetailNames);
  FTable.MasterFields := MasterNames;
  FTable.DetailFields := DetailNames;
end;

function TfrxMYDACTable.GetLocalMasterDetail: boolean;
begin
  Result := FTable.Options.LocalMasterDetail; 
end;

procedure TfrxMYDACTable.SetLocalMasterDetail(const Value: boolean);
begin
  FTable.Options.LocalMasterDetail := Value;
end;

{ TfrxMYDACQuery }

constructor TfrxMYDACQuery.Create(AOwner: TComponent);
begin
  FQuery := TMyDACQuery.Create(nil);
  inherited Create(AOwner);
end;

class function TfrxMYDACQuery.GetDescription: string;
begin
  Result := 'MyDAC Query';
end;

procedure TfrxMYDACQuery.SetDatabase(const Value: TfrxDACDatabase);
begin
  inherited;
  
  if Value <> nil then
    FQuery.Connection := Value.Database
  else
    if MyDACComponents <> nil then
      FQuery.Connection := TMyConnection(MyDACComponents.DefaultDatabase)
    else
      FQuery.Connection := nil;
end;

function TfrxMYDACQuery.GetLocalMasterDetail: boolean;
begin
  Result := FQuery.Options.LocalMasterDetail;
end;

procedure TfrxMYDACQuery.SetLocalMasterDetail(const Value: boolean);
begin
  FQuery.Options.LocalMasterDetail := Value;
end;

 {$IFDEF QBUILDER}
function TfrxMYDACQuery.QBEngine: TfqbEngine;
begin
  Result := TfrxEngineMYDAC.Create(nil);
  TfrxEngineMYDAC(Result).FQuery.Connection := TCustomMyConnection(FQuery.Connection);
end;
 {$ENDIF}

 {$IFDEF QBUILDER}

{ TfrxEngineMyDAC }

constructor TfrxEngineMYDAC.Create(AOwner: TComponent);
begin
  inherited;
  FQuery := TMYDACQuery.Create(Self);
end;

destructor TfrxEngineMYDAC.Destroy;
begin
  FQuery.Free;
  inherited;
end;

procedure TfrxEngineMYDAC.ReadFieldList(const ATableName: string;
  var AFieldList: TfqbFieldList);
var
  TempTable: TMYDACTable;
  Fields: TFieldDefs;
  i: Integer;
  tmpField: TfqbField;
begin
  AFieldList.Clear;
  TempTable := TMYDACTable.Create(Self);
  try
    TempTable.Connection := TCustomMyConnection(FQuery.Connection);
    TempTable.TableName := ATableName;
    Fields := TempTable.FieldDefs;
    try
      TempTable.Active := True;
      tmpField:= TfqbField(AFieldList.Add);
      tmpField.FieldName := '*';
      for i := 0 to Fields.Count - 1 do begin
        tmpField := TfqbField(AFieldList.Add);
        tmpField.FieldName := Fields.Items[i].Name;
        tmpField.FieldType := Ord(Fields.Items[i].DataType)
      end;
    except
    end;
  finally
    TempTable.Free;
  end;
end;

 {$ENDIF}

initialization
  CatBmp := TBitmap.Create;
  CatBmp.LoadFromResourceName(hInstance, TfrxMyDACComponents.ResourceName);
  RegisterDacComponents(TfrxMYDACComponents);

finalization
  UnRegisterDacComponents(TfrxMYDACComponents);
  CatBmp.Free;

end.



