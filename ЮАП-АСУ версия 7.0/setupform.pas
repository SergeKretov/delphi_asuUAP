unit setupform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, MyAccess, StdCtrls, mydacvcl;

type
  TForm1 = class(TForm)
    Button1: TButton;
    MyConnectDialog1: TMyConnectDialog;
    MyConnection1: TMyConnection;
    CheckBox1: TCheckBox;
    Button2: TButton;
    Button3: TButton;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
var pstr:string;
    f:textfile;
    n:integer;
    base,user,password,server:string;
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
pstr:=myconnection1.Database + ';' + myconnection1.Username + ';' +
myconnection1.Password + ';' + myconnection1.Server + ';';
//showmessage(pstr);
for n:=1 to length(pstr) do
   pstr[n]:=chr(ord(pstr[n])-14);
//showmessage(pstr);
assignfile(f,'connection.prm');
rewrite(f);
writeln(f,pstr);
closefile(f);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button2Click(Sender: TObject);
var f:textfile;
    pstr:string;
begin
if checkbox1.Checked then pstr:='1' else pstr:='0';
if checkbox2.Checked then pstr:=pstr+'1' else pstr:=pstr+'0';
if checkbox3.Checked then pstr:=pstr+'1' else pstr:=pstr+'0';
if checkbox4.Checked then pstr:=pstr+'1' else pstr:=pstr+'0';
if checkbox5.Checked then pstr:=pstr+'1' else pstr:=pstr+'0';
if checkbox6.Checked then pstr:=pstr+'1' else pstr:=pstr+'0';
if checkbox7.Checked then pstr:=pstr+'1' else pstr:=pstr+'0';
assignfile(f,'setting.prm');
rewrite(f);
writeln(f,pstr);
closefile(f);
close;
end;

procedure TForm1.FormShow(Sender: TObject);
var f:textfile;
    pstr:string;
begin
try
assignfile(f,'setting.prm');
reset(f);
readln(f,pstr);
closefile(f);
if pstr[1]='1' then checkbox1.Checked:=true else checkbox1.Checked:=false;
if pstr[2]='1' then checkbox2.Checked:=true else checkbox2.Checked:=false;
if pstr[3]='1' then checkbox3.Checked:=true else checkbox3.Checked:=false;
if pstr[4]='1' then checkbox4.Checked:=true else checkbox4.Checked:=false;
if pstr[5]='1' then checkbox5.Checked:=true else checkbox5.Checked:=false;
if pstr[6]='1' then checkbox6.Checked:=true else checkbox6.Checked:=false;
if pstr[7]='1' then checkbox7.Checked:=true else checkbox7.Checked:=false;
except
end;
end;

end.
