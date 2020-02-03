program iskreport;

uses
  Forms,
  iskMain in 'iskMain.pas' {Form1},
  rastrbrak in 'rastrbrak.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Конструктор исков';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
