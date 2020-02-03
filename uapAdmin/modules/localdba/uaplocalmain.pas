unit uaplocalmain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, DADump, MyDump, DB, DBAccess, MyAccess,
  MyDacVcl, ComCtrls;

type
  TForm1 = class(TForm)
    CheckListBox1: TCheckListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    MyConnection1: TMyConnection;
    MyDump1: TMyDump;
    MyConnectDialog1: TMyConnectDialog;
    ProgressBar1: TProgressBar;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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

Function DateFromName(name:string):string;
begin
  DateFromName:=name[1]+name[2]+'.'+name[3]+name[4]+'.'+name[5]+name[6]+name[7]+name[8];
end;

Procedure CorrectBase1(filename:string);
var ff,f0:textfile;
    ss,path:string;
    n0:byte;
begin
form1.progressbar1.Min:=0;
form1.progressbar1.Max:=100;
n0:=0;
path:=ExtractFilePath(Application.ExeName)+'msqlarch\';
assignfile(ff,path+filename);
reset(ff);
assignfile(f0,path+'temp.sql');
rewrite(f0);
while not eof(ff) do
begin
  readln(ff,ss);
  writeln(f0,ss);
  inc(n0);
  if n0>100 then n0:=0;
  form1.progressbar1.Position:=n0;
end;
Closefile(ff);
Closefile(f0);
end;

Procedure CorrectBase2(filename,basename:string);
var ff,f0:textfile;
    ss,s0,path:string;
    nn:integer;
    flg,n0:byte;
begin
path:=ExtractFilePath(Application.ExeName)+'msqlarch\';
assignfile(ff,path+filename);
reset(ff);
assignfile(f0,path+'tempbase.sql');
rewrite(f0);
form1.progressbar1.Min:=0;
form1.progressbar1.Max:=100;
n0:=0;
while not eof(ff) do
begin
  readln(ff,ss);
  inc(n0);
  if n0>100 then n0:=0;
  form1.progressbar1.Position:=n0;
  s0:='';
  flg:=1;
  for nn:=1 to length(ss) do
    begin
      if flg=1 then s0:=s0+ss[nn];
      if s0='DROP DATABASE IF EXISTS ' then
        begin
          s0:=s0+basename+';';
          flg:=0;
        end;
      if s0='CREATE DATABASE ' then
        begin
          s0:=s0+basename+';';
          flg:=0;
        end;
      if (s0='USE ') and (ss<>'USE mysql;') then
        begin
          s0:=s0+basename+';';
          flg:=0;
        end;
    end;
    if s0<>'USE mysql;' then
      writeln(f0,s0);
end;
Closefile(ff);
Closefile(f0);
end;

Function PrepearBase:boolean;
var nn,n0:integer;
    fname,ss,bname:string;
    flg:byte;
begin
  PrepearBase:=false;
  n0:=0;
  for nn:=0 to form1.checklistbox1.Items.Count-1 do
    if form1.checklistbox1.Checked[nn] then inc(n0);
  if n0=0 then showmessage('�� ������ �� ���� �� �������!');
  if n0>1 then showmessage('������ ����� ��� 1 �����. ���������� �������� ������������ ��������� ������� �� ��������! �������� ���� ����� � ��������� �������.') else
    for nn:=0 to form1.checklistbox1.Items.Count-1 do
      if form1.checklistbox1.Checked[nn] then
        begin
          showmessage('����� ��������� �������� '+form1.checklistbox1.Items.Strings[nn]);
          flg:=0;
          fname:='';
          ss:=form1.checklistbox1.Items.Strings[nn];
          for n0:=1 to length(ss) do
            begin
              if ss[n0]='}' then flg:=0;
              if flg=1 then fname:=fname+ss[n0];
              if ss[n0]='{' then flg:=1;
            end;
          CorrectBase1(fname);
          bname:='';
          bname:=form1.myconnection1.Database;
          if bname='' then showmessage('�� ���� ���������� ����. ��������� ��������� ���������� SQL �������!') else
            begin
              CorrectBase2(fname,bname);
              PrepearBase:=true;
            end;
        end;
end;


procedure TForm1.FormCreate(Sender: TObject);
var pa:string;
    SearchRec:TSearchRec;
begin
  pa:=ExtractFilePath(Application.ExeName);
  if FindFirst(pa+'\msqlarch\*.sql',faArchive,SearchRec) = 0 then
    repeat
      CheckListBox1.Items.Add('����� �� '+DateFromName(SearchRec.Name)+' ����: {'+SearchRec.Name+'}');
    until FindNext(SearchRec) <> 0;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
var pstr:string;
    f:textfile;
    n:integer;
    base,user,password,server:string;
begin
if PrepearBase then
begin
showmessage('���������� ������ ���������. ����������� � ������� ��������� ��.');
try
assignfile(f,'connection.prm');
reset(f);
readln(f,pstr);
closefile(f);
for n:=1 to length(pstr) do
   pstr[n]:=chr(ord(pstr[n])+14);
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
showmessage('������� ��������� �������� ������ � ��������� ��.');
pstr:=ExtractFilePath(Application.ExeName)+'msqlarch\tempbase.sql';

mydump1.RestoreFromFile(pstr);

DeleteFile(pstr);
DeleteFile(ExtractFilePath(Application.ExeName)+'msqlarch\temp.sql');
showmessage('��������� ���� ������ ������ � �������������.');
form1.progressbar1.Position:=0;
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
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

procedure TForm1.Button5Click(Sender: TObject);
begin
  showmessage('(�) 2019 ������ �. �������� v1.0');
end;

procedure TForm1.Button1Click(Sender: TObject);
var nn,n0:integer;
    flg:byte;
    fname,ss:string;
    pa:string;
    SearchRec:TSearchRec;
begin
  if MessageDlg('����� ������� ��������� ������. ����������?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
   for nn:=0 to form1.checklistbox1.Items.Count-1 do
      if form1.checklistbox1.Checked[nn] then
        begin
          flg:=0;
          fname:='';
          ss:=form1.checklistbox1.Items.Strings[nn];
          for n0:=1 to length(ss) do
            begin
              if ss[n0]='}' then flg:=0;
              if flg=1 then fname:=fname+ss[n0];
              if ss[n0]='{' then flg:=1;
            end;
            DeleteFile(ExtractFilePath(Application.ExeName)+'msqlarch\'+fname);
      end;
      form1.CheckListBox1.Clear;
      pa:=ExtractFilePath(Application.ExeName);
      if FindFirst(pa+'\msqlarch\*.sql',faArchive,SearchRec) = 0 then
      repeat
        form1.CheckListBox1.Items.Add('����� �� '+DateFromName(SearchRec.Name)+' ����: {'+SearchRec.Name+'}');
      until FindNext(SearchRec) <> 0;
  end;
end;

end.
