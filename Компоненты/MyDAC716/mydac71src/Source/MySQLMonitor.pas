
//////////////////////////////////////////////////
//  Data Access Components for MySQL
//  Copyright © 1998-2012 Devart. All right reserved.
//  SQLMonitor supports
//////////////////////////////////////////////////

{$IFNDEF CLR}

{$I MyDac.inc}

unit MySQLMonitor;
{$ENDIF}

interface
uses
{$IFDEF VER16P}
  Classes,
{$ENDIF}
  MyDacMonitor;

type
{ TMySQLMonitor }

{$IFDEF VER16P}
  [ComponentPlatformsAttribute(pidWin32 or pidWin64 or pidOSX32)]
{$ENDIF}
  TMySQLMonitor = class(TCustomMySQLMonitor);

implementation

end.
