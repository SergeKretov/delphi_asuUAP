
//////////////////////////////////////////////////
//  Data Access Components for MySQL
//  Copyright © 1998-2012 Devart. All right reserved.
//  MyDAC registration
//////////////////////////////////////////////////

{$IFNDEF CLR}

{$I MyDac.inc}

unit MyDacReg;
{$ENDIF}

interface

procedure Register;

implementation

uses                                  
  Classes, DBAccess, DacReg,
{$IFDEF FPC}
  LResources,
{$ENDIF}
  MyAccess, MyScript{$IFNDEF STD}, MyLoader, MyDump, MyBackup, MyServerControl,
  MyEmbConnection{$ENDIF},
{$IFDEF CLR}
  MySQLMonitor,
{$ENDIF}
{$IFDEF MSWINDOWS}
{$IFNDEF STD}
  MyBuilderClient,
{$ENDIF}
{$ENDIF}
  MyDacVcl
  {$IFDEF VER16P}, MyDacFmx{$ENDIF};

{$IFNDEF FPC}
{$IFNDEF CLR}
  {$IFDEF VER9}
    {$R MyDesign9.res}
  {$ELSE}
    {$R MyDesign.res}
  {$ENDIF}
  {$IFDEF VER10P}
    {$R MyDesign10p.res}
  {$ENDIF}
{$ENDIF}
{$ENDIF}

procedure Register;
begin
{$IFNDEF STD}
  RegisterCRBatchMove;
{$ENDIF}

  RegisterComponents('MySQL Access', [TMyConnection]);
  RegisterComponents('MySQL Access', [TMyQuery]);
  RegisterComponents('MySQL Access', [TMyTable]);
  RegisterComponents('MySQL Access', [TMyStoredProc]);
  RegisterComponents('MySQL Access', [TMyCommand]);
  RegisterComponents('MySQL Access', [TMyScript]);
  RegisterComponents('MySQL Access', [TMyUpdateSQL]);
  RegisterComponents('MySQL Access', [TMyDataSource]);

{$IFNDEF STD}
  RegisterComponents('MySQL Access', [TMyLoader]);
  RegisterComponents('MySQL Access', [TMyDump]);
  RegisterComponents('MySQL Access', [TMyBackup]);
  RegisterComponents('MySQL Access', [TMyServerControl]);
  RegisterComponents('MySQL Access', [TMyEmbConnection]);
{$IFDEF MSWINDOWS}
  RegisterComponents('MySQL Access', [TMyBuilder]);
{$ENDIF}
{$ENDIF}
  RegisterComponents('MySQL Access', [TMyMetaData]);

{$IFDEF CLR}
  RegisterComponents('MySQL Access', [TMySQLMonitor]);
//  RegisterComponents('MySQL Access', [MyDataAdapter]); - now in Devart.MyDac.DataReg.pas
{$ENDIF}
  RegisterComponents('MySQL Access', [TMyConnectDialog]);
{$IFDEF VER16P}
  RegisterComponents('MySQL Access', [TMyConnectDialogFmx]);
{$ENDIF}
end;

{$IFDEF FPC}
initialization
  {$I MyDesign.lrs}
{$ENDIF}

end.

