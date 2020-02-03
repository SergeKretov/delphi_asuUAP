
//////////////////////////////////////////////////
//  Data Access Components for MySQL
//  Copyright © 1998-2012 Devart. All right reserved.
//  MyDAC About Window
//////////////////////////////////////////////////

{$IFNDEF CLR}

{$I MyDac.inc}

unit MyAbout;
{$ENDIF}
interface
uses
{$IFDEF MSWINDOWS}
  Windows,
{$ENDIF}
  Graphics, Forms, Controls, StdCtrls, Buttons, ExtCtrls, HelpUtils,
{$IFNDEF CLR}
  {$IFNDEF FPC}Jpeg,{$ENDIF}
{$ENDIF}
{$IFDEF DBTOOLS}
  MyDesignUtils, DBToolsClient,
{$ENDIF}
  Classes, SysUtils;

type
  TMydacAboutForm = class(TForm)
    OKBtn: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    lbVersion: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbMail: TLabel;
    lbWeb: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Label8: TLabel;
    lblDBMonitorVer: TLabel;
    Label7: TLabel;
    lbMyBuilderVer: TLabel;
    lbForum: TLabel;
    Label10: TLabel;
    lbIDE: TLabel;
    lbEdition: TLabel;
    Bevel2: TBevel;
    lblDeveloperTools: TLabel;
    lblDeveloperToolsVer: TLabel;
    procedure FormShow(Sender: TObject);
    procedure lbWebClick(Sender: TObject);
    procedure lbMailClick(Sender: TObject);
    procedure lbWebMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbMailMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbForumClick(Sender: TObject);
    procedure lbForumMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowAbout;

implementation

{$IFDEF MSWINDOWS}
uses
  DBMonitorClient,
{$IFNDEF STD}
{$IFDEF MYBUILDER}
  MyBuilderClient,
{$ENDIF}
{$ENDIF}
  ShellApi;
{$ENDIF}

{$I MyDacVer.inc}

{$IFDEF IDE}
{$R *.dfm}
{$ELSE}
{$R MyAbout.dfm}
{$ENDIF}

procedure ShowAbout;
begin
  with TMyDacAboutForm.Create(Application) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMyDacAboutForm.FormShow(Sender: TObject);
var
  IDE: string;
begin
{$IFDEF VER5}
  IDE := 'Delphi 5';
{$ENDIF}
{$IFDEF VER6}
  IDE := 'Delphi 6';
{$ENDIF}
{$IFDEF VER7}
  IDE := 'Delphi 7';
{$ENDIF}
{$IFDEF VER9}
  IDE := 'Delphi 2005';
{$ENDIF}
{$IFDEF VER10}
  IDE := 'Delphi 2006';
{$ENDIF}
{$IFDEF VER11}
  IDE := 'RAD Studio 2007';
{$ENDIF}
{$IFDEF VER12}
  IDE := 'RAD Studio 2009';
{$ENDIF}
{$IFDEF VER14}
  IDE := 'RAD Studio 2010';
{$ENDIF}
{$IFDEF VER15}
  IDE := 'RAD Studio XE';
{$ENDIF}
{$IFDEF VER16}
  IDE := 'RAD Studio XE2';
{$ENDIF}
{$IFDEF CB5}
  IDE := 'C++Builder 5';
{$ENDIF}
{$IFDEF CB6}
  IDE := 'C++Builder 6';
{$ENDIF}
{$IFDEF FPC}
  IDE := 'Lazarus';
{$ENDIF}
  lbVersion.Caption := MyDacVersion + ' ';
  lbIDE.Caption := ' for ' + IDE;
  lbIDE.Left := lbVersion.Left + lbVersion.Width;

{$IFDEF STD}
  lbEdition.Caption := 'Standard Edition';
{$ELSE}
  lbEdition.Caption := 'Professional Edition';
{$ENDIF}

{$IFNDEF STD}
{$IFDEF MYBUILDER}
  with TMyBuilder.Create(nil) do
    try
      if not Available then
        lbMyBuilderVer.Caption := 'not available'
      else
        lbMyBuilderVer.Caption := Version;
    finally
      Free;
    end;
{$ENDIF}
{$ENDIF}

{$IFDEF MSWINDOWS}
  lblDBMonitorVer.Caption := string(GetDBMonitorVersion);
{$ENDIF}
{$IFDEF DBTOOLS}
  if TMyDesignUtils.GetDBToolsServiceVersion <> 0 then
    lblDeveloperToolsVer.Caption := TMyDesignUtils.GetDBToolsServiceVersionStr
  else
    lblDeveloperToolsVer.Caption := 'not available';
{$ELSE}
  if lblDeveloperTools.Visible then begin
    lblDeveloperTools.Visible := False;
    lblDeveloperToolsVer.Visible := False;
    Height := Height - 29;
  end;
{$ENDIF}
end;

procedure TMyDacAboutForm.lbWebClick(Sender: TObject);
begin
{$IFDEF MSWINDOWS}
  OpenUrl('http://www.devart.com/mydac');
  lbWeb.Font.Color := $FF0000;
{$ENDIF}
end;

procedure TMyDacAboutForm.lbMailClick(Sender: TObject);
begin
{$IFDEF MSWINDOWS}
  MailTo('mydac@devart.com');
  lbMail.Font.Color := $FF0000;
{$ENDIF}
end;

procedure TMyDacAboutForm.lbWebMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lbWeb.Font.Color := $4080FF;
end;

procedure TMyDacAboutForm.lbMailMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lbMail.Font.Color := $4080FF;
end;

procedure TMyDacAboutForm.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lbWeb.Font.Color := $FF0000;
  lbMail.Font.Color := $FF0000;
  lbForum.Font.Color := $FF0000;
end;

procedure TMydacAboutForm.lbForumClick(Sender: TObject);
begin
{$IFDEF MSWINDOWS}
  OpenUrl('http://devart.com/forums/viewforum.php?f=7');
  lbForum.Font.Color := $FF0000;
{$ENDIF}
end;

procedure TMydacAboutForm.lbForumMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  lbForum.Font.Color := $4080FF;
end;

end.
