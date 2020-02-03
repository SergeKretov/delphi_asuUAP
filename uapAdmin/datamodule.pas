unit datamodule;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, messages, Variants, Windows, Controls,
  Dialogs,  ExtCtrls, memdata;
type
  TSQLData = class(TDataModule)
    SQLConnection: TMyConnection;
    Agents: TMyTable;
    AgentsDS: TMyDataSource;
    Cards: TMyTable;
    CardsDS: TMyDataSource;
    CardsGo: TMyTable;
    CardsGoDS: TMyDataSource;
    AdmLogin: TMyTable;
    AgentPay: TMyTable;
    AgentLogin: TMyTable;
    AltairMSG: TMyTable;
    BWayMSG: TMyTable;
    SotrLogin: TMyTable;
    StatusMSG: TMyTable;
    ADMLoginDS: TMyDataSource;
    AgentPayDS: TMyDataSource;
    AgentLoginDS: TMyDataSource;
    AltairMSGDS: TMyDataSource;
    BWayMSGDS: TMyDataSource;
    SotrLoginDS: TMyDataSource;
    StatusMSGDS: TMyDataSource;
    dela: TMyTable;
    offices: TMyTable;
    sotrudnik: TMyTable;
    delaDS: TMyDataSource;
    officesDS: TMyDataSource;
    sotrudnikDS: TMyDataSource;
    offadmlogin: TMyTable;
    offadmloginDS: TMyDataSource;
    onceclient: TMyTable;
    onceclientds: TMyDataSource;
    Timer1: TTimer;
    procedure delaBeforeDelete(DataSet: TDataSet);
    procedure delaBeforeEdit(DataSet: TDataSet);
    procedure onceclientBeforeDelete(DataSet: TDataSet);
    procedure onceclientBeforeEdit(DataSet: TDataSet);
    procedure SQLConnectionAfterConnect(Sender: TObject);
    procedure SQLConnectionConnectionLost(Sender: TObject;
      Component: TComponent; ConnLostCause: TConnLostCause;
      var RetryMode: TRetryMode);
    procedure Timer1Timer(Sender: TObject);
    procedure delaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SQLData: TSQLData;
  userType: integer;
  sotrudnikID, officeadminid: string;

implementation

uses splashscreen, reconnect;

{$R *.dfm}

procedure TSQLData.delaBeforeDelete(DataSet: TDataSet);
begin
  if sotrudnikID<>'SUPERADMIN' then
    if (sotrudnikID<>'ADMIN') or ((sotrudnikID='ADMIN') and (officeadminid<>sqldata.dela.Fields.FieldByName('office_num').AsString)) then
    begin
      showmessage('������� ���� ����� ������ ������������������ ��� ������������� ����� � �������� ����������� ����!');
      abort();
    end else
    begin
       if messagedlg('������� ������� ����?',mterror, mbokcancel,0)= mrCancel then
         abort();
    end else
      if messagedlg('������� ������� ����?',mterror, mbokcancel,0)= mrCancel then
         abort();
end;

procedure TSQLData.delaBeforeEdit(DataSet: TDataSet);
begin
  if sotrudnikID<>'SUPERADMIN' then
    if sotrudnikID<>'ADMIN' then
    begin
    if (sotrudnikID<>sqldata.dela.Fields.FieldByName('sotr_id').AsString) then
    begin
      showmessage('������������� ���� ����� ������ ������������������ ��� ������������� ����� � �������� ����������� ���� ��� ���������, ������� ����� ����!');
      abort();
    end;
    end else
    if officeadminid<>sqldata.dela.Fields.FieldByName('office_num').AsString then
    begin
     showmessage('������������� ���� ����� ������ ������������������ ��� ������������� ����� � �������� ����������� ���� ��� ���������, ������� ����� ����!');
     abort();
    end;
end;

procedure TSQLData.onceclientBeforeDelete(DataSet: TDataSet);
begin
  if sotrudnikID<>'SUPERADMIN' then
    if (sotrudnikID<>'ADMIN') or ((sotrudnikID='ADMIN') and (officeadminid<>sqldata.onceclient.Fields.FieldByName('office_num').AsString)) then
    begin
      showmessage('������� ������ ����� ������ ������������������ ��� ������������� ����� � �������� ����������� ����!');
      abort();
    end else
    begin
       if messagedlg('������� ������� ����?',mterror, mbokcancel,0)= mrCancel then
         abort();
    end else
      if messagedlg('������� ������� ����?',mterror, mbokcancel,0)= mrCancel then
         abort();
end;

procedure TSQLData.onceclientBeforeEdit(DataSet: TDataSet);
begin
  if sotrudnikID<>'SUPERADMIN' then
    if sotrudnikID<>'ADMIN' then
    begin
    if (sotrudnikID<>sqldata.onceclient.Fields.FieldByName('sort_id').AsString) then
    begin
      showmessage('������������� ������ ����� ������ ������������������ ��� ������������� ����� � �������� ����������� ������ ��� ���������, ������� ��������� ������!');
      abort();
    end;
    end else
    if officeadminid<>sqldata.onceclient.Fields.FieldByName('office_num').AsString then
    begin
     showmessage('������������� ������ ����� ������ ������������������ ��� ������������� ����� � �������� ����������� ������ ��� ���������, ������� ��������� ������!');
     abort();
    end;
end;

procedure TSQLData.SQLConnectionAfterConnect(Sender: TObject);
begin
 splash.Hide;
 splash.Free;
end;

procedure TSQLData.SQLConnectionConnectionLost(Sender: TObject;
  Component: TComponent; ConnLostCause: TConnLostCause;
  var RetryMode: TRetryMode);
begin
reconnectform.show;
//RetryMode:=rmReconnectExecute;
timer1.Enabled:=true;
end;

procedure TSQLData.Timer1Timer(Sender: TObject);
begin
  sqlconnection.Connect;
  reconnectform.Close;
  timer1.Enabled:=false;
end;

procedure TSQLData.delaNewRecord(DataSet: TDataSet);
var ss,s0:string;
    n:integer;
begin
  ss:=DateTimeToStr(Now);
  s0:='';
  for n:=1 to length(ss) do
    if (ss[n]='0') or
    (ss[n]='1') or
    (ss[n]='2') or
    (ss[n]='3') or
    (ss[n]='4') or
    (ss[n]='5') or
    (ss[n]='6') or
    (ss[n]='7') or
    (ss[n]='8') or
    (ss[n]='9') then s0:=s0+ss[n];
  dela.Fields.FieldByName('delo_num').AsString:=s0;
end;

procedure TSQLData.DataModuleCreate(Sender: TObject);
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
sqlconnection.Connected:=false;
sqlconnection.Database:=base;
sqlconnection.Username:=user;
sqlconnection.Password:=password;
sqlconnection.Server:=server;
except
end;
sqlconnection.Connected:=true;
agents.Active:=true;
cards.Active:=true;
cardsgo.Active:=true;
admlogin.Active:=true;
agentpay.Active:=true;
agentlogin.Active:=true;
altairmsg.Active:=true;
bwaymsg.Active:=true;
sotrlogin.Active:=true;
statusmsg.Active:=true;
dela.Active:=true;
offices.Active:=true;
sotrudnik.Active:=true;
offadmlogin.Active:=true;
onceclient.Active:=true;
end;

end.
