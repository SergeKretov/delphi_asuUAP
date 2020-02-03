unit setsotrlogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  Tsslogin = class(TForm)
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sslogin: Tsslogin;

implementation

{$R *.dfm}

procedure Tsslogin.Button1Click(Sender: TObject);
begin
  close;
end;

procedure Tsslogin.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then DBlookupcombobox1.SetFocus;
end;

end.
