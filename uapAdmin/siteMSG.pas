unit siteMSG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, datamodule, Grids, DBGrids, DBCtrls,
  ExtCtrls;

type
  Tsitesmsg = class(TForm)
    TabControl1: TTabControl;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    DBCheckBox1: TDBCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sitesmsg: Tsitesmsg;

implementation

{$R *.dfm}

procedure Tsitesmsg.Button1Click(Sender: TObject);
begin
  sitesmsg.close;
end;

procedure Tsitesmsg.TabControl1Change(Sender: TObject);
begin
  case tabcontrol1.TabIndex of
    0: begin
      tabcontrol1.TabIndex:=3;
    end;
    1: begin
      dbgrid1.DataSource:=SQLData.AltairMSGDS;
      dbtext1.DataSource:=SQLData.AltairMSGDS;
      dbnavigator1.DataSource:=SQLData.AltairMSGDS;
      dbcheckbox1.DataSource:=sqldata.AltairMSGDS;
    end;
    2: begin
      dbgrid1.DataSource:=SQLData.BWayMSGDS;
      dbtext1.DataSource:=SQLData.BWayMSGDS;
      dbnavigator1.DataSource:=SQLData.BWayMSGDS;
      dbcheckbox1.DataSource:=sqldata.BWayMSGDS;
    end;
    3: begin
      dbgrid1.DataSource:=SQLData.StatusMSGDS;
      dbtext1.DataSource:=SQLData.StatusMSGDS;
      dbnavigator1.DataSource:=SQLData.StatusMSGDS;
      dbcheckbox1.DataSource:=sqldata.StatusMSGDS; 
    end;
  end;
end;

end.
