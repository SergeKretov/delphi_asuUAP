unit agetpay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Datamodule, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  Tapay = class(TForm)
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  apay: Tapay;

implementation

{$R *.dfm}

procedure Tapay.Button1Click(Sender: TObject);
begin
  close;
end;

procedure Tapay.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = nbInsert then DBlookupcombobox1.SetFocus;
end;

end.
