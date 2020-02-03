program sudf;

uses
  Forms,
  sudfMain in 'sudfMain.pas' {Form1},
  cityEdit in 'cityEdit.pas' {Form2},
  streetEdit in 'streetEdit.pas' {Form3},
  asfind in 'asfind.pas' {Form4},
  soufind in 'soufind.pas' {Form5},
  msfind in 'msfind.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Справочник судов';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
