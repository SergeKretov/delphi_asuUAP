program uapadm;

uses
  Forms,
  uapadmin in 'uapadmin.pas' {mainform},
  ccard in 'ccard.pas' {ccardform},
  editcard in 'editcard.pas' {cardedit},
  agentform in 'agentform.pas' {agents},
  datamodule in 'datamodule.pas' {SQLData: TDataModule},
  card_pays in 'card_pays.pas' {cardpay},
  setAgentlogin in 'setAgentlogin.pas' {agentlogins},
  siteMSG in 'siteMSG.pas' {sitesmsg},
  office in 'office.pas' {officeform},
  sotrform in 'sotrform.pas' {sotr},
  reestrdel in 'reestrdel.pas' {delo},
  login in 'login.pas' {loginform},
  setsotrlogin in 'setsotrlogin.pas' {sslogin},
  soadmin in 'soadmin.pas' {soadm},
  rdelfiltr in 'rdelfiltr.pas' {filtrdelo},
  agetpay in 'agetpay.pas' {apay},
  controllMsg in 'controllMsg.pas' {ctrmsg},
  onceclient in 'onceclient.pas' {onceclientform},
  splashscreen in 'splashscreen.pas' {splash},
  reconnect in 'reconnect.pas' {reconnectform};

{$R *.res}


begin
  Application.Initialize;
  splash:=tsplash.Create(nil);
  splash.Show;
  splash.Update;
  Application.Title := '��� ����������� ���������';
  Application.CreateForm(Tmainform, mainform);
  Application.CreateForm(Tccardform, ccardform);
  Application.CreateForm(Tcardedit, cardedit);
  Application.CreateForm(Tagents, agents);
  Application.CreateForm(TSQLData, SQLData);
  Application.CreateForm(Tcardpay, cardpay);
  Application.CreateForm(Tagentlogins, agentlogins);
  Application.CreateForm(Tsitesmsg, sitesmsg);
  Application.CreateForm(Tofficeform, officeform);
  Application.CreateForm(Tsotr, sotr);
  Application.CreateForm(Tdelo, delo);
  Application.CreateForm(Tloginform, loginform);
  Application.CreateForm(Tsslogin, sslogin);
  Application.CreateForm(Tsoadm, soadm);
  Application.CreateForm(Tfiltrdelo, filtrdelo);
  Application.CreateForm(Tapay, apay);
  Application.CreateForm(Tctrmsg, ctrmsg);
  Application.CreateForm(Tonceclientform, onceclientform);
  Application.CreateForm(Treconnectform, reconnectform);
  Application.Run;
end.
