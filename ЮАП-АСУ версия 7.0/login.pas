unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, datamodule, DBCtrls, uapadmin, controllMsg, ExtCtrls;

type
  Tloginform = class(TForm)
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Image1: TImage;
    procedure Button2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  loginform: Tloginform;

implementation

{$R *.dfm}

procedure Tloginform.Button2Click(Sender: TObject);
begin
  sotrudnikid:='';
  loginform.Close;
end;

procedure Tloginform.RadioButton1Click(Sender: TObject);
begin
  label1.Visible:=true;
  edit1.Visible:=true;
  label3.Visible:=false;
  dblookupcombobox1.Visible:=false;
end;

procedure Tloginform.RadioButton2Click(Sender: TObject);
begin
  label1.Visible:=true;
  edit1.Visible:=true;
  label3.Visible:=false;
  dblookupcombobox1.Visible:=false;
end;

procedure Tloginform.RadioButton3Click(Sender: TObject);
begin
  label1.Visible:=false;
  edit1.Visible:=false;
  label3.Visible:=true;
  dblookupcombobox1.Visible:=true;
end;

procedure Tloginform.FormShow(Sender: TObject);
begin
  userType:=0;
  mainform.GroupBox1.Visible:=false;
  mainform.SpeedButton5.Enabled:=false;
  mainform.SpeedButton6.Enabled:=false;
  edit2.Text:='';
  sqldata.sotrudnik.Filter:='active=true';
  sqldata.sotrudnik.Filtered:=true;
  mainform.AlphaBlend:=true;
  mainform.AlphaBlendValue:=150;
  mainform.Color:=clblack;
  mainform.GroupBox1.Visible:=false;
end;

procedure Tloginform.Button1Click(Sender: TObject);
begin
  if radiobutton1.Checked then userType:=1 else
  if radiobutton2.Checked then userType:=2 else
  if radiobutton3.Checked then userType:=3 else userType:=0;

  case userType of
    1: begin
      sqldata.AdmLogin.Locate('login',edit1.Text,[]);
      if trim(sqldata.AdmLogin.Fields.FieldByName('password').AsString) = trim(edit2.Text) then
      begin
        showmessage('Ok. ���� � ������� �������� �������.');
        sotrudnikID:='SUPERADMIN';
        mainform.Button2.Enabled:=true;
        mainform.Button1.Enabled:=true;
        mainform.Button3.Enabled:=true;
        mainform.Button4.Enabled:=true;
        mainform.Button5.Enabled:=true;
        mainform.Button6.Enabled:=true;
        mainform.SpeedButton8.Enabled:=true;
        mainform.GroupBox1.Visible:=true;
        mainform.SpeedButton5.Enabled:=true;
        mainform.SpeedButton6.Enabled:=true;
        mainform.StaticText1.Caption:='������� ������������: ������������������';
        loginform.Close;
      end else showmessage('�������� ������!');
    end;
    2: begin
      sqldata.offadmlogin.Locate('login',edit1.Text,[]);
      if trim(sqldata.offadmlogin.Fields.FieldByName('password').AsString) = trim(edit2.Text) then
      begin
        showmessage('Ok. ���� � ������� �������� �������.');
        officeadminid:=sqldata.offadmlogin.Fields.FieldByName('officeid').AsString;
        sotrudnikID:='ADMIN';
        mainform.Button2.Enabled:=true;
        mainform.Button1.Enabled:=true;
        mainform.Button3.Enabled:=true;
        mainform.Button4.Enabled:=true;
        mainform.Button5.Enabled:=true;
        mainform.Button6.Enabled:=true;
        mainform.SpeedButton8.Enabled:=false;
        mainform.GroupBox1.Visible:=true;
        mainform.StaticText1.Caption:='������� ������������: ������������� ����� '+officeadminid;
        loginform.Close;
      end else showmessage('�������� ������!');
    end;
    3: begin
      sqldata.SotrLogin.Locate('login',label4.Caption,[]);
      if trim(sqldata.SotrLogin.Fields.FieldByName('password').AsString) = trim(edit2.Text) then
      begin
        showmessage('Ok. ���� � ������� �������� �������.');
        sotrudnikID:=label4.caption;
        mainform.Button2.Enabled:=false;
        mainform.Button1.Enabled:=true;
        mainform.Button3.Enabled:=false;
        mainform.Button4.Enabled:=false;
        mainform.Button5.Enabled:=false;
        mainform.Button6.Enabled:=true;
        mainform.SpeedButton8.Enabled:=false;
        mainform.GroupBox1.Visible:=true;
        mainform.StaticText1.Caption:='������� ������������: '+dblookupcombobox1.Text;
        loginform.Close;
      end else showmessage('�������� ������!');
    end;
  end;
end;

procedure Tloginform.DBLookupComboBox1Click(Sender: TObject);
begin
  label4.Caption:=sqldata.sotrudnik.Fields.FieldByName('sotr_id').AsString;  
end;

procedure Tloginform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if sotrudnikid<>'' then ctrmsg.ShowModal;
  sqldata.sotrudnik.Filter:='';
  sqldata.sotrudnik.Filtered:=false;
  mainform.AlphaBlend:=false;
  mainform.AlphaBlendValue:=150;
  mainform.Color:=clbtnface;
  if sotrudnikid<>'' then mainform.GroupBox1.Visible:=true;
end;

end.
