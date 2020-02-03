unit backupm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, mydacvcl, DB, DBAccess, MyAccess, DADump, MyDump,
  ExtCtrls;

type
  TForm1 = class(TForm)
    MyConnection1: TMyConnection;
    MyDump1: TMyDump;
    Timer1: TTimer;
    StaticText1: TStaticText;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
var pstr:string;
    f:textfile;
    n:integer;
    base,user,password,server,p0:string;
begin
try
assignfile(f,'connection.prm');
reset(f);
readln(f,pstr);
closefile(f);
//showmessage(pstr);
for n:=1 to length(pstr) do
   pstr[n]:=chr(ord(pstr[n])+14);
//showmessage(pstr);
n:=1;
base:='';
while pstr[n]<>';' do
begin
base:=base+pstr[n];
inc(n);
end;
user:='';
inc(n);
while pstr[n]<>';' do
begin
user:=user+pstr[n];
inc(n);
end;
password:='';
inc(n);
while pstr[n]<>';' do
begin
password:=password+pstr[n];
inc(n);
end;
server:='';
inc(n);
while pstr[n]<>';' do
begin
server:=server+pstr[n];
inc(n);
end;
myconnection1.Connected:=false;
myconnection1.Database:=base;
myconnection1.Username:=user;
myconnection1.Password:=password;
myconnection1.Server:=server;
except
end;
myconnection1.Connected:=true;
pstr:=datetimetostr(now);
p0:='';
for n:=1 to length(pstr) do
  if (pstr[n]<>':') and (pstr[n]<>'.') and (pstr[n]<>' ') then
    p0:=p0+pstr[n];
//statictext1.Caption:='Создаю архив базы данных с именем: '+p0+'.sql';
MyDump1.BackupToFile('modules\localdba\msqlarch\'+p0+'.sql');
close;
end;

end.
