program backupmain;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  backupdatamodule in 'backupdatamodule.pas' {DataModule1: TDataModule};

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
datamodule1.myconnection1.Connected:=false;
datamodule1.myconnection1.Database:=base;
datamodule1.myconnection1.Username:=user;
datamodule1.myconnection1.Password:=password;
datamodule1.myconnection1.Server:=server;
except
end;
datamodule1.myconnection1.Connected:=true;
pstr:=datetimetostr(now);
p0:='';
for n:=1 to length(pstr) do
  if (pstr[n]<>':') and (pstr[n]<>'.') and (pstr[n]<>' ') then
    p0:=p0+pstr[n];
datamodule1.MyDump1.BackupToFile('modules\localdba\msqlarch\'+p0+'.sql');
end.
