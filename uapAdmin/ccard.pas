unit ccard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, uapadmin, DB, ADODB, StdCtrls, DBCtrls, datamodule;

type
  Tccardform = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    Label6: TLabel;
    DBText8: TDBText;
    Label7: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    DBText12: TDBText;
    Label10: TLabel;
    DBText13: TDBText;
    DBText14: TDBText;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ccardform: Tccardform;

implementation

uses editcard, card_pays;

{$R *.dfm}

procedure Tccardform.Button2Click(Sender: TObject);
begin
  cardedit.Caption:='�������������� ����� '+dbtext1.Caption;
  cardedit.showmodal;
end;

procedure Tccardform.Button1Click(Sender: TObject);
begin
  sqldata.Cards.Locate('cardnumber',edit1.Text,[]); 
end;

procedure Tccardform.Button3Click(Sender: TObject);
var cnum:string;
begin
  cnum:=inputbox('������� ����� �����','����� ����� �����','0000000000');
  cardedit.Caption:='���������� ����� ����� '+cnum;
  sqldata.Cards.Insert;
  cardedit.DBEdit6.Text:=cnum;
  cardedit.showmodal;
end;

procedure Tccardform.Button4Click(Sender: TObject);
begin
  cardpay.showmodal;
end;

procedure Tccardform.Button5Click(Sender: TObject);
begin
  ccardform.close;
end;

procedure Tccardform.FormShow(Sender: TObject);
begin
  if sotrudnikID='SUPERADMIN' then
    begin
      button3.Enabled:=true;
      button4.Enabled:=true;
    end else
    begin
      button3.Enabled:=false;
      button4.Enabled:=false;
    end;
  mainform.AlphaBlend:=true;
  mainform.AlphaBlendValue:=150;
  mainform.Color:=clblack;
  mainform.GroupBox1.Visible:=false;
end;

procedure Tccardform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mainform.AlphaBlend:=false;
  mainform.AlphaBlendValue:=150;
  mainform.Color:=clbtnface;
  mainform.GroupBox1.Visible:=true;
end;

end.
