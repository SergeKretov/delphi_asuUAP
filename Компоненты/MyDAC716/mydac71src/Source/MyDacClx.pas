
{$I MyDac.inc}

unit MyDacClx;

interface

uses
{$IFDEF MSWINDOWS}
  Windows, Registry,
{$ENDIF}
  SysUtils, Classes, DacClx, DB, CRTypes, DBAccess, MyAccess, MyConnectForm;

{$I MyDacGui.inc}

