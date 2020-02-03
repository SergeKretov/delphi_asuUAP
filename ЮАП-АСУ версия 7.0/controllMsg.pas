unit controllMsg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, Grids, DBGrids, Buttons, StdCtrls;

type
  Tctrmsg = class(TForm)
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ctrmsg: Tctrmsg;

implementation

uses uapadmin;

{$R *.dfm}

procedure Tctrmsg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  sqldata.dela.Filter:='';
  sqldata.dela.Filtered:=false;
  mainform.AlphaBlend:=false;
  mainform.AlphaBlendValue:=150;
  mainform.Color:=clbtnface;
  mainform.GroupBox1.Visible:=true;
end;

procedure Tctrmsg.FormShow(Sender: TObject);
var fltstr:string;
begin
  fltstr:='ended=false';
  if sotrudnikID='ADMIN' then
    begin
      if fltstr<>'' then fltstr:=fltstr+' and ';
      fltstr:=fltstr+'office_num='+officeAdminID;
    end else if sotrudnikID='SUPERADMIN' then
    begin
    end else
    begin
      if fltstr<>'' then fltstr:=fltstr+' and ';
      fltstr:=fltstr+'sotr_id='+sotrudnikID;
    end;
  if fltstr<>'' then fltstr:=fltstr+' and ';
  fltstr:=fltstr+'contr_date<='+''''+datetostr(Date())+'''';
  sqldata.dela.Filter:=fltstr;
  sqldata.dela.Filtered:=true;
  mainform.AlphaBlend:=true;
  mainform.AlphaBlendValue:=150;
  mainform.Color:=clblack;
  mainform.GroupBox1.Visible:=false;
end;

procedure Tctrmsg.SpeedButton1Click(Sender: TObject);
var fltstr:string;
begin
  fltstr:='ended=false';
  if sotrudnikID='ADMIN' then
    begin
      if fltstr<>'' then fltstr:=fltstr+' and ';
      fltstr:=fltstr+'office_num='+officeAdminID;
    end else if sotrudnikID='SUPERADMIN' then
    begin
    end else
    begin
      if fltstr<>'' then fltstr:=fltstr+' and ';
      fltstr:=fltstr+'sotr_id='+sotrudnikID;
    end;
  if fltstr<>'' then fltstr:=fltstr+' and ';
  fltstr:=fltstr+'contr_date<='+''''+datetostr(Date())+'''';
  sqldata.dela.Filter:=fltstr;
  sqldata.dela.Filtered:=true;
  speedbutton2.Flat:=false;
  speedbutton1.Flat:=true;
end;

procedure Tctrmsg.SpeedButton2Click(Sender: TObject);
var fltstr:string;
begin
  fltstr:='ended=false';
  if sotrudnikID='ADMIN' then
    begin
      if fltstr<>'' then fltstr:=fltstr+' and ';
      fltstr:=fltstr+'office_num='+officeAdminID;
    end else if sotrudnikID='SUPERADMIN' then
    begin
    end else begin
    if fltstr<>'' then fltstr:=fltstr+' and ';
    fltstr:=fltstr+'sotr_id='+sotrudnikID;
    end;
  if fltstr<>'' then fltstr:=fltstr+' and ';
  fltstr:=fltstr+'sud_date>='+''''+datetostr(Date())+'''';
  sqldata.dela.Filter:=fltstr;
  sqldata.dela.Filtered:=true;
  speedbutton2.Flat:=true;
  speedbutton1.Flat:=false;
end;

procedure Tctrmsg.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.
