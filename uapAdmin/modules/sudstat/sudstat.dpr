program sudstat;

uses
  Forms,
  ss_main in 'ss_main.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '���������� �������� ���';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
