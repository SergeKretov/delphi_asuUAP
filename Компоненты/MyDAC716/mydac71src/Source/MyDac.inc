
//////////////////////////////////////////////////
//  Data Access Components for MySQL
//  Copyright © 1998-2012 Devart. All right reserved.
//////////////////////////////////////////////////

// Type of build

{$I Dac.inc}

{$DEFINE HAVE_DIRECT}

{$IFDEF MSWINDOWS}
  {$DEFINE MYBUILDER}
{$ENDIF}

{$IFDEF WIN32}
{$IFNDEF FPC}
  {$DEFINE EMBLOG}
{$ENDIF}
{$ENDIF}
