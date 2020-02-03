unit sotrform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, Grids, DBGrids, DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  Tsotr = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    DBCheckBox1: TDBCheckBox;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sotr: Tsotr;

implementation

uses setsotrlogin;

{$R *.dfm}

procedure Tsotr.Button1Click(Sender: TObject);
begin
  sotr.close;
end;

procedure Tsotr.FormShow(Sender: TObject);
begin
  if sotrudnikID='SUPERADMIN' then
    begin
      dbnavigator1.Enabled:=true;
      dbedit1.Enabled:=true;
      dbedit2.Enabled:=true;
      dblookupcombobox1.Enabled:=true;
      button2.Enabled:=true;
    end else
    begin
      dbnavigator1.Enabled:=false;
      dbedit1.Enabled:=false;
      dbedit2.Enabled:=false;
      dblookupcombobox1.Enabled:=false;
      button2.Enabled:=false;
    end;
end;

procedure Tsotr.Button2Click(Sender: TObject);
begin
  sslogin.showmodal;
end;

procedure Tsotr.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = nbInsert then DBEdit1.SetFocus; 
end;

end.
