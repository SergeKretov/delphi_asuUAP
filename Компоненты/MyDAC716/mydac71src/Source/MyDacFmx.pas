
{$I MyDac.inc}

{$DEFINE FMX}

unit MyDacFmx;

interface

uses
  Classes, SysUtils, DB, 
{$IFDEF MSWINDOWS}
  Winapi.Windows, System.Win.Registry,
{$ENDIF}
  MemUtils, CRParser, CRTypes, DBAccess, DacFmx, 
  MyConnectFormFmx, MyAccess, MyClasses, MyServices;

{$I MyDacGui.inc}

