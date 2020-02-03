unit setAgentlogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, Grids, DBGrids, DBCtrls, StdCtrls, ExtCtrls, Mask;

type
  Tagentlogins = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  agentlogins: Tagentlogins;

implementation

{$R *.dfm}

procedure Tagentlogins.Button1Click(Sender: TObject);
begin
  agentlogins.close;
end;

procedure Tagentlogins.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then DBEdit1.SetFocus; 
end;

end.
