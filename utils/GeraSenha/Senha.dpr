program Senha;

uses
  Forms,
  uSenha in 'uSenha.pas' {FormSenha};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormSenha, FormSenha);
  Application.Run;
end.
