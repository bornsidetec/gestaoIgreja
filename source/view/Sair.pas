unit Sair;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFormSair = class(TForm)
    PanelBotoes: TPanel;
    RadioGroupOpcao: TRadioGroup;
    BtnCancelar: TBitBtn;
    BtnOk: TBitBtn;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSair: TFormSair;

implementation

uses Main;

{$R *.dfm}

procedure TFormSair.BtnOkClick(Sender: TObject);
begin
  FormMain.AcaoSair := 0;
  if sender = BtnOk then
    FormMain.AcaoSair := RadioGroupOpcao.ItemIndex;
  Close;
end;

procedure TFormSair.BtnCancelarClick(Sender: TObject);
begin
  FormMain.AcaoSair := 2;
  Close;
end;

procedure TFormSair.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormSair := nil;
  Action := caFree;

end;

procedure TFormSair.FormActivate(Sender: TObject);
begin
  FormMain.AcaoSair := 2;
end;

end.
