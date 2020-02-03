unit editcard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uapadmin, DB, ADODB, ExtCtrls, DBCtrls, StdCtrls, Mask, datamodule;

type
  Tcardedit = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    GroupBox1: TGroupBox;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    Label8: TLabel;
    DBEdit10: TDBEdit;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure DBEdit4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cardedit: Tcardedit;

implementation

{$R *.dfm}

procedure Tcardedit.DBLookupComboBox1Click(Sender: TObject);
begin
  dbedit5.Text:=dblookupcombobox1.Text;
end;

procedure Tcardedit.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  cardedit.close;
end;

procedure Tcardedit.FormShow(Sender: TObject);
begin
  if sotrudnikID='SUPERADMIN' then
    begin
      dbedit1.Enabled:=true;
      dbedit2.Enabled:=true;
      dbedit3.Enabled:=true;
      dbedit5.Enabled:=true;
      dbedit6.Enabled:=true;
      dbedit7.Enabled:=true;
      dbedit8.Enabled:=true;
      dbedit9.Enabled:=true;
      dbedit10.Enabled:=true;
      dbcheckbox1.Enabled:=true;
      dbcheckbox2.Enabled:=true;
      dbcheckbox3.Enabled:=true;
      dblookupcombobox1.Enabled:=true;
    end else
    begin
      dbedit1.Enabled:=false;
      dbedit2.Enabled:=false;
      dbedit3.Enabled:=false;
      dbedit5.Enabled:=false;
      dbedit6.Enabled:=false;
      dbedit7.Enabled:=false;
      dbedit8.Enabled:=false;
      dbedit9.Enabled:=false;
      dbedit10.Enabled:=false;
      dbcheckbox1.Enabled:=false;
      dbcheckbox2.Enabled:=false;
      dbcheckbox3.Enabled:=false;
      dblookupcombobox1.Enabled:=false;
    end;
end;

procedure Tcardedit.DBEdit4Click(Sender: TObject);
begin
  if sotrudnikID<>'SUPERADMIN' then
   if messagedlg('������� ���� ������������?',mterror, mbokcancel,0)= mrok then
    begin
      sqldata.Cards.Edit;
      dbedit4.Text:=inttostr(strtoint(dbedit4.Text)-1);
      sqldata.Cards.Post;
    end;
end;

end.
