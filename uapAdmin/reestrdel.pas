unit reestrdel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons,
  ExtCtrls, uapadmin;

type
  Tdelo = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label10: TLabel;
    DBMemo2: TDBMemo;
    DBCheckBox2: TDBCheckBox;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Button1: TButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  delo: Tdelo;

implementation

uses rdelfiltr;

{$R *.dfm}

procedure Tdelo.SpeedButton1Click(Sender: TObject);
begin
  showmessage('Номер дела: В-РРММДДННГГ где В - вид дела (0-прочие, 1-уголовное, 2-гражданское, 3-административное, 4-арбитраж, 5-банкротство), РР-номер региона, ММ - номер месяца(01..12), ДД - день обращения (01..31), НН-сквозной номер (01..99), ГГ - год.');
end;

procedure Tdelo.DBLookupComboBox2Click(Sender: TObject);
begin
  sqldata.dela.FieldByName('sotr_name').AsString:=
    dblookupcombobox2.Text;    
end;

procedure Tdelo.Button1Click(Sender: TObject);
begin
  delo.close;
end;

procedure Tdelo.SpeedButton2Click(Sender: TObject);
begin
  filtrdelo.showmodal;
end;

procedure Tdelo.FormShow(Sender: TObject);
begin
  sqldata.dela.Filter:='ended=false';
  sqldata.dela.Filtered:=true;
  mainform.StaticText2.Caption:='Установлен фильтр: Скрыть завершенные дела';
  mainform.AlphaBlend:=true;
  mainform.AlphaBlendValue:=150;
  mainform.Color:=clblack;
  mainform.GroupBox1.Visible:=false;
end;

procedure Tdelo.SpeedButton3Click(Sender: TObject);
var fstr:string;
begin
  fstr:=inputbox('Поиск по заказчику','Введите часть Ф.И.О. заказчика','');
  sqldata.dela.Filter:='fioz like '+ #39 + '%' + fstr + '%' + #39;
  sqldata.dela.Filtered:=true;
  mainform.StaticText2.Caption:='Установлен фильтр: По заказчику - '+fstr;
end;

procedure Tdelo.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = nbInsert then DBEdit1.SetFocus; 
end;

procedure Tdelo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mainform.AlphaBlend:=false;
  mainform.AlphaBlendValue:=150;
  mainform.Color:=clbtnface;
  mainform.GroupBox1.Visible:=true;
end;

end.
