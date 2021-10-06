program Importa;

uses
  Forms,
  UImportacao in 'UImportacao.pas' {FormImporta};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormImporta, FormImporta);
  Application.Run;
end.
