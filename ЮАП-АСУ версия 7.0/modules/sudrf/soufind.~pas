unit soufind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sudfmain, DBCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Button1: TButton;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.DBLookupComboBox1Click(Sender: TObject);
begin
  dblookupcombobox2.ListSource.DataSet.Filter:='CITY_ID='+DbLookUpComboBox1.KeyValue;
  dblookupcombobox2.ListSource.DataSet.Filtered:=true;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
  form1.sud.filter:='CITY_ID='+DbLookUpComboBox1.KeyValue+' AND SUD_ID < 30000 AND SUD_ID >= 20000 AND (STREET_ID='+DbLookUpComboBox2.KeyValue+' OR STREET_ID=NULL)';
  form1.sud.Filtered:=true;
  form1.city.Filtered:=false;
  form1.streets.Filtered:=false;
  close;
end;

end.
