program setup;

uses
  Forms,
  setupform in 'setupform.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Установки';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
