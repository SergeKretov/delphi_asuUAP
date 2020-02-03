unit asfind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sudfmain, StdCtrls, DBCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  form1.sud.filter:='CITY_ID='+DbLookUpComboBox1.KeyValue+' AND SUD_ID < 20000';
  form1.sud.Filtered:=true;
  close;
end;

end.
