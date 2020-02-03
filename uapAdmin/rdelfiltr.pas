unit rdelfiltr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, datamodule, uapadmin;

type
  Tfiltrdelo = class(TForm)
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  filtrdelo: Tfiltrdelo;

implementation

{$R *.dfm}

procedure Tfiltrdelo.Button2Click(Sender: TObject);
begin
  sqldata.dela.Filtered:=false;
  mainform.StaticText2.Caption:='Установлен фильтр:';
  close;
end;

procedure Tfiltrdelo.Button1Click(Sender: TObject);
var fltstr,flsm:string;
begin
  fltstr:='';
  flsm:='';
  if checkbox1.Checked then
    begin
      if fltstr<>'' then fltstr:=fltstr+' and ';
      fltstr:=fltstr+'ended=false';
      if flsm<>'' then flsm:=flsm+' и ';
      flsm:=flsm+'скрыть завершенные дела';
    end;
  if checkbox2.Checked then
    begin
      if fltstr<>'' then fltstr:=fltstr+' and ';
      fltstr:=fltstr+'sotr_id='+sotrudnikID;
      if flsm<>'' then flsm:=flsm+' и ';
      flsm:=flsm+'показывать только мои';
    end;
  if checkbox3.Checked then
    begin
      if fltstr<>'' then fltstr:=fltstr+' and ';
      sqldata.sotrudnik.Filter:='sotr_id='+sotrudnikID;
      sqldata.sotrudnik.Filtered:=true;
      fltstr:=fltstr+'office_num='+sqldata.sotrudnik.Fields.FieldByName('office_num').AsString;
      sqldata.sotrudnik.Filter:='';
      sqldata.sotrudnik.Filtered:=false;
      if flsm<>'' then flsm:=flsm+' и ';
      flsm:=flsm+'в моем офисе';
    end;
  if checkbox4.Checked then
    begin
      if fltstr<>'' then fltstr:=fltstr+' and ';
      fltstr:=fltstr+'contr_date<='+''''+datetostr(Date())+'''';
      if flsm<>'' then flsm:=flsm+' и ';
      flsm:=flsm+'контрольной датой';
    end;
  if checkbox5.Checked then
    begin
      if fltstr<>'' then fltstr:=fltstr+' and ';
      fltstr:=fltstr+'sud_date>='+''''+datetostr(Date())+'''';
      if flsm<>'' then flsm:=flsm+' и ';
      flsm:=flsm+'с назначенным судом';
    end;
  sqldata.dela.Filter:=fltstr;
  sqldata.dela.Filtered:=true;
  mainform.StaticText2.Caption:='Установлен фильтр: '+flsm; 
  close;
end;

end.
