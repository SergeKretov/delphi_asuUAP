unit uapadmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, jpeg, ExtCtrls, Buttons, shellapi;

type
  Tmainform = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Button7: TButton;
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Button8: TButton;
    Image11: TImage;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    StaticText3: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainform: Tmainform;
  verinfo, siteinfo, companyname:string;

implementation

uses ccard, agentform, siteMSG, office, sotrform, reestrdel, login,
  onceclient, controllMsg;

{$R *.dfm}

procedure Tmainform.Button1Click(Sender: TObject);
begin
  ccardform.showmodal;
end;

procedure Tmainform.Button2Click(Sender: TObject);
begin
  agents.showmodal;
end;

procedure Tmainform.Button3Click(Sender: TObject);
begin
  sitesmsg.showmodal;
end;

procedure Tmainform.Button4Click(Sender: TObject);
begin
  officeform.showmodal;
end;

procedure Tmainform.Button5Click(Sender: TObject);
begin
  sotr.showmodal;
end;

procedure Tmainform.Button6Click(Sender: TObject);
begin
  delo.showmodal;
end;

procedure Tmainform.Image1Click(Sender: TObject);
begin
  loginform.ShowModal;
end;

procedure Tmainform.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tmainform.SpeedButton2Click(Sender: TObject);
begin
  showmessage('(c) 2018-2019 —Â„ÂÈ —. ¡‡ÒÛÍÓ‚ („.ÕÓËÎ¸ÒÍ) ¬ÂÒËˇ '+verinfo+' ('+siteinfo+')');
end;

procedure Tmainform.Button7Click(Sender: TObject);
begin
  onceclientform.showmodal;
end;

procedure Tmainform.SpeedButton3Click(Sender: TObject);
begin
  shellexecute(Handle,'open','modules\sudrf\sudf.exe',nil,nil,SW_SHOW);
end;

procedure Tmainform.SpeedButton4Click(Sender: TObject);
begin
  shellexecute(Handle,'open','modules\isk\iskreport.exe',nil,nil,SW_SHOW);
end;

procedure Tmainform.Button8Click(Sender: TObject);
begin
  ctrmsg.ShowModal;
end;

procedure Tmainform.SpeedButton5Click(Sender: TObject);
begin
  shellexecute(Handle,'open','modules\sudstat\sudstat.exe',nil,nil,SW_SHOW);
end;

procedure Tmainform.FormCreate(Sender: TObject);
var f:textfile;
    pstr:string;
begin
try
assignfile(f,'setting.prm');
reset(f);
readln(f,pstr);
closefile(f);
if pstr[1]='1' then shellexecute(Handle,'open','backup.exe',nil,nil,SW_SHOW);
except
end;
if fileexists(extractfilepath(application.ExeName)+'local') then
  StaticText3.Caption:='–‡·ÓÚ‡ Ò ÎÓÍ‡Î¸ÌÓÈ ¡ƒ' else
  StaticText3.Caption:='–‡·ÓÚ‡ ‚ ÓÒÌÓ‚ÌÓÈ ¡ƒ';
end;

procedure Tmainform.SpeedButton6Click(Sender: TObject);
begin
shellexecute(Handle,'open','setup.exe',nil,nil,SW_SHOW);
end;

procedure Tmainform.SpeedButton7Click(Sender: TObject);
begin
  shellexecute(Handle,'open','modules\python\gpcalc.exe',nil,nil,SW_SHOW);
end;

procedure Tmainform.FormPaint(Sender: TObject);
begin
  MainForm.Color:=clWhite;
end;

procedure Tmainform.FormShow(Sender: TObject);
var rf, wf :file of byte;
    lf:file of integer;
    spath:string;
    psize,namesize,vsize,ssize,nn:integer;
    n0:byte;
    ss:string;
begin
try
  spath:=ExtractFilePath(Application.ExeName);
  assignfile(lf,spath+'logo.sze');
  reset(lf);
  read(lf,psize);
  read(lf,namesize);
  read(lf,vsize);
  read(lf,ssize);
  closefile(lf);

  assignfile(wf,spath+'image.bmp');
  rewrite(wf);
  assignfile(rf,spath+'logo.cnt');
  reset(rf);

  for nn:=1 to psize do
    begin
      read(rf,n0);
      n0:=n0 xor 14;
      write(wf,n0);
      application.ProcessMessages;
    end;
  closefile(wf);
  ss:='';
  for nn:=1 to namesize do
    begin
      read(rf,n0);
      n0:=n0 xor 14;
      ss:=ss+chr(n0);
    end;
  companyname:=ss;
  ss:='';
  for nn:=1 to vsize do
    begin
      read(rf,n0);
      n0:=n0 xor 14;
      ss:=ss+chr(n0);
    end;
  verinfo:=ss;
  ss:='';
  for nn:=1 to ssize do
    begin
      read(rf,n0);
      n0:=n0 xor 14;
      ss:=ss+chr(n0);
    end;
  siteinfo:=ss;
  closefile(rf);
except
  companyname:='Õ≈ «¿–≈√»—“–»–Œ¬¿ÕÕ¿ﬂ ¬≈–—»ﬂ';
  verinfo:='Õ≈ «¿–≈√»—“–»–Œ¬¿ÕÕ¿ﬂ ¬≈–—»ﬂ';
end;
try
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'image.bmp');
  DeleteFile(ExtractFilePath(Application.ExeName)+'image.bmp');
except
end;
caption:=caption+' - '+companyname;
end;

procedure Tmainform.SpeedButton8Click(Sender: TObject);
begin
  shellexecute(Handle,'open','modules\localdba\uaplocal.exe',nil,nil,SW_SHOW);
end;

end.
