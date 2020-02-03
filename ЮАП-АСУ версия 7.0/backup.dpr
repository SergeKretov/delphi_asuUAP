program backup;

uses
  Forms,
  backupm in 'backupm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'BackUpDB';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
