unit SMSInstantaneo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Mask, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  TFormSMSInstantaneo = class(TForm)
    Image1: TImage;
    ImageEnvia: TImage;
    MemoMensagem: TMemo;
    EditCelular: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditRetorno: TEdit;
    IdHTTP1: TIdHTTP;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImageEnviaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    EnviaSMSModem : Boolean;
  end;

var
  FormSMSInstantaneo: TFormSMSInstantaneo;

implementation

uses UDmJetro, Funcoes, EnviaSMS, EnviaSMSModem;

{$R *.dfm}

procedure TFormSMSInstantaneo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not EnviaSMSModem then
    FormEnviaSMS.FormActivate(nil);
  FormSMSInstantaneo := nil;
  Action := caFree;
end;

procedure TFormSMSInstantaneo.ImageEnviaClick(Sender: TObject);
begin

  if length(Trim(EditCelular.Text)) < 10 then
  begin
    InfoBox('Celular inválido.');
    EditCelular.SetFocus;
    Abort;
  end;

  if MemoMensagem.GetTextLen = 0 then
  begin
    InfoBox('Mensagem deve ser informada.');
    MemoMensagem.SetFocus;
    Abort;
  end;

  if not EnviaSMSModem then
  begin
    if FormEnviaSMS.SMS(MemoMensagem.Lines.Text,EditCelular.Text) then
      InfoBox('Mensagem enviada com sucesso.');
  end
  else
  begin
    if FormEnviaSMSModem.SMS(MemoMensagem.Lines.Text,EditCelular.Text) then
      InfoBox('Mensagem enviada com sucesso.');
  end;    

end;

end.
