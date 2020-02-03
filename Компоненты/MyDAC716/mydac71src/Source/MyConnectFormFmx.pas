
//////////////////////////////////////////////////
//  Data Access Components for MySQL
//  Copyright © 1998-2012 Devart. All right reserved.
//  Connect Form
//////////////////////////////////////////////////

{$DEFINE FMX}

unit MyConnectFormFmx;

interface

uses
  Classes, SysUtils, TypInfo,
{$IFDEF MSWINDOWS}
  Winapi.Windows, System.Win.Registry,
{$ENDIF}
  System.UITypes, FMX.Types, FMX.Platform,
  FMX.Forms, FMX.Controls, FMX.Edit, FMX.ListBox, FMX.Memo,
  CRTypes, MemUtils, DBAccess, MyCall, MyAccess;

type
  TMyConnectForm = class(TForm)
    Panel: TPanel;
    lbUsername: TLabel;
    lbPassword: TLabel;
    lbServer: TLabel;
    edUsername: TEdit;
    btConnect: TButton;
    btCancel: TButton;
    edPassword: TEdit;
    edServer: TEdit;
    lbPort: TLabel;
    lbDatabase: TLabel;
    edPort: TEdit;
    edDatabase: TEdit;
    procedure btConnectClick(Sender: TObject);
    procedure edExit(Sender: TObject);
  private
    FConnectDialog: TCustomConnectDialog;
    FRetries: integer;
    FOldCreateOrder: boolean;
    FRetry: boolean;

    FListGot: boolean;

    procedure SetConnectDialog(Value: TCustomConnectDialog);

  protected
    procedure DoInit; virtual;
    procedure DoConnect; virtual;

  public

  published
    property ConnectDialog: TCustomConnectDialog read FConnectDialog write SetConnectDialog;

    property OldCreateOrder: boolean read FOldCreateOrder write FOldCreateOrder;
  end;

implementation

{$R *.fmx}

uses
  CRFunctions, DacFMX, MyDacFMX;

procedure TMyConnectForm.DoInit;
var
  PropInfo: PPropInfo;
  VisibleEditors: integer;
  StepH, DeltaH, T: Extended;
begin
  FRetry := False;
  FRetries := FConnectDialog.Retries;
  Caption := FConnectDialog.Caption;
  FListGot := False;

  with FConnectDialog do begin
    lbUsername.Text := UsernameLabel;
    lbPassword.Text := PasswordLabel;
    lbServer.Text := ServerLabel;
    btConnect.Text := ConnectButton;
    btCancel.Text := CancelButton;

    edUsername.Text := Connection.Username;
    edPassword.Text := Connection.Password;
    edServer.Text := Connection.Server;

    if Connection is TMyConnection then
      edPort.Text := IntToStr(TMyConnection(Connection).Port);

    if (edUsername.Text <> '') and (edPassword.Text = '') then
      ActiveControl := edPassword;
  end;

  VisibleEditors := 3;

  PropInfo := GetPropInfo(FConnectDialog, 'PortLabel');
  if PropInfo <> nil then
    lbPort.Text := GetStrProp(FConnectDialog, PropInfo);

  PropInfo := GetPropInfo(FConnectDialog, 'DatabaseLabel');
  if PropInfo <> nil then
    lbDatabase.Text := GetStrProp(FConnectDialog, PropInfo);

  PropInfo := GetPropInfo(FConnectDialog, 'ShowPort');
  if PropInfo <> nil then begin
    lbPort.Visible := Boolean(GetOrdProp(FConnectDialog, PropInfo));
    edPort.Visible := lbPort.Visible;
    if edPort.Visible then
      Inc(VisibleEditors);
  end;

  StepH := edPassword.Position.Y - edUsername.Position.Y;
  PropInfo := GetPropInfo(FConnectDialog, 'ShowDatabase');
  if PropInfo <> nil then begin
    lbDatabase.Visible := Boolean(GetOrdProp(FConnectDialog, PropInfo));
    edDatabase.Visible := lbDatabase.Visible;
    if edDatabase.Visible then begin
      Inc(VisibleEditors);
      if edPort.Visible then
        T := edPort.Position.Y
      else
        T := edServer.Position.Y;
      edDatabase.Position.Y := T + StepH;
      lbDatabase.Position.Y := edDatabase.Position.Y + (lbUsername.Position.Y - edUsername.Position.Y);
    end;
  end;

  DeltaH := ClientHeight - Panel.Height;
  ClientHeight := Trunc(StepH * VisibleEditors + 19 + DeltaH);

  if FConnectDialog.Connection is TCustomMyConnection then begin
    edDatabase.Text := TCustomMyConnection(FConnectDialog.Connection).Database;
  end;
  if FConnectDialog.Connection.ClassName = 'TMyEmbConnection' then begin
    lbServer.Enabled := False;
    edServer.Enabled := False;
    lbPort.Enabled := False;
    edPort.Enabled := False;
  end
  else begin
    lbServer.Enabled := True;
    edServer.Enabled := True;
    lbPort.Enabled := True;
    edPort.Enabled := True;
  end;
end;

procedure TMyConnectForm.DoConnect;
begin
  try
    edExit(nil);
    FConnectDialog.Connection.PerformConnect(FRetry);
    ModalResult := mrOk;
  except
    on E: EDAError do begin
      Dec(FRetries);
      FRetry := True;
      if FRetries = 0 then
        ModalResult:= mrCancel;

      case E.ErrorCode of
        ER_ACCESS_DENIED_ERROR: ActiveControl := edUsername;
        CR_UNKNOWN_HOST: ActiveControl := edServer;
      end;
      raise;
    end
    else
      raise;
  end;
end;

procedure TMyConnectForm.SetConnectDialog(Value: TCustomConnectDialog);
begin
  FConnectDialog := Value;
  DoInit;
end;

procedure TMyConnectForm.btConnectClick(Sender: TObject);
begin
  DoConnect;
end;

procedure TMyConnectForm.edExit(Sender: TObject);
begin
  try
    FConnectDialog.Connection.Password := edPassword.Text;
    FConnectDialog.Connection.Server := edServer.Text;
    FConnectDialog.Connection.UserName := edUsername.Text;
    if FConnectDialog.Connection is TCustomMyConnection then begin
      TCustomMyConnection(FConnectDialog.Connection).Database := edDatabase.Text;
    end;
    if FConnectDialog.Connection is TMyConnection then begin
      TMyConnection(FConnectDialog.Connection).Port := StrToInt(edPort.Text);
    end;
  except
    ActiveControl := Sender as TStyledControl;
    raise;
  end;
end;

initialization
  if GetClass('TMyConnectForm') = nil then
    Classes.RegisterClass(TMyConnectForm);
end.

