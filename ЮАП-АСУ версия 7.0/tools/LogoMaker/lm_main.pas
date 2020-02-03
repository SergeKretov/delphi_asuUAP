unit lm_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
if opendialog1.Execute then
  image1.Picture.LoadFromFile(opendialog1.FileName);  
end;

procedure TForm1.Button3Click(Sender: TObject);
var rf, wf :file of byte;
    lf:file of integer;
    spath:string;
    psize,namesize,vsize,ssize,nn:integer;
    n0:byte;

begin
  spath:=ExtractFilePath(Application.ExeName);
  image1.Picture.SaveToFile(spath+'image.tmp');
  assignfile(rf,spath+'image.tmp');
  reset(rf);
  assignfile(wf,spath+'logo.cnt');
  rewrite(wf);
  psize:=0;
  while not eof(rf) do
    begin
      read(rf,n0);
      n0:=n0 xor 14;
      write(wf,n0);
      inc(psize);
    end;
  closefile(rf);
  namesize:=length(edit1.Text);
  for nn:=1 to namesize do
    begin
      n0:=ord(edit1.text[nn]) xor 14;
      write(wf,n0);
    end;
   vsize:=length(edit2.Text);
  for nn:=1 to vsize do
    begin
      n0:=ord(edit2.text[nn]) xor 14;
      write(wf,n0);
    end;
  ssize:=length(edit3.Text);
  for nn:=1 to ssize do
    begin
      n0:=ord(edit3.text[nn]) xor 14;
      write(wf,n0);
    end;
  closefile(wf);
  assignfile(lf,spath+'logo.sze');
  rewrite(lf);
  write(lf,psize);
  write(lf,namesize);
  write(lf,vsize);
  write(lf,ssize);
  closefile(lf);
  showmessage('��������� ��������!');
end;

procedure TForm1.Button2Click(Sender: TObject);
var rf, wf :file of byte;
    lf:file of integer;
    spath:string;
    psize,namesize,vsize,ssize,nn:integer;
    n0:byte;
    ss:string;
begin
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
    end;
  closefile(wf);
  image1.Picture.LoadFromFile(spath+'image.bmp');
  ss:='';
  for nn:=1 to namesize do
    begin
      read(rf,n0);
      n0:=n0 xor 14;
      ss:=ss+chr(n0);
    end;
  edit1.Text:=ss;
  ss:='';
  for nn:=1 to vsize do
    begin
      read(rf,n0);
      n0:=n0 xor 14;
      ss:=ss+chr(n0);
    end;
  edit2.Text:=ss;
  ss:='';
  for nn:=1 to ssize do
    begin
      read(rf,n0);
      n0:=n0 xor 14;
      ss:=ss+chr(n0);
    end;
  edit3.Text:=ss;
  closefile(rf);
  showmessage('��������� ��������!');
end;

end.
