unit onceclient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, uapadmin, Grids, DBGrids, StdCtrls, DBCtrls, Mask,
  ExtCtrls, Buttons;

type
  Tonceclientform = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  onceclientform: Tonceclientform;

implementation

{$R *.dfm}

procedure Tonceclientform.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure Tonceclientform.FormShow(Sender: TObject);
begin
  sqldata.onceclient.Filter:='ended=false';
  sqldata.onceclient.Filtered:=true;
  mainform.StaticText2.Caption:='Установлен фильтр: Скрыть завершенные задачи';
  mainform.AlphaBlend:=true;
  mainform.AlphaBlendValue:=150;
  mainform.Color:=clblack;
  mainform.GroupBox1.Visible:=false;

end;

procedure Tonceclientform.SpeedButton1Click(Sender: TObject);
begin
  sqldata.onceclient.Filtered:=false;
  mainform.StaticText2.Caption:='Установлен фильтр:';
end;

procedure Tonceclientform.SpeedButton4Click(Sender: TObject);
begin
  sqldata.onceclient.Filter:='ended=false';
  sqldata.onceclient.Filtered:=true;
  mainform.StaticText2.Caption:='Установлен фильтр: Скрыть завершенные задачи';
end;

procedure Tonceclientform.SpeedButton3Click(Sender: TObject);
begin
  sqldata.onceclient.Filter:='ended=false and sort_id='+sotrudnikid;
  sqldata.onceclient.Filtered:=true;
  mainform.StaticText2.Caption:='Установлен фильтр: Скрыть завершенные задачи и показать только мои';
end;

procedure Tonceclientform.SpeedButton2Click(Sender: TObject);
begin
  sqldata.onceclient.Filter:='sort_id='+sotrudnikid;
  sqldata.onceclient.Filtered:=true;
  mainform.StaticText2.Caption:='Установлен фильтр: Показать только мои';
end;

procedure Tonceclientform.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then DBEdit1.SetFocus; 
end;

procedure Tonceclientform.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  mainform.AlphaBlend:=false;
  mainform.AlphaBlendValue:=150;
  mainform.Color:=clbtnface;
  mainform.GroupBox1.Visible:=true;
end;

end.
