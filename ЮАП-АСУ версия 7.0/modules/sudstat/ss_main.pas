unit ss_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, DB,
  DBAccess, MyAccess, MemDS, Mask;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    SQLConnection: TMyConnection;
    sudstat: TMyTable;
    sudstatds: TMyDataSource;
    StaticText1: TStaticText;
    DBGrid2: TDBGrid;
    links: TMyTable;
    linkds: TMyDataSource;
    Shape1: TShape;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    StaticText2: TStaticText;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
