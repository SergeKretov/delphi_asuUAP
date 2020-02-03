unit soadmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask;

type
  Tsoadm = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  soadm: Tsoadm;

implementation

{$R *.dfm}

procedure Tsoadm.Button1Click(Sender: TObject);
begin
  close;
end;

procedure Tsoadm.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = nbInsert then DBEdit1.SetFocus; 
end;

end.
