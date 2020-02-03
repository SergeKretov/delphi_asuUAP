unit office;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  Tofficeform = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
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
  officeform: Tofficeform;

implementation

uses soadmin;

{$R *.dfm}

procedure Tofficeform.Button1Click(Sender: TObject);
begin
  officeform.close;
end;

procedure Tofficeform.FormShow(Sender: TObject);
begin
  if sotrudnikID='SUPERADMIN' then
    begin
      dbnavigator1.Enabled:=true;
      dbedit1.Enabled:=true;
      dbedit2.Enabled:=true;
      dbedit3.Enabled:=true;
      button2.Enabled:=true;
    end else
    begin
      dbnavigator1.Enabled:=false;
      dbedit1.Enabled:=false;
      dbedit2.Enabled:=false;
      dbedit3.Enabled:=false;
      button2.Enabled:=false;
    end;
end;

procedure Tofficeform.Button2Click(Sender: TObject);
begin
  soadm.showmodal;
end;

procedure Tofficeform.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then DBEdit2.SetFocus; 
end;

end.
