program Script;

uses
  Forms,
  UnitScript in 'UnitScript.pas' {FormScript};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormScript, FormScript);
  Application.Run;
end.
