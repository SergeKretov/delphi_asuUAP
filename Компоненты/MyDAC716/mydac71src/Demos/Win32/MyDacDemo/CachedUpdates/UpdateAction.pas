{$I DacDemo.inc}

unit UpdateAction;

interface

uses
  SysUtils, Classes, Db,
{$IFDEF CLR}
  System.ComponentModel,
{$ENDIF}
{$IFNDEF WIN32_64}
  Types,
{$ENDIF}
{$IFDEF FPC}
  LResources,
{$ENDIF}
{$IFDEF MSWINDOWS}
  Windows, Messages,
{$ENDIF}
  Graphics, Controls, Forms, Dialogs, Buttons,
  DBCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, ToolWin, ComCtrls;


type
  TUpdateActionForm = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lbField: TLabel;
    lbMessage: TLabel;
    Panel7: TPanel;
    rgAction: TRadioGroup;
    Panel4: TPanel;
    rgKind: TRadioGroup;
    Panel9: TPanel;
    Panel2: TPanel;
    btOk: TSpeedButton;
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UpdateActionForm: TUpdateActionForm;

implementation

{$IFNDEF FPC}
{$IFDEF CLR}
{$R *.nfm}
{$ELSE}
{$R *.dfm}
{$ENDIF}
{$ENDIF}

procedure TUpdateActionForm.btOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

{$IFDEF FPC}
initialization
  {$i UpdateAction.lrs}
{$ENDIF}

end.
