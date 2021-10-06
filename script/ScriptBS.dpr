program ScriptBS;

uses
  Forms,
  script in 'script.pas' {FormScript};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormScript, FormScript);
  Application.Run;
end.
