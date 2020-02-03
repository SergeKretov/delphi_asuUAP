unit sudfMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls, DBCtrls,
  Mask;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    DBGrid1: TDBGrid;
    city: TTable;
    Button1: TButton;
    cityds: TDataSource;
    Button2: TButton;
    streetds: TDataSource;
    streets: TTable;
    sudds: TDataSource;
    sud: TTable;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses cityEdit, streetEdit, asfind, soufind, msfind;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form3.Showmodal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  ShowMessage('(с) 2018 - 2019 Сергей С. Барсуков (BareS Enterprise Systems Software) г.Норильск');
end;

procedure TForm1.DBLookupComboBox1Exit(Sender: TObject);
begin
// streets.Filter:='CITY_ID=';
 
 
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  city.Active:=true;
  streets.Active:=true;
  sud.Active:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  sud.Filter:='';
  sud.Filtered:=false;
  city.Filtered:=false;
  streets.Filtered:=false;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
  form4.showmodal;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  form5.showmodal;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  showmessage('Данная функция не доступна в данной версии программы');
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  form6.showmodal;
end;

procedure TForm1.FormCreate(Sender: TObject);
var appPath:string;
begin
  appPath:=ExtractFileDir(Application.ExeName);
  city.TableName:=appPath+'\base\cities.dbf';
  city.Active:=true;
  streets.TableName:=appPath+'\base\streets.dbf';
  streets.Active:=true;
  sud.TableName:=appPath+'\base\sud.dbf';
  sud.Active:=true;  
end;

end.
