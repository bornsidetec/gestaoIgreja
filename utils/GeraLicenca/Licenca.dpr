program Licenca;

uses
  Forms,
  Ativacao in 'Ativacao.pas' {FormAtivacao};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Gerador Licença';
  Application.CreateForm(TFormAtivacao, FormAtivacao);
  Application.Run;
end.
