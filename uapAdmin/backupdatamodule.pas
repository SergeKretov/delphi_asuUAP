unit backupdatamodule;

interface

uses
  SysUtils, Classes, DADump, MyDump, DB, DBAccess, MyAccess;

type
  TDataModule1 = class(TDataModule)
    MyConnection1: TMyConnection;
    MyDump1: TMyDump;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
