unit card_pays;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  Tcardpay = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBNavigator1: TDBNavigator;
    Button5: TButton;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cardpay: Tcardpay;

implementation

{$R *.dfm}

procedure Tcardpay.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  groupbox1.Visible:=false;
end;

procedure Tcardpay.Button1Click(Sender: TObject);
begin
  sqldata.CardsGo.Insert;
  groupbox1.Visible:=true;
  dbedit1.SetFocus;
end;

procedure Tcardpay.Button2Click(Sender: TObject);
begin
  sqldata.CardsGo.Edit;
  groupbox1.Visible:=true;
  dbedit1.SetFocus;
end;

procedure Tcardpay.Button4Click(Sender: TObject);
begin
  if sqldata.CardsGo.Filtered then sqldata.CardsGo.Filtered:=false else
  begin
    sqldata.CardsGo.Filter:='cardnumber='+sqldata.CardsGo.FieldByName('cardnumber').AsString;
    sqldata.CardsGo.Filtered:=true;
  end;
end;

procedure Tcardpay.Button3Click(Sender: TObject);
begin
 if messagedlg('Удалить текущую запись?',mterror, mbokcancel,0)= mrok then
   sqldata.CardsGo.Delete;
end;

procedure Tcardpay.Button5Click(Sender: TObject);
begin
  cardpay.close;
end;

end.
