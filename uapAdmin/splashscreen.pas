unit splashscreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tsplash = class(TForm)
    StaticText1: TStaticText;
    Image1: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  splash: Tsplash;


implementation

uses uapadmin;

{$R *.dfm}

end.
