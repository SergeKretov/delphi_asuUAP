unit agentform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uapadmin, DB, ADODB, Grids, DBGrids, ExtCtrls, DBCtrls,
  StdCtrls, Mask, Datamodule;

type
  Tagents = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator2: TDBNavigator;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  agents: Tagents;

implementation

uses setAgentlogin, agetpay;

{$R *.dfm}

procedure Tagents.Button2Click(Sender: TObject);
begin
  groupbox1.Visible:=true;
  dbedit3.SetFocus;
end;

procedure Tagents.Button1Click(Sender: TObject);
begin
  SQLData.Agents.Insert;
  GroupBox2.Visible:=true;
  Dbedit3.SetFocus;
end;

procedure Tagents.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
     groupbox2.Visible:=false;
end;

procedure Tagents.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
 groupbox1.Visible:=false;
end;

procedure Tagents.Button4Click(Sender: TObject);
begin
 if messagedlg('Удалить текущую запись?',mterror, mbokcancel,0)= mrok then
   sqldata.Agents.Delete;
end;

procedure Tagents.Button5Click(Sender: TObject);
begin
  agents.close;
end;

procedure Tagents.Button3Click(Sender: TObject);
begin
  agentlogins.showmodal;
end;

procedure Tagents.FormShow(Sender: TObject);
begin
  if sotrudnikID<>'SUPERADMIN' then
    begin
      button1.Enabled:=false;
      button2.Enabled:=false;
      button3.Enabled:=false;
      button4.Enabled:=false;
      button6.Enabled:=false;
    end else begin
      button1.Enabled:=true;
      button2.Enabled:=true;
      button3.Enabled:=true;
      button4.Enabled:=true;
      button6.Enabled:=true;
    end;
end;

procedure Tagents.Button6Click(Sender: TObject);
begin
  apay.showmodal;
end;

end.
