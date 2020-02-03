unit iskMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, DB, DBTables, Grids, DBGrids, StdCtrls, Mask,
  DBCtrls, Buttons, ShellAPI;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    Docs: TTable;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DocsDS: TDataSource;
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    N16: TMenuItem;
    N17: TMenuItem;
    procedure N8Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses rastrbrak;

var wdir:string;

{$R *.dfm}

procedure TForm1.N8Click(Sender: TObject);
begin

//  form2.showmodal;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  showmessage('Конструктор исков. (с) 2018 Сергей С. Барсуков. Версия 1.0');
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  GroupBox1.Visible:=false;
end;

procedure TForm1.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var s1,s2,s3,s4:string;
    p1,p2:pchar;
begin
  if key = 16 then GroupBox1.Visible:=true;
  if key = 13 then
    begin
      s1:=DOCS.Fields.FieldByName('type').AsString;
      s2:=DOCS.Fields.FieldByName('sotype').AsString;
      s3:=DOCS.Fields.FieldByName('name').AsString;
      s4:=DOCS.Fields.FieldByName('file').AsString;
      CreateDir(wdir+s1);
      CreateDir(wdir+s1+'\'+s2);
      CreateDir(wdir+s1+'\'+s2+'\'+s3);
      p1:=PChar(ExtractFilePath(Application.ExeName)+'docs\'+s4+'.docx');
      p2:=PChar(wdir+s1+'\'+s2+'\'+s3+'\NewDoc.docx');
      CopyFile(p1,p2,False);
      Showmessage('Шаблон скопирован в '+wdir+s1+'\'+s2+'\'+s3+'\NewDoc.docx');
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var ff:textfile;
    ss:string;
begin
  showmessage('Ткущая рабочая папка: '+wdir);
  if opendialog1.Execute then
    begin
      wdir:=ExtractFilePath(opendialog1.FileName);
      ss:=ExtractFilePath(Application.ExeName);
      assignfile(ff,ss+'path.stp');
      rewrite(ff);
      writeln(ff,wdir);
      closefile(ff);
      showmessage('Новая рабочая папка: '+wdir);
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var ff:textfile;
    ss:string;
begin
  try
    wdir:=ExtractFilePath(Application.ExeName);
    assignfile(ff,wdir+'path.stp');
    reset(ff);
    readln(ff,wdir);
    closefile(ff);
    if wdir='' then wdir:='c:\';
  except
    wdir:='c:\';
  end;
  ss:=ExtractFilePath(Application.ExeName);
  DOCS.TableName:=ss+'base\docs.dbf';
  DOCS.Active:=true; 
end;

procedure TForm1.Button2Click(Sender: TObject);
var s1,s2,s3,s4:string;
    p1,p2:pchar;
begin
  s1:=DOCS.Fields.FieldByName('type').AsString;
  s2:=DOCS.Fields.FieldByName('sotype').AsString;
  s3:=DOCS.Fields.FieldByName('name').AsString;
  s4:=DOCS.Fields.FieldByName('file').AsString;
  CreateDir(wdir+s1);
  CreateDir(wdir+s1+'\'+s2);
  CreateDir(wdir+s1+'\'+s2+'\'+s3);
  p1:=PChar(ExtractFilePath(Application.ExeName)+'docs\'+s4+'.docx');
  p2:=PChar(wdir+s1+'\'+s2+'\'+s3+'\NewDoc.docx');
  CopyFile(p1,p2,False);
  Showmessage('Шаблон скопирован в '+wdir+s1+'\'+s2+'\'+s3+'\NewDoc.docx');
  ShellExecute(Application.Handle,nil,p2,nil,nil,SW_SHOWNORMAL);

end;

procedure TForm1.N17Click(Sender: TObject);
begin
  Close;
end;

end.
