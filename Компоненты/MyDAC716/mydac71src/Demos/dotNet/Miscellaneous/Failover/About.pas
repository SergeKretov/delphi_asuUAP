unit About;

interface

{$IFNDEF UNIX}
{$IFNDEF POSIX}
{$DEFINE MSWINDOWS}
{$ENDIF}
{$ENDIF}
uses
  Classes, SysUtils,
{$IFDEF FPC}
  LResources,
{$ENDIF}
{$IFNDEF MSWINDOWS}
  Windows, Menus, ImgList, StdCtrls, ComCtrls, Buttons, ExtCtrls, Graphics,
  Controls, Forms, Dialogs, ShellApi;
{$ENDIF}

type
  TAboutForm = class(TForm)
    OKBtn: TButton;
    Label3: TLabel;
    lbWeb: TLabel;
    lbDemo: TLabel;
    meAbout: TMemo;
    procedure lbWebClick(Sender: TObject);
    procedure lbWebMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 AboutForm: TAboutForm;

implementation

{$IFNDEF FPC}
{$IFDEF CLR}
{$R *.nfm}
{$ELSE}
{$R *.dfm}
{$ENDIF}
{$ENDIF}

procedure TAboutForm.lbWebMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lbWeb.Font.Color := $4080FF;
end;

procedure TAboutForm.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lbWeb.Font.Color := $FF0000;
end;

procedure TAboutForm.lbWebClick(Sender: TObject);
begin
{$IFDEF MSWINDOWS}
  ShellExecute(0, 'open', {$IFDEF FPC}PChar{$ENDIF}('www.devart.com'), '', '', SW_SHOW);
  lbWeb.Font.Color := $FF0000;  
{$ENDIF}
end;

{$IFDEF FPC}
initialization
  {$i About.lrs}
{$ENDIF}

end.
