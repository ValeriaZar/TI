program Project7;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  Files in 'Files.pas',
  Registr in 'Registr.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
