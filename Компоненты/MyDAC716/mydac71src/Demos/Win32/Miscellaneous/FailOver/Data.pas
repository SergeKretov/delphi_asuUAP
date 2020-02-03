unit Data;

interface

{$IFNDEF UNIX}
{$IFNDEF POSIX}
{$DEFINE MSWINDOWS}
{$ENDIF}
{$ENDIF}
uses
  Classes, SysUtils,
{$IFDEF MSWINDOWS}
  Windows, 
{$ENDIF}
  Menus, ImgList, StdCtrls, ComCtrls, Buttons, ExtCtrls, Graphics,
  Controls, Forms, Dialogs,
{$IFDEF FPC}
  LResources,
{$ENDIF}
  DB, MemData, DBAccess, {$IFDEF FPC}MemDataSet{$ELSE}MemDS{$ENDIF},
  MyAccess, MyDacVcl, DAScript, MyScript;

type
  TDM = class(TDataModule)
    Connection: TMyConnection;
    quDetail: TMyQuery;
    quMaster: TMyQuery;
    dsMaster: TDataSource;
    dsDetail: TDataSource;
    scCreate: TMyScript;
    scDrop: TMyScript;
  private
  public
    IgnoreScriptErrors: boolean;
    procedure KillSession;
    function InTransaction: boolean;
    procedure StartTransaction;
    procedure RollbackTransaction;
    procedure CommitTransaction;
  end;

var
  DM: TDM;

implementation

{$IFNDEF FPC}
{$IFDEF CLR}
{$R *.nfm}
{$ELSE}
{$R *.dfm}
{$ENDIF}
{$ENDIF}

uses
  Main;

{ TDM }

procedure TDM.KillSession;
var
  KillConnection: TMyConnection;
begin
  KillConnection := TMyConnection.Create(nil);
  try
    KillConnection.Server := Connection.Server;
    KillConnection.Username := Connection.Username;
    KillConnection.Password := Connection.Password;
    KillConnection.Database := Connection.Database;
    KillConnection.Port := Connection.Port;

    KillConnection.LoginPrompt := False;

    KillConnection.ExecSQL('KILL ' + IntToStr(Connection.ThreadId), []);
    Sleep(500); // wait until session is killed
  finally
    KillConnection.Free;
  end;
end;

function TDM.InTransaction: boolean;
begin
  Result := Connection.InTransaction;
end;

procedure TDM.StartTransaction;
begin
  Connection.StartTransaction;
end;

procedure TDM.CommitTransaction;
begin
  Connection.Commit;
end;

procedure TDM.RollbackTransaction;
begin
  Connection.Rollback;
end;

{$IFDEF FPC}
initialization
  {$i Data.lrs}
{$ENDIF}

end.
