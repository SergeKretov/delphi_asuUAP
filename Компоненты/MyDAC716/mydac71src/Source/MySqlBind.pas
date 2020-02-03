
//////////////////////////////////////////////////
//  Data Access Components for MySQL
//  Copyright © 1998-2012 Devart. All right reserved.
//////////////////////////////////////////////////

{$IFNDEF CLR}
{$IFNDEF UNIDACPRO}
{$I MyDac.inc}
unit MySqlBind;
{$ENDIF}
{$ENDIF}

interface

uses
  CRTypes,
{$IFNDEF UNIDACPRO}
  MyCall, MySqlType;
{$ELSE}
  MyCallUni, MySqlTypeUni;
{$ENDIF}

type
  TMySqlBind = class
  public
    IsNull: boolean;
    Offset: integer;
    Length: integer;
    _Type: TMySqlFieldType;
    DbType: TMySqlType;
    Unicode: boolean;
  end;

  TMySqlBinds = class
  public
    Binds: array of TMySqlBind;
    Buffer: TValueArr;

    constructor Create(Len: integer);
    destructor Destroy; override;
  end;

implementation

{ TMySqlBinds }

constructor TMySqlBinds.Create(Len: integer);
var
  i: integer;
begin
  inherited Create;

  SetLength(Binds, Len);
  for i := 0 to Length(Binds) - 1 do
    Binds[i] := TMySqlBind.Create;
end;

destructor TMySqlBinds.Destroy;
var
  i: integer;
begin
  for i := 0 to Length(Binds) - 1 do
    Binds[i].Free;

  inherited;
end;

end.
