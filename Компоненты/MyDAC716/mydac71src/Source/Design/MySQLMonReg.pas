
//////////////////////////////////////////////////
//  Data Access Components for MySQL
//  Copyright © 1998-2012 Devart. All right reserved.
//  MyDAC registration
//////////////////////////////////////////////////

{$IFNDEF CLR}

{$I MyDac.inc}

unit MySQLMonReg;
{$ENDIF}

interface

procedure Register;

implementation

uses
  Classes, MySQLMonitor,
  {$IFNDEF STD}MyBuilderClient, {$ENDIF}MyDacVcl;

// {$R MyDesign.res}
// {$IFDEF VER10P}
//   {$R MyDesign10P.res}
// {$ENDIF}

procedure Register;
begin
  RegisterComponents('MySQL Access', [TMySQLMonitor]);
end;

end.

