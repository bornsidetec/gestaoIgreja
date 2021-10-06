program BDConfig;

uses
  Forms,
  Config in 'Config.pas' {FormConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormConfig, FormConfig);
  Application.Run;
end.
