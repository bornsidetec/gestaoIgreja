program Ativador;

uses
  Forms,
  Ativacao in 'Ativacao.pas' {FormAtivacao};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormAtivacao, FormAtivacao);
  Application.Run;
end.
